module queue
import rv32i_types::*;
#(
    parameter DATA_WIDTH = 32,
    parameter QUEUE_DEPTH = 64
)
(
    input logic clk,
    input logic rst,
    input logic [DATA_WIDTH - 1:0] wdata_in,
    input logic enqueue_in,

    output logic [DATA_WIDTH - 1:0] rdata_out,
    input logic dequeue_in,

    output logic full_out,
    output logic empty_out
);

    localparam ADDR_WIDTH = $clog2(QUEUE_DEPTH);

    logic   [$clog2(QUEUE_DEPTH):0] tail_reg;     // extra bit is for the overflow
    logic   [$clog2(QUEUE_DEPTH):0] head_reg;     // extra bit is for the overflow

    logic   [$clog2(QUEUE_DEPTH):0] tail_next;    // combinational
    logic   [$clog2(QUEUE_DEPTH):0] head_next;    // combinational

    logic   [DATA_WIDTH:0] mem [QUEUE_DEPTH];     // extra bit is for validity
    logic   [DATA_WIDTH:0] enqueue_mem_next;
    logic   [DATA_WIDTH:0] dequeue_mem_next;

    logic   full;   // wires, used in sequential logic and in returning output signals
    logic   empty;  // wires, used in sequential logic and in returning output signals

    logic   enqueue_reg, enqueue_next;
    logic   dequeue_reg, dequeue_next;

    assign  full_out = full;
    assign  empty_out = empty;

    always_ff @ (posedge clk) begin
        enqueue_reg <= enqueue_next;
        dequeue_reg <= dequeue_next;

        if (rst) begin
            tail_reg <= '1;
            head_reg <= '1;

            for (int i = 0; i < QUEUE_DEPTH; i++) begin
                mem[i] <= '0;
            end

        end else begin
            if (enqueue_next) begin
                mem[tail_next[$clog2(QUEUE_DEPTH) - 1:0]] <= enqueue_mem_next;
            end
            
            if (dequeue_next) begin
                mem[head_next[$clog2(QUEUE_DEPTH) - 1:0]] <= dequeue_mem_next;
            end

            tail_reg <= tail_next;
            head_reg <= head_next;
        end
    end

    always_comb begin
        tail_next = tail_reg;
        head_next = head_reg;
        rdata_out = 'x;
        enqueue_mem_next = '0;
        dequeue_mem_next = '0;
        enqueue_next = enqueue_in;
        dequeue_next = dequeue_in;

        if (rst) begin
            full = '0;
            empty = '1;
        end else begin
            full = (tail_reg[ADDR_WIDTH - 1:0] == head_reg[ADDR_WIDTH - 1:0]) && (tail_reg[ADDR_WIDTH] != head_reg[ADDR_WIDTH]);
            empty = (tail_reg[ADDR_WIDTH - 1:0] == head_reg[ADDR_WIDTH - 1:0]) && (tail_reg[ADDR_WIDTH] == head_reg[ADDR_WIDTH ]);
        end

        if (dequeue_in) begin
            if (~empty) begin   // worry about the valid bit
                head_next = head_reg + 1'd1;
                dequeue_mem_next = mem[head_reg[ADDR_WIDTH - 1:0] + 1'b1];  // get current data out of the queue 
                dequeue_mem_next[DATA_WIDTH] = 1'b0;                        // not valid anymore
                rdata_out = dequeue_mem_next[DATA_WIDTH - 1:0];
            end else begin
                head_next = head_reg;
                dequeue_mem_next = mem[head_reg[ADDR_WIDTH - 1:0]];         // don't do anything
            end
        end
        
        if (enqueue_in) begin
            if (~full) begin
                tail_next = tail_reg + 1'b1;
                enqueue_mem_next = {1'b1, wdata_in};    // write the data to the queue. 1 means valid
            end else begin
                enqueue_mem_next = mem[tail_reg[ADDR_WIDTH - 1:0]]; // don't do anything
            end

            head_next = (dequeue_in && !empty) ? head_reg + 1'd1 : head_reg;
        end

        full = (tail_next[ADDR_WIDTH - 1:0] == head_next[ADDR_WIDTH - 1:0]) && (tail_next[ADDR_WIDTH] != head_next[ADDR_WIDTH]);    // logic if queue full
        // empty = (tail_next[ADDR_WIDTH - 1:0] == head_next[ADDR_WIDTH - 1:0]) && (tail_next[ADDR_WIDTH] == head_next[ADDR_WIDTH]);   // logic if queue empty
    end

endmodule : queue
