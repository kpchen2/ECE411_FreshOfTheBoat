// import rv32i_types::*;


module top_tb;


timeunit 1ps;
    timeprecision 1ps;
    parameter DATA_WIDTH = 32; 
    parameter QUEUE_DEPTH = 64;
    int clock_half_period_ps = getenv("ECE411_CLOCK_PERIOD_PS").atoi() / 2;

    bit clk;
    always #(clock_half_period_ps) clk = ~clk;

    bit rst;


    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, "+all");
        rst = 1'b1;
        repeat (2) @(posedge clk);
        rst <= 1'b0;
    end

    logic [DATA_WIDTH - 1:0] wdata_in;
    logic enqueue_in;
    logic [DATA_WIDTH - 1:0] rdata_out;
    logic dequeue_in;
    logic full_out;
    logic empty_out;


task generate_reset;
    begin
        rst = 1'b1;
        repeat (2) @ (posedge clk);
        rst <= 1'b0;
    end
endtask;

queue dut(
    .clk(clk),
    .rst(rst),
    .wdata_in(wdata_in),
    .enqueue_in(enqueue_in),
    .rdata_out(rdata_out),
    .dequeue_in(dequeue_in),
    .full_out(full_out),
    .empty_out(empty_out)
);


task queue_test1( input logic [DATA_WIDTH - 1:0] write_data1, input logic enqueue, input logic dequeue);
    begin
        wdata_in = write_data1;
        enqueue_in = enqueue;
        dequeue_in = dequeue;
        @ (posedge clk);
        wdata_in = 'x;
        enqueue_in = 1'b0;
        dequeue_in = 1'b0;
    end
endtask

// task queue_test2(input logic enqueue, input logic dequeue);
//     begin
//         wdata_in = write_data1;
//         enqueue_in = enqueue;
//         dequeue_in = dequeue;
//         @ (posedge clk);
//         wdata_in = 'x;
//         enqueue_in = 1'b0;
//         dequeue_in = 1'b0;
//     end
// endtask

initial
begin

    generate_reset;
    queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    // queue_test1( 32'hcafebabe, 1'b1,  1'b0);
    // queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    // queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    // queue_test1( 32'hcafeface, 1'b1,  1'b0);
    queue_test1('x, 1'b0,1'b1);
    queue_test1('x, 1'b0,1'b1);
    queue_test1('x, 1'b0,1'b1);
    queue_test1('x, 1'b0,1'b1);
    queue_test1('x, 1'b0,1'b1);
    queue_test1('x, 1'b0,1'b1);
    queue_test1( 32'hecebcafe, 1'b1,  1'b0);
    queue_test1( 32'hbabebeef, 1'b1,  1'b0);
    queue_test1('x, 1'b0,1'b0);
    queue_test1('x, 1'b0,1'b0);
    queue_test1('x, 1'b0,1'b0);
    queue_test1('x, 1'b0,1'b0);
    // queue_test1('x, 1'b0,1'b1);
    // queue_test1('x, 1'b0,1'b1);
    // queue_test1('x, 1'b0,1'b1);

    #100000;
    $finish;
end

endmodule