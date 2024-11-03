module top_tb;


timeprecision 1ps;

timeunit 1ps;
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

    logic dispatch_valid;
    logic [1:0] rs_select;
    logic dispatch_ps_ready1;
    logic dispatch_ps_ready2;
    logic [31:0] ps1;
    logic [31:0] ps2;
    logic [31:0] rd;
    logic [31:0] pd;
    logic [31:0] rob_entry;
    logic [31:0] cdb_ps_id;
    logic add_fu_busy;
    logic multiply_fu_busy;
    logic add_regf_we;
    logic multiply_regf_we;
    logic add_fu_ready;
    logic multiply_fu_ready;
    logic [159:0] multiply_cdb;
    logic [159:0] add_cdb;

reservation_station dut(
    .clk(clk),
    .rst(rst),
    .dispatch_valid(dispatch_valid),
    .rs_select(rs_select),
    .dispatch_ps_ready1(dispatch_ps_ready1),
    .dispatch_ps_ready2(dispatch_ps_ready2),
    .ps1(ps1),
    .ps2(ps2),
    .rd(rd),
    .pd(pd),
    .rob_entry(rob_entry),
    .cdb_ps_id(cdb_ps_id),
    .add_fu_busy(add_fu_busy),
    .multiply_fu_busy(multiply_fu_busy),
    .add_regf_we(add_regf_we),
    .multiply_fu_ready(multiply_fu_ready),
    .multiply_cdb(multiply_cdb),
    .add_cdb(add_cdb)
);


task standard_task( input logic [1:0] rs_select1, input logic dispatch_valid_t, input logic dispatch_ps_ready1_t, input logic dispatch_ps_ready2_t, input logic [31:0] ps1_t, input logic [31:0] ps2_t, input logic [31:0] rd_t, input logic [31:0] pd_t, input logic [31:0] rob_entry_t, input logic [31:0] cdb_ps_id_t, input logic add_fu_busy_t, input logic multiply_fu_busy_t);
    begin
        rs_select = rs_select1;
        dispatch_valid = dispatch_valid_t;
        dispatch_ps_ready1 = dispatch_ps_ready1_t;
        dispatch_ps_ready2 = dispatch_ps_ready2_t;
        ps1 = ps1_t;
        ps2 = ps2_t;
        rd = rd_t;
        pd = pd_t;
        rob_entry = rob_entry_t;
        cdb_ps_id = cdb_ps_id_t;
        add_fu_busy  = add_fu_busy_t;
        multiply_fu_busy = multiply_fu_busy_t;
        @ (posedge clk);
        rs_select = '0;
        dispatch_ps_ready1 = '0;
        dispatch_ps_ready2 = '0;
        ps1 = '0;
        ps2 = '0;
        rd = '0;
        pd = '0;
        dispatch_valid = 1'b0;
        rob_entry = '0;
        cdb_ps_id = '1;
        add_fu_busy  = '0;
        multiply_fu_busy = '0;
    end
endtask

task rs_add_one_entry;
    begin           //input logic [1:0] rs_select1, input logic dispatch_valid_t, input logic dispatch_ps_ready1_t, input logic dispatch_ps_ready2_t, input logic [31:0] ps1_t, input logic [31:0] ps2_t, input logic [31:0] rd_t, input logic [31:0] pd_t, input logic [31:0] rob_entry_t, input logic [31:0] cdb_ps_id_t, input logic add_fu_busy_t, input logic multiply_fu_busy_t)
        standard_task(2'd0,                           1'b1,                                    1'b1,                               1'b0,                       32'd32,                     32'd33,                  32'd2,                     32'd45,                         32'd0,                  32'd38,                         1'b0,                           1'b0);

    end
endtask;
task rs_add_entry_remove;
    begin           //input logic [1:0] rs_select1, input logic dispatch_valid_t, input logic dispatch_ps_ready1_t, input logic dispatch_ps_ready2_t, input logic [31:0] ps1_t, input logic [31:0] ps2_t, input logic [31:0] rd_t, input logic [31:0] pd_t, input logic [31:0] rob_entry_t, input logic [31:0] cdb_ps_id_t, input logic add_fu_busy_t, input logic multiply_fu_busy_t)
        standard_task(2'd0,                           1'b1,                                    1'b1,                               1'b1,                       32'd34,                     32'd35,                  32'd4,                     32'd65,                         32'd1,                  32'd40,                         1'b0,                           1'b0);
    end
endtask;

