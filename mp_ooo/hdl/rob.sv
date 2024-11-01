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

    // stall output
    output  logic                               full_stall
);

    localparam ADDR_WIDTH = $clog2(QUEUE_DEPTH);
    localparam DATA_WIDTH = 12;                 // 6 bits for phys_reg, 5 bits for arch_reg, 1 bit for commit

    logic [ADDR_WIDTH:0] tail_reg;              // extra bit for overflow
    logic [ADDR_WIDTH:0] head_reg;              // extra bit for overflow

    logic [ADDR_WIDTH:0] tail_next;             // combinational
    logic [ADDR_WIDTH:0] head_next;             // combinational

    logic [DATA_WIDTH:0] mem [QUEUE_DEPTH];     // extra bit for validity | QUEUE_DEPTH entries with each entry begin DATA_WIDTH+1 size
    logic [DATA_WIDTH:0] enqueue_mem_next;
    logic [DATA_WIDTH:0] dequeue_mem_next;

    logic enqueue_reg;
    logic dequeue_reg;

    logic full;

    always_ff @ (posedge clk) begin
        enqueue_reg <= enqueue_valid;
        dequeue_reg <= dequeue_valid;

        if (rst) begin
            tail_reg <= '0;
            head_reg <= '0;
            full_stall <= '0;

            for (int i = 0; i < QUEUE_DEPTH; i++) begin
                mem[i] <= '0;
            end

        end else begin
            // enqueue
            if (enqueue_reg) begin
                mem[tail_reg[ADDR_WIDTH - 1:0]] <= enqueue_mem_next;
            end
            // dequeue
            if (dequeue_reg) begin
                mem[head_reg[ADDR_WIDTH - 1:0]] <= dequeue_mem_next;
            end
            // instruction done     ***CHANGE THIS IT'S THE RIGHT IDEA BUT THIS FOR SURE AIN'T GONNA WORK CUZ ITS ONE CYCLE TOO LATE (PUT INTO COMB)***
            if (cdb_valid) begin
                mem[rob_idx_in][DATA_WIDTH - 1] = '1;
            end

            tail_reg <= tail_next;
            head_reg <= head_next;
            full_stall <= full;
        end
    end

    always_comb begin
        full = (tail_reg[ADDR_WIDTH - 1:0] == head_reg[ADDR_WIDTH - 1:0]) && (tail_reg[ADDR_WIDTH] != head_reg[ADDR_WIDTH]);    // logic if queue full
        dequeue_valid = (mem[head_reg[ADDR_WIDTH - 1:0]][DATA_WIDTH - 1]);  // dequeue if tail's inst is ready to commit

        tail_next = tail_reg;   // default 
        head_next = head_reg;   // default
        rob_out = '0;
        enqueue_mem_next = '0;
        dequeue_mem_next = '0;

        if (dequeue_valid) begin
            tail_next = tail_reg;
            head_next = head_reg + 1'd1;
            dequeue_mem_next = mem[head_reg[ADDR_WIDTH - 1:0]];     // get current data out of the queue 
            dequeue_mem_next[DATA_WIDTH] = 1'b0;                    // not valid anymore
            
            rob_out = dequeue_mem_next[DATA_WIDTH - 2:0];
        end
        
        if (enqueue_valid) begin
            if (~full) begin
                tail_next = tail_reg + 1'b1;
                head_next = (head_next == head_reg) ? head_reg : head_reg + 1'd1;   // don't change what dequeue set head_next to
                enqueue_mem_next = {2'b11, phys_reg_in, arch_reg_in};               // 1 bit for valid, 1 bit for commit, 6 bits for phys reg, 5 bits for arch reg

            end else begin
                tail_next = tail_reg; 
                head_next = (head_next == head_reg) ? head_reg : head_reg + 1'd1;   // don't change what dequeue set head_next to
                enqueue_mem_next = mem[tail_reg[ADDR_WIDTH - 1:0]];
            end
        end
    end

endmodule : rob
