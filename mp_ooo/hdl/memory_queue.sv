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

    // outputs
    output  logic   [5:0]   phys_reg_out,
    output  logic           phys_reg_valid,
    output  logic   [31:0]  data_out,
    output  logic           full,

    output  logic   [5:0]   mem_idx_out
);

    localparam ADDR_WIDTH = $clog2(QUEUE_DEPTH);
    localparam DATA_WIDTH = 46;                        // 1 bit for ready, 32 bits for addr, 7 bits for opcode, 6 bits for phys_reg

    logic   [ADDR_WIDTH:0]      tail_reg;              // extra bit for overflow
    logic   [ADDR_WIDTH:0]      head_reg;              // extra bit for overflow

    logic   [ADDR_WIDTH:0]      tail_next;             // combinational
    logic   [ADDR_WIDTH:0]      head_next;             // combinational

    logic   [DATA_WIDTH:0]      mem [QUEUE_DEPTH];     // extra bit for validity | QUEUE_DEPTH entries with each entry begin DATA_WIDTH+1 size
    logic   [DATA_WIDTH:0]      enqueue_mem_next;
    logic   [DATA_WIDTH:0]      dequeue_mem_next;

    logic           enqueue_reg;
    logic           dequeue_reg;
    logic           addr_next;

    logic   [5:0]   rob_num_next;
    logic   [31:0]  data_in_next;

    assign data_out = data_in;
    assign mem_idx_out = tail_reg[5:0] + 1'b1;

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
            if (dequeue_valid) begin
                mem[head_next[ADDR_WIDTH - 1:0]] <= dequeue_mem_next;
            end
            // adder done
            if (addr_valid) begin
                mem[mem_idx_in][45:29] = {1'b1, addr};
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
        phys_reg_valid = '0;
        full = '0;
        
        if (!rst) begin
            full = (tail_reg[ADDR_WIDTH - 1:0] == head_reg[ADDR_WIDTH - 1:0]) && (tail_reg[ADDR_WIDTH] != head_reg[ADDR_WIDTH]);    // logic if queue full
            // dequeue_valid = (mem[head_reg[5:0]+1'b1].valid == 1'b1 && mem[head_reg[5:0]+1'b1].commit == 1'b1);  // dequeue if tail's inst is valid and ready to commit

            // send dequeue inst same cycle; update queue next cycle
            if (data_valid) begin
                head_next = head_reg + 1'd1;
                dequeue_mem_next = mem[head_reg[ADDR_WIDTH - 1:0]+1'b1];
                dequeue_mem_next[DATA_WIDTH] = 1'b0;

                phys_reg_out = dequeue_mem_next[5:0];
                phys_reg_valid = '1;
            end
            
            if (enqueue_valid) begin
                if (~full || data_valid) begin
                    tail_next = tail_reg + 1'b1;
                    head_next = (head_next == head_reg) ? head_reg : head_reg + 1'd1;   // don't change what dequeue set head_next to
                    enqueue_mem_next = {1'b0, 32'x, opcode, phys_reg_in};

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
