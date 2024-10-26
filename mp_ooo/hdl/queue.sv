module queue #(parameter DATA_WIDTH, 
                parameter QUEUE_DEPTH
                ) 
(

    input logic clk, // do we need this? Might be needed to latch on to the tail
    input logic rst, //do we need this? Might be needed to latch on to the head
    input logic [DATA_WIDTH - 1: 0] wdata_in,
    input logic enqueue_in,

    output logic [DATA_WIDTH - 1:0] rdata_out,
    input logic dequeue_in,

    output logic full_out,
    output logic empty_out
);

logic [QUEUE_DEPTH:0] tail_reg ; //  extra bit is for the overflow
logic [QUEUE_DEPTH:0] head_reg; // extra bit is for the overflow

logic [QUEUE_DEPTH:0] tail_next; // combinational
logic [QUEUE_DEPTH:0] head_next; // combinational

logic [DATA_WIDTH:0] mem [QUEUE_DEPTH]; // extra bit is for validity
logic [DATA_WIDTH:0] mem_next; // where to insert

logic full; //wires, used in sequential logic and in returning output signals
logic empty; //wires, used in sequential logic and in returning output signals


assign full_out = full;
assign empty_out = empty;


always_ff @ (posedge clk)
begin
    if (rst)
    begin
        tail_reg <= '0;
        head_reg <= '0;
        for (int i = 0; i < QUEUE_DEPTH; i++)
        begin
            mem[i] <= '0;
        end
    end
    else begin

        if (enqueue_in)
        begin
            mem[tail_reg] <= mem_next;
        end
        else if (dequeue_in)
        begin
            mem[head_reg] <= mem_next;
        end

        tail_reg <= tail_next;
        head_reg <= head_next;
        
    end



end

always_comb 
begin
    full = (tail_reg[QUEUE_DEPTH - 1:0] == head_reg[QUEUE_DEPTH - 1:0]) && (tail_reg[QUEUE_DEPTH] != head_reg[QUEUE_DEPTH]); // logic if queue full
    empty = (tail_reg[QUEUE_DEPTH - 1:0] == head_reg[QUEUE_DEPTH - 1:0]) && (tail_reg[QUEUE_DEPTH] == head_reg[QUEUE_DEPTH ]); // logic if queue empty
    tail_next = tail_reg; // default 
    head_next = head_reg; // default
    rdata_out = 'x;
    if (dequeue_in)
    begin
        if (~empty) // not empty, can take one off // worry about the valid bit
        begin
            tail_next = tail_reg; // we don't change tail
            head_next[QUEUE_DEPTH - 1:0] = (head_reg[QUEUE_DEPTH - 1: 0] + 1) % QUEUE_DEPTH; // change the index of head
            if (head_next[QUEUE_DEPTH - 1:0] == 1)         // if index is 1, then flip overflow bit
            begin
                head_next[QUEUE_DEPTH] = ~head_reg[QUEUE_DEPTH]; // flip the overflow bit
            end
            else
            begin
                head_next[QUEUE_DEPTH] = head_reg[QUEUE_DEPTH]; // don't flip the overflow bit
            end
            mem_next = mem[head_reg ]; // get current data out of the queue 
            mem_next[QUEUE_DEPTH] = 1'b0; // not valid anymore
            rdata_out = mem_next[QUEUE_DEPTH - 1:0];
        end
        else
        begin
            tail_next = tail_reg;
            head_next = head_reg;
            mem_next = mem[head_reg]; // don't do anything
        end
    end
    else if (enqueue_in)
    begin
        rdata_out = 'x;
        if (~full) // not full, can add one
        begin
            tail_next[QUEUE_DEPTH - 1:0] = (tail_reg[QUEUE_DEPTH - 1: 0] + 1) % QUEUE_DEPTH; // add one to the tail
            if (tail_next [QUEUE_DEPTH - 1:0] == 1) // if index is 1, then flip overflow bit
            begin
                tail_next[QUEUE_DEPTH] = ~tail_reg[QUEUE_DEPTH]; // flip the overflow bit
            end
            else
            begin
                tail_next[QUEUE_DEPTH] = tail_reg[QUEUE_DEPTH]; // don't flip the overflow bit
            end
            head_next = head_reg;                   // we don't change head
            mem_next = {1'b1, wdata_in};// write the data to the queue. 1 means valid
        end
        else
        begin
            tail_next = tail_reg; 
            head_next = head_reg;
            mem_next = mem[tail_reg]; // don't do anything
        end
    end
end

endmodule : queue