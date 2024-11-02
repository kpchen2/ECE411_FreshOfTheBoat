module free_list
import rv32i_types::*;
#(
    parameter DATA_WIDTH = 6,
    parameter QUEUE_DEPTH = 32
)
(
    input logic clk,
    input logic rst,
    input logic [DATA_WIDTH - 1: 0] wdata_in,
    input logic enqueue_in,

    output logic [DATA_WIDTH - 1:0] rdata_out,
    input logic dequeue_in,

    output logic empty_out
);

    localparam ADDR_WIDTH = $clog2(QUEUE_DEPTH);

    logic [$clog2(QUEUE_DEPTH):0] tail_reg;     //  extra bit is for the overflow
    logic [$clog2(QUEUE_DEPTH):0] head_reg;     // extra bit is for the overflow

    logic [$clog2(QUEUE_DEPTH):0] tail_next;    // combinational
    logic [$clog2(QUEUE_DEPTH):0] head_next;    // combinational

    logic [DATA_WIDTH:0] mem [QUEUE_DEPTH];     // extra bit is for validity
    logic [DATA_WIDTH:0] mem_next;              // where to insert

    logic full;     // wires, used in sequential logic and in returning output signals
    logic empty;    // wires, used in sequential logic and in returning output signals

    logic enqueue_reg;
    logic dequeue_reg;
    logic [$clog2(QUEUE_DEPTH) - 1:0] operand;

    assign empty_out = empty;

    always_ff @ (posedge clk) begin
        enqueue_reg <= enqueue_in;
        dequeue_reg <= dequeue_in;

        if (rst) begin
            tail_reg <= {1'b1, {$clog2(QUEUE_DEPTH){1'b0}}};
            head_reg <= '0;
            
            // i = 32, i < 64 and then and queue indexed at i-32 = i
            for (int i = QUEUE_DEPTH; i < 2 * QUEUE_DEPTH; i++) begin
                mem[i-32] <= i[6:0];
            end
            
        end else begin
            if (enqueue_reg)
            begin
                mem[tail_reg[$clog2(QUEUE_DEPTH) - 1:0]] <= mem_next;
            end else if (dequeue_reg) begin
                mem[head_reg[$clog2(QUEUE_DEPTH) - 1:0]] <= mem_next;
            end

            tail_reg <= tail_next;
            head_reg <= head_next;
        end
    end

    always_comb begin
        full = (tail_reg[ADDR_WIDTH - 1:0] == head_reg[ADDR_WIDTH - 1:0]) && (tail_reg[ADDR_WIDTH] != head_reg[ADDR_WIDTH]);    // logic if queue full
        empty = (tail_reg[ADDR_WIDTH - 1:0] == head_reg[ADDR_WIDTH - 1:0]) && (tail_reg[ADDR_WIDTH] == head_reg[ADDR_WIDTH ]);  // logic if queue empty
        tail_next = tail_reg;   // default 
        head_next = head_reg;   // default
        rdata_out = 'x;
        operand = '0;
        mem_next = '0;

        if (dequeue_in) begin
            if (~empty) begin // not empty, can take one off // worry about the valid bit
                tail_next = tail_reg; // we don't change tail
                head_next = head_reg + 1'd1;
                // change the index of head
                // if (head_next[$clog2(QUEUE_DEPTH) - 1:0] == 1)         // if index is 1, then flip overflow bit
                // begin
                //     head_next[$clog2(QUEUE_DEPTH)] = ~head_reg[$clog2(QUEUE_DEPTH)]; // flip the overflow bit
                // end
                // else
                // begin
                //     head_next[$clog2(QUEUE_DEPTH)] = head_reg[$clog2(QUEUE_DEPTH)]; // don't flip the overflow bit
                // end
                mem_next = mem[head_reg[ADDR_WIDTH - 1:0]]; // get current data out of the queue 
                mem_next[DATA_WIDTH] = 1'b0; // not valid anymore
                rdata_out = mem_next[DATA_WIDTH - 1:0];

            end else begin
                tail_next = tail_reg;
                head_next = head_reg;
                mem_next = mem[head_reg[ADDR_WIDTH - 1:0]]; // don't do anything
            end

        end else if (enqueue_in) begin
            rdata_out = 'x;

            if (~full) begin // not full, can add one
                tail_next = tail_reg + 1'b1; // add one to the tail
                // if (tail_next [ADDR_WIDTH - 1:0] == 1) // if index is 1, then flip overflow bit
                // begin
                //     tail_next[ADDR_WIDTH] = ~tail_reg[ADDR_WIDTH]; // flip the overflow bit
                // end
                // else
                // begin
                //     tail_next[ADDR_WIDTH] = tail_reg[ADDR_WIDTH]; // don't flip the overflow bit
                // end
                head_next = head_reg;                   // we don't change head
                mem_next = {1'b1, wdata_in};// write the data to the queue. 1 means valid

            end else begin
                tail_next = tail_reg; 
                head_next = head_reg;
                mem_next = mem[tail_reg[ADDR_WIDTH - 1:0]]; // don't do anything
            end
        end

        full = (tail_next[ADDR_WIDTH - 1:0] == head_next[ADDR_WIDTH - 1:0]) && (tail_next[ADDR_WIDTH] != head_next[ADDR_WIDTH]);    // logic if queue full
        empty = (tail_next[ADDR_WIDTH - 1:0] == head_next[ADDR_WIDTH - 1:0]) && (tail_next[ADDR_WIDTH] == head_next[ADDR_WIDTH]);   // logic if queue empty
        
    end

endmodule : free_list
