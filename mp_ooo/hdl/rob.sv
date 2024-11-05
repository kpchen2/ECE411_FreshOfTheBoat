module rob
import rv32i_types::*;
#(
    parameter QUEUE_DEPTH = 64
)
(
    input   logic                               clk,
    input   logic                               rst,

    // rename/dispatch inputs
    input   logic   [5:0]                       phys_reg_in,
    input   logic   [4:0]                       arch_reg_in,
    input   logic                               enqueue_valid,
    input   logic   [31:0]                      pc_rdata,
    input   logic   [31:0]                      pc_wdata,
    input   logic   [63:0]                      order,
    input   logic   [4:0]                       rs1_s,
    input   logic   [4:0]                       rs2_s,
    input   logic   [31:0]                      inst,
    input   logic                               regf_we,



    
    // cdb inputs
    input   logic   [$clog2(QUEUE_DEPTH)-1:0]   add_rob_idx_in,
    input   logic                               add_cdb_valid,
    input   logic   [$clog2(QUEUE_DEPTH)-1:0]   mul_rob_idx_in,
    input   logic                               mul_cdb_valid,
    input   logic   [$clog2(QUEUE_DEPTH)-1:0]   div_rob_idx_in,
    input   logic                               div_cdb_valid,

    input   logic  [31:0]                       add_rs1_rdata,
    input   logic  [31:0]                       add_rs2_rdata,
    input   logic  [31:0]                       add_rd_wdata,

    input   logic  [31:0]                       multiply_rs1_rdata,
    input   logic  [31:0]                       multiply_rs2_rdata,
    input   logic  [31:0]                       multiply_rd_wdata,

    input   logic  [31:0]                       divide_rs1_rdata,
    input   logic  [31:0]                       divide_rs2_rdata,
    input   logic  [31:0]                       divide_rd_wdata,
    
    input   logic  [31:0]                       monitor_mem_addr,
    input   logic  [3:0]                        monitor_mem_rmask,
    input   logic  [3:0]                        monitor_mem_wmask,
    input   logic  [31:0]                       monitor_mem_rdata,
    input   logic  [31:0]                       monitor_mem_wdata,

    // rrf outputs
    output  rob_entry_t                         rob_out,
    output  logic                               dequeue_valid,

    // other output
    output  logic   [$clog2(QUEUE_DEPTH)-1:0]   rob_num,
    output  logic                               full
);

    localparam ADDR_WIDTH = $clog2(QUEUE_DEPTH);
    localparam DATA_WIDTH = 12;                 // 6 bits for phys_reg, 5 bits for arch_reg, 1 bit for commit

    logic   [ADDR_WIDTH:0]      tail_reg;              // extra bit for overflow
    logic   [ADDR_WIDTH:0]      head_reg;              // extra bit for overflow

    logic   [ADDR_WIDTH:0]      tail_next;             // combinational
    logic   [ADDR_WIDTH:0]      head_next;             // combinational

    rob_entry_t     mem [QUEUE_DEPTH];     // extra bit for validity | QUEUE_DEPTH entries with each entry begin DATA_WIDTH+1 size
    rob_entry_t     enqueue_mem_next;
    rob_entry_t     dequeue_mem_next;

    logic                       enqueue_reg, enqueue_next;
    logic                       dequeue_reg;
    logic                       add_cdb_valid_next;
    logic                       mul_cdb_valid_next;
    logic                       div_cdb_valid_next;

    logic   [$clog2(QUEUE_DEPTH)-1:0]   add_rob_idx_in_next;
    logic   [$clog2(QUEUE_DEPTH)-1:0]   mul_rob_idx_in_next;
    logic   [$clog2(QUEUE_DEPTH)-1:0]   div_rob_idx_in_next;

    always_ff @ (posedge clk) begin
        enqueue_reg <= enqueue_next;
        dequeue_reg <= dequeue_valid;

        if (rst) begin
            tail_reg <= '1;
            head_reg <= '1;

            for (int i = 0; i < QUEUE_DEPTH; i++) begin
                mem[i] <= '0;
            end

        end else begin
            // enqueue
            if (enqueue_next) begin
                mem[tail_next[ADDR_WIDTH - 1:0]] <= enqueue_mem_next;
            end
            // dequeue
            if (dequeue_valid) begin
                mem[head_next[ADDR_WIDTH - 1:0]] <= dequeue_mem_next;
            end
            // add instruction done
            if (add_cdb_valid_next) begin
                mem[add_rob_idx_in_next].commit <= '1;
                mem[add_rob_idx_in_next].rvfi.monitor_rs1_rdata <= add_rs1_rdata;
                mem[add_rob_idx_in_next].rvfi.monitor_rs2_rdata <= add_rs2_rdata;
                mem[add_rob_idx_in_next].rvfi.monitor_rd_wdata <= add_rd_wdata;
                mem[add_rob_idx_in_next].rvfi.monitor_mem_addr <= monitor_mem_addr;
                mem[add_rob_idx_in_next].rvfi.monitor_mem_rmask <= monitor_mem_rmask;
                mem[add_rob_idx_in_next].rvfi.monitor_mem_wmask <= monitor_mem_wmask;
                mem[add_rob_idx_in_next].rvfi.monitor_mem_rdata <= monitor_mem_rdata;
                mem[add_rob_idx_in_next].rvfi.monitor_mem_wdata <= monitor_mem_wdata;
            end
            // mul instruction done
            if (mul_cdb_valid_next) begin
                mem[mul_rob_idx_in_next].commit <= '1;
                mem[mul_rob_idx_in_next].rvfi.monitor_rs1_rdata <= multiply_rs1_rdata;
                mem[mul_rob_idx_in_next].rvfi.monitor_rs2_rdata <= multiply_rs2_rdata;
                mem[mul_rob_idx_in_next].rvfi.monitor_rd_wdata <= multiply_rd_wdata;
                mem[mul_rob_idx_in_next].rvfi.monitor_mem_addr <= monitor_mem_addr;
                mem[mul_rob_idx_in_next].rvfi.monitor_mem_rmask <= monitor_mem_rmask;
                mem[mul_rob_idx_in_next].rvfi.monitor_mem_wmask <= monitor_mem_wmask;
                mem[mul_rob_idx_in_next].rvfi.monitor_mem_rdata <= monitor_mem_rdata;
                mem[mul_rob_idx_in_next].rvfi.monitor_mem_wdata <= monitor_mem_wdata;
            end
            // div instruction done
            if (div_cdb_valid_next) begin
                mem[div_rob_idx_in_next].commit <= '1;
                mem[div_rob_idx_in_next].rvfi.monitor_rs1_rdata <= divide_rs1_rdata;
                mem[div_rob_idx_in_next].rvfi.monitor_rs2_rdata <= divide_rs2_rdata;
                mem[div_rob_idx_in_next].rvfi.monitor_rd_wdata <= divide_rd_wdata;
                mem[div_rob_idx_in_next].rvfi.monitor_mem_addr <= monitor_mem_addr;
                mem[div_rob_idx_in_next].rvfi.monitor_mem_rmask <= monitor_mem_rmask;
                mem[div_rob_idx_in_next].rvfi.monitor_mem_wmask <= monitor_mem_wmask;
                mem[div_rob_idx_in_next].rvfi.monitor_mem_rdata <= monitor_mem_rdata;
                mem[div_rob_idx_in_next].rvfi.monitor_mem_wdata <= monitor_mem_wdata;
            end
  
                    

            tail_reg <= tail_next;
            head_reg <= head_next;
        end
    end

    always_comb begin
        tail_next = tail_reg;
        head_next = head_reg;
        rob_out = '0;
        enqueue_mem_next = '0;
        dequeue_mem_next = '0;
        enqueue_next = enqueue_valid;

        add_cdb_valid_next = add_cdb_valid;
        mul_cdb_valid_next = mul_cdb_valid;
        div_cdb_valid_next = div_cdb_valid;

        add_rob_idx_in_next = add_rob_idx_in;
        mul_rob_idx_in_next = mul_rob_idx_in;
        div_rob_idx_in_next = div_rob_idx_in;

        rob_num = tail_reg[5:0] + 1'b1;
        full = '0;
        dequeue_valid = '0;
        
        if (!rst) begin
            full = (tail_reg[ADDR_WIDTH - 1:0] == head_reg[ADDR_WIDTH - 1:0]) && (tail_reg[ADDR_WIDTH] != head_reg[ADDR_WIDTH]);    // logic if queue full
            dequeue_valid = (mem[head_reg[5:0]+1'b1].valid == 1'b1 && mem[head_reg[5:0]+1'b1].commit == 1'b1);  // dequeue if tail's inst is valid and ready to commit

            // send dequeue inst same cycle; update queue next cycle
            if (dequeue_valid) begin
                head_next = head_reg + 1'd1;
                dequeue_mem_next = mem[head_reg[ADDR_WIDTH - 1:0]+1'b1];     // get current data out of the queue 
                dequeue_mem_next.valid = 1'b0;                    // not valid anymore
                dequeue_mem_next.rvfi.monitor_valid = 1'b1;
                rob_out = dequeue_mem_next;
            end
            
            if (enqueue_valid) begin
                if (~full || dequeue_valid || (add_cdb_valid && add_rob_idx_in == head_reg[5:0]) || (mul_cdb_valid && mul_rob_idx_in == head_reg[5:0]) || (div_cdb_valid && div_rob_idx_in == head_reg[5:0])) begin
                    tail_next = tail_reg + 1'b1;
                    head_next = (head_next == head_reg) ? head_reg : head_reg + 1'd1;   // don't change what dequeue set head_next to
                    enqueue_mem_next.valid = 1'b1;
                    enqueue_mem_next.commit = 1'b0;
                    enqueue_mem_next.pd = phys_reg_in;
                    enqueue_mem_next.rvfi.monitor_rd_addr = arch_reg_in;
                    enqueue_mem_next.rvfi.monitor_pc_rdata = pc_rdata;
                    enqueue_mem_next.rvfi.monitor_pc_wdata = pc_wdata;
                    enqueue_mem_next.rvfi.monitor_order = order;
                    enqueue_mem_next.rvfi.monitor_rs1_addr = rs1_s;
                    enqueue_mem_next.rvfi.monitor_rs2_addr = rs2_s;
                    enqueue_mem_next.rvfi.monitor_inst = inst;
                    enqueue_mem_next.rvfi.monitor_regf_we = regf_we;            
                    
                    // SET EVERYTHING LATER {2'b10, phys_reg_in, arch_reg_in};               // 1 bit for valid, 1 bit for commit, 6 bits for phys reg, 5 bits for arch reg

                end else begin
                    tail_next = tail_reg; 
                    head_next = (head_next == head_reg) ? head_reg : head_reg + 1'd1;   // don't change what dequeue set head_next to
                    enqueue_mem_next = mem[tail_reg[ADDR_WIDTH - 1:0]+1'b1];
                
                end
            end
        end
    end

endmodule : rob
