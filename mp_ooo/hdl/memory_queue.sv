module memory_queue
import rv32i_types::*;
#(
    parameter QUEUE_DEPTH = 64
)
(
    input   logic           clk,
    input   logic           rst,

    // rename/dispatch inputs
    input   logic   [31:0]  inst,
    input   logic   [6:0]   opcode,
    input   logic   [2:0]   funct3,
    input   logic   [5:0]   phys_reg_in,
    input   logic           enqueue_valid,
    input   logic   [5:0]   rob_num,
    input   logic   [4:0]   rd_dispatch,

    // adder inputs
    input   logic   [31:0]  addr,
    input   logic           addr_valid,
    input   logic   [5:0]   mem_idx_in,
    input   logic   [31:0]  store_wdata,        // ADD ANOTHER PORT TO REGFILE

    // rob inputs
    input   logic   [5:0]   commited_rob,

    // dcache inputs
    input   logic   [31:0]  data_in,
    input   logic           data_valid,

    // outputs
    // output  logic   [5:0]   phys_reg_out,
    // output  logic           output_valid,       // USE THIS FOR MEM COMMIT AS WELL
    // output  logic   [31:0]  data_out,
    output  logic           full,
    output  cdb_t           cdb_mem,

    // rename/dispatch outputs
    output  logic   [5:0]   mem_idx_out,

    // dcache outputs
    output  logic   [31:0]  d_addr,
    output  logic   [3:0]   d_rmask,
    output  logic   [3:0]   d_wmask,
    output  logic   [31:0]  d_wdata
);

    localparam ADDR_WIDTH = $clog2(QUEUE_DEPTH);
    // localparam DATA_WIDTH = 52;                        // 1 bit for ready, 32 bits for addr, 7 bits for opcode, 6 bits for phys_reg, 6 bits for rob_num

    logic   [ADDR_WIDTH:0]      tail_reg;              // extra bit for overflow
    logic   [ADDR_WIDTH:0]      head_reg;              // extra bit for overflow

    logic   [ADDR_WIDTH:0]      tail_next;             // combinational
    logic   [ADDR_WIDTH:0]      head_next;             // combinational

    lsq_entry_t     mem [QUEUE_DEPTH];     // extra bit for validity | QUEUE_DEPTH entries with each entry begin DATA_WIDTH+1 size
    lsq_entry_t     enqueue_mem_next;
    lsq_entry_t     dequeue_mem_next;

    logic           enqueue_reg;
    logic           dequeue_reg;

    logic   [5:0]   rob_num_next;
    logic   [31:0]  data_in_next;

    logic           enqueue_valid_next, data_valid_next, addr_valid_next;
    logic   [5:0]   mem_idx_in_next;
    logic   [31:0]  addr_next, store_wdata_next;

    // assign data_out = data_in;                  // output cache data same cycle
    // assign mem_idx_out = tail_reg[5:0] + 1'b1;  // output mem_idx to rename/dispatch

    always_ff @ (posedge clk) begin
        enqueue_reg <= enqueue_valid;
        dequeue_reg <= data_valid;

        if (rst) begin
            tail_reg <= '1;
            head_reg <= '1;

            for (int i = 0; i < QUEUE_DEPTH; i++) begin
                mem[i] <= '0;
            end

        end else begin
            // enqueue
            if (enqueue_valid_next) begin
                mem[tail_next[ADDR_WIDTH - 1:0]] <= enqueue_mem_next;
            end
            // dequeue
            if (data_valid_next) begin
                mem[head_next[ADDR_WIDTH - 1:0]] <= dequeue_mem_next;
            end
            // adder done
            if (addr_valid_next) begin
                mem[mem_idx_in_next].addr_ready <= 1'b1; 
                mem[mem_idx_in_next].addr <= addr_next;
                mem[mem_idx_in_next].shift_bits <= addr_next[1:0];
                mem[mem_idx_in_next].store_wdata <= store_wdata_next;
            end
  
            tail_reg <= tail_next;
            head_reg <= head_next;
        end
    end

    always_comb begin
        tail_next = tail_reg;
        head_next = head_reg;
        enqueue_mem_next = '0;
        dequeue_mem_next = '0;

        // phys_reg_out = '0;
        // data_out = '0;
        // output_valid = '0;
        full = '0;
        cdb_mem = '0;

        d_addr = '0;
        d_rmask = '0;
        d_wmask = '0;
        d_wdata = '0;

        enqueue_valid_next = enqueue_valid;
        data_valid_next = data_valid;
        addr_valid_next = addr_valid;
        mem_idx_in_next = mem_idx_in;
        mem_idx_out = tail_reg[5:0];
        addr_next = addr;
        store_wdata_next = store_wdata;
        
        if (!rst) begin
            full = (tail_reg[ADDR_WIDTH - 1:0] == head_reg[ADDR_WIDTH - 1:0]) && (tail_reg[ADDR_WIDTH] != head_reg[ADDR_WIDTH]);    // logic if queue full

            // send dequeue inst same cycle; update queue next cycle
            if (data_valid) begin
                head_next = head_reg + 1'd1;
                dequeue_mem_next = mem[head_reg[ADDR_WIDTH - 1:0]+1'b1];
                dequeue_mem_next.valid = 1'b0;

                cdb_mem.rob_idx = dequeue_mem_next.rob_num;
                cdb_mem.pd_s    = dequeue_mem_next.pd_s;
                cdb_mem.rd_s    = dequeue_mem_next.rd_s;
                cdb_mem.rd_v    = data_in;
                cdb_mem.valid   = '1;
                cdb_mem.inst    = dequeue_mem_next.inst;

                // phys_reg_out = dequeue_mem_next.pd_s;
                // data_out = data_in;
                // output_valid = '1;
                
                unique case (mem[head_reg[5:0]+1'b1].funct3)
                    load_f3_lb : cdb_mem.rd_v = {{24{data_in[7 +8 *mem[head_reg[5:0]+1'b1].shift_bits]}}   , data_in[8 *mem[head_reg[5:0]+1'b1].shift_bits    +: 8 ]};
                    load_f3_lbu: cdb_mem.rd_v = {{24{1'b0}}                                                , data_in[8 *mem[head_reg[5:0]+1'b1].shift_bits    +: 8 ]};
                    load_f3_lh : cdb_mem.rd_v = {{16{data_in[15+16*mem[head_reg[5:0]+1'b1].shift_bits[1]]}}, data_in[16*mem[head_reg[5:0]+1'b1].shift_bits[1] +: 16]};
                    load_f3_lhu: cdb_mem.rd_v = {{16{1'b0}}                                                , data_in[16*mem[head_reg[5:0]+1'b1].shift_bits[1] +: 16]};
                    load_f3_lw : cdb_mem.rd_v = data_in;
                    default    : cdb_mem.rd_v = 'x;
                endcase

            // ready to access cache
            end else if (mem[head_reg[5:0]+1'b1].valid == 1'b1 && mem[head_reg[5:0]+1'b1].addr_ready == 1'b1) begin
                d_addr = mem[head_reg[5:0]+1'b1].addr;
                
                if (mem[head_reg[5:0]+1'b1].opcode == op_b_load) begin
                    unique case (mem[head_reg[5:0]+1'b1].funct3)
                        load_f3_lb, load_f3_lbu: d_rmask = 4'b0001 << d_addr[1:0];
                        load_f3_lh, load_f3_lhu: d_rmask = 4'b0011 << d_addr[1:0];
                        load_f3_lw             : d_rmask = 4'b1111;
                        default                : d_rmask = 'x;
                    endcase
                end else if (mem[head_reg[5:0]+1'b1].rob_num == commited_rob) begin
                    unique case (mem[head_reg[5:0]+1'b1].funct3)
                        store_f3_sb: d_wmask = 4'b0001 << d_addr[1:0];
                        store_f3_sh: d_wmask = 4'b0011 << d_addr[1:0];
                        store_f3_sw: d_wmask = 4'b1111;
                        default    : d_wmask = 'x;
                    endcase
                    unique case (mem[head_reg[5:0]+1'b1].funct3)
                        store_f3_sb: d_wdata[8 *d_addr[1:0] +: 8 ] = mem[head_reg[5:0]+1'b1].store_wdata[7 :0];
                        store_f3_sh: d_wdata[16*d_addr[1]   +: 16] = mem[head_reg[5:0]+1'b1].store_wdata[15:0];
                        store_f3_sw: d_wdata = mem[head_reg[5:0]+1'b1].store_wdata;
                        default    : d_wdata = 'x;
                    endcase
                end

                d_addr[1:0] = 2'b0;
            end
            
            if (enqueue_valid) begin
                if (~full || data_valid) begin
                    tail_next = tail_reg + 1'b1;
                    head_next = (head_next == head_reg) ? head_reg : head_reg + 1'd1;   // don't change what dequeue set head_next to
                    enqueue_mem_next.valid = 1'b1;
                    enqueue_mem_next.addr_ready = 1'b0;
                    enqueue_mem_next.addr = 32'bx;
                    enqueue_mem_next.inst = inst;
                    enqueue_mem_next.opcode = opcode;
                    enqueue_mem_next.funct3 = funct3;
                    enqueue_mem_next.pd_s = phys_reg_in;
                    enqueue_mem_next.rob_num = rob_num;
                    enqueue_mem_next.rd_s = rd_dispatch;

                end else begin
                    tail_next = tail_reg; 
                    head_next = (head_next == head_reg) ? head_reg : head_reg + 1'd1;   // don't change what dequeue set head_next to
                    enqueue_mem_next = mem[tail_reg[ADDR_WIDTH - 1:0]+1'b1];
                end
            end

            full = (tail_next[ADDR_WIDTH - 1:0] == head_next[ADDR_WIDTH - 1:0]) && (tail_next[ADDR_WIDTH] != head_next[ADDR_WIDTH]);    // logic if queue full
        end
    end

endmodule : memory_queue
