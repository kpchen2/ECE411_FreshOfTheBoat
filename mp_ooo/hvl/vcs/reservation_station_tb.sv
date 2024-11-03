module top_tb;


timeunit 1ps;
    timeprecision 1ps;
    // parameter DATA_WIDTH = 32; 
    // parameter QUEUE_DEPTH = 64;
    int clock_half_period_ps;
    initial begin
        $value$plusargs("CLOCK_PERIOD_PS_ECE411=%d", clock_half_period_ps);
        clock_half_period_ps = clock_half_period_ps / 2;
    end
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




task generate_reset;
    begin
        rst = 1'b1;
        repeat (2) @ (posedge clk);
        rst <= 1'b0;
    end
endtask;


    logic [1:0] rs_select;
    logic dispatch_ps_ready1;
    logic dispatch_ps_ready2;
    logic [31:0] ps1;
    logic [31:0] ps2;
    logic [31:0] rd;
    logic [31:0] pd;
    logic [31:0] rob_entry;
    logic [31:0] cdb_ps_id;
    logic fu_busy;
    logic regf_we;
    logic fu_ready;

reservation_station dut(
    .clk(clk),
    .rst(rst),
    .rs_select(rs_select),
    .dispatch_ps_ready1(dispatch_ps_ready1),
    .dispatch_ps_ready2(dispatch_ps_ready2),
    .ps1(ps1),
    .ps2(ps2),
    .rd(rd),
    .pd(pd),
    .rob_entry(rob_entry),
    .cdb_ps_id(cdb_ps_id),
    .fu_busy(fu_busy),
    .regf_we(regf_we),
    .fu_ready(fu_ready)
);


task standard_task( input logic [1:0] rs_select1, input logic dispatch_ps_ready1_t, input logic dispatch_ps_ready2_t, input logic [31:0] ps1_t, input logic [31:0] ps2_t, input logic [31:0] rd_t, input logic [31:0] pd_t, input logic [31:0] rob_entry_t, input logic [31:0] cdb_ps_id_t, input logic fu_busy_t);
    begin
        rs_select = rs_select1;
        dispatch_ps_ready1 = dispatch_ps_ready1_t;
        dispatch_ps_ready2 = dispatch_ps_ready2_t;
        ps1 = ps1_t;
        ps2 = ps2_t;
        rd = rd_t;
        pd = pd_t;
        rob_entry = rob_entry_t;
        cdb_ps_id = cdb_ps_id_t;
        fu_busy  = fu_busy_t;
        @ (posedge clk);
        rs_select = '0;
        dispatch_ps_ready1 = '0;
        dispatch_ps_ready2 = '0;
        ps1 = '0;
        ps2 = '0;
        rd = '0;
        pd = '0;
        rob_entry = '0;
        cdb_ps_id = '0;
        fu_busy  = '0;
    end
endtask

task rs_add_one_entry;
    begin           //input logic [1:0] rs_select1, input logic dispatch_ps_ready1_t, input logic dispatch_ps_ready2_t, input logic [31:0] ps1_t, input logic [31:0] ps2_t, input logic [31:0] rd_t, input logic [31:0] pd_t, input logic [31:0] rob_entry_t, input logic [31:0] cdb_ps_id_t, input logic fu_busy_t)
        standard_task(2'd0,                                 1'b1,                               1'b0,                       32'd32,                     32'd33,                  32'd2,                     32'd45,                         32'd0,                  32'd38,                         1'b0);

    end
endtask;


initial 
begin
    generate_reset;
    

    #100000;
    $finish;
end
