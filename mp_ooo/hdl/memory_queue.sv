module memory_queue
import rv32i_types::*;
#(
    parameter QUEUE_DEPTH = 64
)
(
    input   logic           clk,
    input   logic           rst,

    // rename/dispatch inputs
    input   logic   [6:0]   opcode,
    input   logic   [5:0]   phys_reg_in,
    input   logic           enqueue_valid,
    input   logic   [5:0]   rob_num,

    // adder inputs
    input   logic   [31:0]  addr,
    input   logic           addr_valid,
    input   logic   [5:0]   mem_idx_in,

    // rob inputs
    input   logic   [5:0]   commited_rob,
    input   logic           commited_rob_valid,

    // dcache inputs
    input   logic   [31:0]  data_in,
    input   logic           data_valid,

    // regfile inputs
    input   logic   [31:0]  rd_v,   // ADD ANOTHER PORT TO REGFILE

    // outputs
    output  logic   [5:0]   phys_reg_out,
    output  logic           output_valid,
    output  logic   [31:0]  data_out,
    output  logic           full,

    // rename/dispatch outputs
    output  logic   [5:0]   mem_idx_out,

    // dcache outputs
    output  logic   [31:0]  d_addr,
    output  logic   [3:0]   d_rmask,
    output  logic   [3:0]   d_wmask,
    output  logic   [31:0]  d_wdata,

    // regfile outputs
    output  logic   [5:0]  rd_s    // ADD ANOTHER PORT TO REGFILE
);

    localparam ADDR_WIDTH = $clog2(QUEUE_DEPTH);
    localparam DATA_WIDTH = 52;                        // 1 bit for ready, 32 bits for addr, 7 bits for opcode, 6 bits for phys_reg, 6 bits for rob_num

    logic   [ADDR_WIDTH:0]      tail_reg;              // extra bit for overflow
    logic   [ADDR_WIDTH:0]      head_reg;              // extra bit for overflow

    logic   [ADDR_WIDTH:0]      tail_next;             // combinational
    logic   [ADDR_WIDTH:0]      head_next;             // combinational

    lsq_entry_t     mem [QUEUE_DEPTH];     // extra bit for validity | QUEUE_DEPTH entries with each entry begin DATA_WIDTH+1 size
    lsq_entry_t     enqueue_mem_next;
    lsq_entry_t     dequeue_mem_next;

    logic           enqueue_reg;
    logic           dequeue_reg;
    logic           addr_next;

    logic   [5:0]   rob_num_next;
    logic   [31:0]  data_in_next;

    assign data_out = data_in;                  // output cache data same cycle
    assign mem_idx_out = tail_reg[5:0] + 1'b1;  // output mem_idx to rename/dispatch

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
            if (enqueue_valid) begin
                mem[tail_next[ADDR_WIDTH - 1:0]] <= enqueue_mem_next;
            end
            // dequeue
            if (data_valid) begin
                mem[head_next[ADDR_WIDTH - 1:0]] <= dequeue_mem_next;
            end
            // adder done
            if (addr_valid) begin
                mem[mem_idx_in].ready = 1'b1; 
                mem[mem_idx_in].addr = addr;
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

        phys_reg_out = '0;
        output_valid = '0;
        full = '0;

        d_addr = '0;
        d_rmask = '0;
        d_wmask = '0;
        d_wdata = '0;
        rd_s = mem[head_reg[5:0]+1'b1].pd_s;
        
        if (!rst) begin
            full = (tail_reg[ADDR_WIDTH - 1:0] == head_reg[ADDR_WIDTH - 1:0]) && (tail_reg[ADDR_WIDTH] != head_reg[ADDR_WIDTH]);    // logic if queue full
            // dequeue_valid = (mem[head_reg[5:0]+1'b1].valid == 1'b1 && mem[head_reg[5:0]+1'b1].commit == 1'b1);  // dequeue if tail's inst is valid and ready to commit

            // send dequeue inst same cycle; update queue next cycle
            if (data_valid) begin
                head_next = head_reg + 1'd1;
                dequeue_mem_next = mem[head_reg[ADDR_WIDTH - 1:0]+1'b1];
                dequeue_mem_next.valid = 1'b0;

                phys_reg_out = dequeue_mem_next.pd_s;
                output_valid = '1;
            end

            // ready to access cache
            if (mem[head_reg[5:0]+1'b1].valid == 1'b1 && mem[head_reg[5:0]+1'b1].ready == 1'b1 ) begin
                d_addr = mem[head_reg[5:0]+1'b1].addr;
                
                if (opcode == op_b_load) begin
                    d_rmask = '1;
                end else if (commited_rob_valid && mem[head_reg[5:0]+1'b1].rob_num == commited_rob) begin
                    d_wmask = '1;
                    d_wdata = rd_v;
                end
            end
            
            if (enqueue_valid) begin
                if (~full || data_valid) begin
                    tail_next = tail_reg + 1'b1;
                    head_next = (head_next == head_reg) ? head_reg : head_reg + 1'd1;   // don't change what dequeue set head_next to
                    enqueue_mem_next.valid = 1'b1;
                    enqueue_mem_next.ready = 1'b0;
                    enqueue_mem_next.addr = 32'bx;
                    enqueue_mem_next.opcode = opcode;
                    enqueue_mem_next.pd_s = phys_reg_in;
                    enqueue_mem_next.rob_num = rob_num;

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