task rs_add_entry_remove_then_add_one;
    begin           //input logic [1:0] rs_select1, input logic dispatch_valid_t, input logic dispatch_ps_ready1_t, input logic dispatch_ps_ready2_t, input logic [31:0] ps1_t, input logic [31:0] ps2_t, input logic [31:0] rd_t, input logic [31:0] pd_t, input logic [31:0] rob_entry_t, input logic [31:0] cdb_ps_id_t, input logic add_fu_busy_t, input logic multiply_fu_busy_t)
        standard_task(2'd0,                           1'b1,                                    1'b1,                               1'b1,                       32'd34,                     32'd35,                  32'd4,                     32'd65,                         32'd1,                  32'd40,                         1'b0,                           1'b0);
        standard_task(2'd0,                             1'b1,                               1'b1,                                   1'b0                         ,32'd32                    ,32'd33,                32'd5,                       32'd64,                          32'd2     ,            32'd41,                         1'b0,                           1'b0);
    end
endtask;


task rs_add_multiple_entries;
    begin           //input logic [1:0] rs_select1, input logic dispatch_valid_t, input logic dispatch_ps_ready1_t, input logic dispatch_ps_ready2_t, input logic [31:0] ps1_t, input logic [31:0] ps2_t, input logic [31:0] rd_t, input logic [31:0] pd_t, input logic [31:0] rob_entry_t, input logic [31:0] cdb_ps_id_t, input logic add_fu_busy_t, input logic multiply_fu_busy_t)
        standard_task(2'd0,                           1'b1,                                    1'b1,                               1'b0,                       32'd32,                     32'd33,                  32'd2,                     32'd64,                         32'd0,                  32'd38,                         1'b0,                           1'b0);
        standard_task(2'd0,                           1'b1,                                    1'b1,                               1'b1,                       32'd34,                     32'd35,                  32'd4,                     32'd65,                         32'd1,                  32'd40,                         1'b0,                           1'b0);
    end
endtask;

task rs_add_fill_entries;
    begin
        standard_task(2'd0,                           1'b1,                                    1'b1,                               1'b0,                       32'd32,                     32'd33,                  32'd2,                     32'd64,                         32'd0,                  32'd38,                         1'b0,                           1'b0);
        standard_task(2'd0,                           1'b1,                                    1'b1,                               1'b1,                       32'd34,                     32'd35,                  32'd4,                     32'd65,                         32'd1,                  32'd40,                         1'b0,                           1'b0);
        standard_task(2'd0,                           1'b1,                                    1'b1,                               1'b0,                       32'd36,                     32'd37,                  32'd6,                     32'd66,                         32'd2,                  32'd42,                         1'b0,                           1'b0);
        standard_task(2'd0,                           1'b1,                                    1'b1,                               1'b0,                       32'd38,                     32'd39,                  32'd8,                     32'd67,                         32'd3,                  32'd44,                         1'b0,                           1'b0);
        
        standard_task(2'd0,                           1'b1,                                    1'b1,                               1'b0,                       32'd34,                     32'd35,                  32'd4,                     32'd65,                         32'd1,                  32'd40,                         1'b0,                           1'b0);
        standard_task(2'd0,                           1'b1,                                    1'b1,                               1'b0,                       32'd36,                     32'd37,                  32'd6,                     32'd66,                         32'd2,                  32'd38,                         1'b0,                           1'b0);
        
    end
endtask;

task rs_add_perform_updation;
    begin           //input logic [1:0] rs_select1, input logic dispatch_valid_t, input logic dispatch_ps_ready1_t, input logic dispatch_ps_ready2_t, input logic [31:0] ps1_t, input logic [31:0] ps2_t, input logic [31:0] rd_t, input logic [31:0] pd_t, input logic [31:0] rob_entry_t, input logic [31:0] cdb_ps_id_t, input logic add_fu_busy_t, input logic multiply_fu_busy_t)

        standard_task(2'd0,                           1'b1,                                    1'b1,                               1'b0,                       32'd32,                     32'd33,                  32'd2,                     32'd64,                         32'd0,                  32'd38,                         1'b0,                           1'b0);
        standard_task(2'd0,                           1'b1,                                    1'b1,                               1'b0,                       32'd32,                     32'd34,                  32'd2,                     32'd64,                         32'd0,                  32'd33,                         1'b0,                           1'b0);
    end

endtask;
initial 
begin
    generate_reset;
    // rs_add_one_entry;
    // rs_add_multiple_entries;
    // rs_add_entry_remove;
    // rs_add_entry_remove_then_add_one;
    rs_add_fill_entries;
    
    #100000;
    $finish;
end

endmodule