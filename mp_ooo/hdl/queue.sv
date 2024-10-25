module queue #(parameter DATA_WIDTH, 
                parameter QUEUE_DEPTH
                ) 
(

    input logic clk, // do we need this? Might be needed to latch on to the tail
    input logic rst, //do we need this? Might be needed to latch on to the head
    input logic [DATA_WIDTH - 1: 0] wdata,
    input logic enqueue,

    output logic [DATA_WIDTH - 1:0] rdata,
    input logic dequeue,

    output logic full,
    output logic empty
);

endmodule : queue