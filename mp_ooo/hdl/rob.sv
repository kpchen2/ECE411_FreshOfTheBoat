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
    
    // cdb inputs
    input   logic   [$clog2(QUEUE_DEPTH)-1:0]   rob_idx_in,
    input   logic                               cdb_valid,

    // rrf outputs
    output  rob_out_t                           rob_out,
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

    logic   [DATA_WIDTH:0]      mem [QUEUE_DEPTH];     // extra bit for validity | QUEUE_DEPTH entries with each entry begin DATA_WIDTH+1 size
    logic   [DATA_WIDTH:0]      enqueue_mem_next;
    logic   [DATA_WIDTH:0]      dequeue_mem_next;

    logic                       enqueue_reg, enqueue_next;
    logic                       dequeue_reg;

    always_ff @ (posedge clk) begin
        if (rst) begin
            enqueue_reg <= '0;
            dequeue_reg <= '0;

            tail_reg <= '0;
            head_reg <= '0;

            for (int i = 0; i < QUEUE_DEPTH; i++) begin
                mem[i] <= '0;
            end

        end else begin
            enqueue_reg <= enqueue_next;
            dequeue_reg <= dequeue_valid;

            // enqueue
            if (enqueue_next) begin
                mem[tail_reg[ADDR_WIDTH - 1:0]] <= enqueue_mem_next;
            end
            // dequeue
            if (dequeue_valid) begin
                mem[head_reg[ADDR_WIDTH - 1:0]] <= dequeue_mem_next;
            end
            // instruction done
            if (cdb_valid) begin
                mem[rob_idx_in][DATA_WIDTH - 1] <= '1;
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
        rob_num = tail_reg[5:0];

        if (!rst) begin
            full = (tail_reg[ADDR_WIDTH - 1:0] == head_reg[ADDR_WIDTH - 1:0]) && (tail_reg[ADDR_WIDTH] != head_reg[ADDR_WIDTH]);    // logic if queue full
            dequeue_valid = (mem[head_reg][DATA_WIDTH:DATA_WIDTH - 1] == 2'b11);  // dequeue if tail's inst is valid and ready to commit

            // send dequeue inst same cycle; update queue next cycle
            if (dequeue_valid) begin
                head_next = head_reg + 1'd1;
                dequeue_mem_next = mem[head_reg[ADDR_WIDTH - 1:0]];     // get current data out of the queue 
                dequeue_mem_next[DATA_WIDTH] = 1'b0;                    // not valid anymore
                
                rob_out = dequeue_mem_next[DATA_WIDTH - 2:0];
            end
            
            if (enqueue_valid) begin
                if (~full || dequeue_valid || (cdb_valid && rob_idx_in == head_reg[5:0])) begin
                    tail_next = tail_reg + 1'b1;
                    head_next = (head_next == head_reg) ? head_reg : head_reg + 1'd1;   // don't change what dequeue set head_next to
                    enqueue_mem_next = {2'b10, phys_reg_in, arch_reg_in};               // 1 bit for valid, 1 bit for commit, 6 bits for phys reg, 5 bits for arch reg

                end else begin
                    tail_next = tail_reg; 
                    head_next = (head_next == head_reg) ? head_reg : head_reg + 1'd1;   // don't change what dequeue set head_next to
                    enqueue_mem_next = mem[tail_reg[ADDR_WIDTH - 1:0]];
                end
            end
        end
    end

endmodule : rob
