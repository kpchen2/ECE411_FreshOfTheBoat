module top_tb;
import rv32i_types::*;
    //---------------------------------------------------------------------------------
    // Waveform generation.
    //---------------------------------------------------------------------------------
    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, "+all");
    end

    //---------------------------------------------------------------------------------
    // TODO: Declare cache port signals:
    //---------------------------------------------------------------------------------
    logic           clk;
    logic           rst;

    logic   [6:0]   opcode;
    logic   [5:0]   phys_reg_in;
    logic           enqueue_valid;
    logic   [5:0]   rob_num;
    logic   [31:0]  addr;
    logic           addr_valid;
    logic   [5:0]   mem_idx_in;
    logic   [5:0]   commited_rob;
    logic           commited_rob_valid;
    logic   [31:0]  data_in;
    logic           data_valid;
    logic   [31:0]  rd_v;

    logic   [5:0]   phys_reg_out;
    logic           output_valid;
    logic   [31:0]  data_out;
    logic           full;
    logic   [5:0]   mem_idx_out;
    logic   [31:0]  d_addr;
    logic   [3:0]   d_rmask;
    logic   [3:0]   d_wmask;
    logic   [31:0]  d_wdata;
    logic   [5:0]   rd_s;

    //---------------------------------------------------------------------------------
    // TODO: Generate a clock:
    //---------------------------------------------------------------------------------
    initial clk = 1'b1;
    always #1ns clk = ~clk;

    //---------------------------------------------------------------------------------
    // TODO: Write a task to generate reset:
    //---------------------------------------------------------------------------------
    task reset;
        begin
            rst = 1'b1;
            repeat (2) @(posedge clk);
            rst <= 1'b0;
        end
    endtask

    //---------------------------------------------------------------------------------
    // TODO: Instantiate the DUT and physical memory:
    //---------------------------------------------------------------------------------

    memory_queue dut(
        .clk(clk),
        .rst(rst),
        // rename/dispatch inputs
        .opcode(opcode),
        .phys_reg_in(phys_reg_in),
        .enqueue_valid(enqueue_valid),
        .rob_num(rob_num),
        // adder inputs
        .addr(addr),
        .addr_valid(addr_valid),
        .mem_idx_in(mem_idx_in),
        // rob inputs
        .commited_rob(commited_rob),
        .commited_rob_valid(commited_rob_valid),
        // dcache inputs
        .data_in(data_in),
        .data_valid(data_valid),
        // regfile inputs
        .rd_v(rd_v),
        
        // outputs
        .phys_reg_out(phys_reg_out),
        .output_valid(output_valid),
        .data_out(data_out),
        .full(full),
        // rename/dispatch outputs
        .mem_idx_out(mem_idx_out),
        // dcache outputs
        .d_addr(d_addr),
        .d_rmask(d_rmask),
        .d_wmask(d_wmask),
        .d_wdata(d_wdata),
        // regfile outputs
        .rd_s(rd_s)
    );

    //---------------------------------------------------------------------------------
    // TODO: Write tasks to test various functionalities:
    //---------------------------------------------------------------------------------

    task normal;
        begin
            opcode = 'x;
            phys_reg_in = 'x;
            rob_num = 'x;
            enqueue_valid = '0;
            addr = 'x;
            mem_idx_in = 'x;
            addr_valid = '0;
            commited_rob = 'x;
            commited_rob_valid = '0;
            data_in = 'x;
            data_valid = '0;
            rd_v = 'x;
            repeat (5) @(posedge clk);

            opcode = 7'b0000011;
            phys_reg_in = 6'b000001;
            rob_num = '0;
            enqueue_valid = '1;
            addr = 'x;
            mem_idx_in = 'x;
            addr_valid = '0;
            commited_rob = 'x;
            commited_rob_valid = '0;
            data_in = 'x;
            data_valid = '0;
            rd_v = 32'h00000001;
            repeat (1) @(posedge clk);

            opcode = 7'b0100011;
            phys_reg_in = 6'b000010;
            rob_num = 6'b000001;
            enqueue_valid = '1;
            addr = 32'hCAFEBABE;
            mem_idx_in = '0;
            addr_valid = '1;
            commited_rob = 'x;
            commited_rob_valid = '0;
            data_in = 'x;
            data_valid = '0;
            rd_v = 32'h00000001;
            repeat (1) @(posedge clk);

            opcode = 'x;
            phys_reg_in = 'x;
            rob_num = 'x;
            enqueue_valid = '0;
            addr = 'x;
            mem_idx_in = 'x;
            addr_valid = '0;
            commited_rob = 'x;
            commited_rob_valid = '0;
            data_in = 'x;
            data_valid = '0;
            rd_v = 'x;
            repeat (3) @(posedge clk);
        end
    endtask

    // overlapping enqueues and dequeues all in order
    task overlapping;
        begin
            phys_reg_in = 6'b000010;
            arch_reg_in = 5'b00000;
            enqueue_valid = '1;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (1) @(posedge clk);

            phys_reg_in = 6'b000100;
            arch_reg_in = 5'b00001;
            enqueue_valid = '1;
            rob_idx_in = '0;
            cdb_valid = '1;
            repeat (1) @(posedge clk);

            phys_reg_in = 6'b001000;
            arch_reg_in = 5'b00011;
            enqueue_valid = '1;
            rob_idx_in = 6'b000001;
            cdb_valid = '1;
            repeat (1) @(posedge clk);

            phys_reg_in = 'x;
            arch_reg_in = 'x;
            enqueue_valid = '0;
            rob_idx_in = 6'b000010;
            cdb_valid = '1;
            repeat (1) @(posedge clk);

            phys_reg_in = 'x;
            arch_reg_in = 'x;
            enqueue_valid = '0;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (1) @(posedge clk);
        end
    endtask

    // enqueues then dequeues ooo
    task normal_ooo;
        begin
            phys_reg_in = 6'b000010;
            arch_reg_in = 5'b00000;
            enqueue_valid = '1;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (1) @(posedge clk);

            phys_reg_in = 6'b000100;
            arch_reg_in = 5'b00001;
            enqueue_valid = '1;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (1) @(posedge clk);

            phys_reg_in = 6'b001000;
            arch_reg_in = 5'b00011;
            enqueue_valid = '1;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (1) @(posedge clk);

            phys_reg_in = 'x;
            arch_reg_in = 'x;
            enqueue_valid = '0;
            rob_idx_in = 6'b000001;
            cdb_valid = '1;
            repeat (1) @(posedge clk);

            phys_reg_in = 'x;
            arch_reg_in = 'x;
            enqueue_valid = '0;
            rob_idx_in = 6'b000010;
            cdb_valid = '1;
            repeat (1) @(posedge clk);

            phys_reg_in = 'x;
            arch_reg_in = 'x;
            enqueue_valid = '0;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (1) @(posedge clk);

            phys_reg_in = 'x;
            arch_reg_in = 'x;
            enqueue_valid = '0;
            rob_idx_in = 6'b000000;
            cdb_valid = '1;
            repeat (1) @(posedge clk);

            phys_reg_in = 'x;
            arch_reg_in = 'x;
            enqueue_valid = '0;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (1) @(posedge clk);
        end
    endtask

    // overlapping enqueues and dequeues ooo
    task overlapping_ooo;
        begin
            phys_reg_in = 6'b000010;
            arch_reg_in = 5'b00000;
            enqueue_valid = '1;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (1) @(posedge clk);

            phys_reg_in = 6'b000100;
            arch_reg_in = 5'b00001;
            enqueue_valid = '1;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (1) @(posedge clk);

            phys_reg_in = 6'b001000;
            arch_reg_in = 5'b00011;
            enqueue_valid = '1;
            rob_idx_in = 6'b000001;
            cdb_valid = '1;
            repeat (1) @(posedge clk);

            phys_reg_in = 6'b010000;
            arch_reg_in = 5'b00111;
            enqueue_valid = '1;
            rob_idx_in = 6'b000010;
            cdb_valid = '1;
            repeat (1) @(posedge clk);

            phys_reg_in = 'x;
            arch_reg_in = 'x;
            enqueue_valid = '0;
            rob_idx_in = 6'b000000;
            cdb_valid = '1;
            repeat (1) @(posedge clk);

            phys_reg_in = 'x;
            arch_reg_in = 'x;
            enqueue_valid = '0;
            rob_idx_in = 6'b000011;
            cdb_valid = '1;
            repeat (1) @(posedge clk);

            phys_reg_in = 'x;
            arch_reg_in = 'x;
            enqueue_valid = '0;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (1) @(posedge clk);
        end
    endtask

    // overflow
    task overflow;
        begin
            phys_reg_in = 6'b000010;
            arch_reg_in = 5'b00000;
            enqueue_valid = '1;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (63) @(posedge clk);

            phys_reg_in = 6'b000100;
            arch_reg_in = 5'b00001;
            enqueue_valid = '1;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (1) @(posedge clk);

            phys_reg_in = 6'b001000;
            arch_reg_in = 5'b00011;
            enqueue_valid = '1;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (1) @(posedge clk);

            phys_reg_in = 6'b010000;
            arch_reg_in = 5'b00111;
            enqueue_valid = '1;
            rob_idx_in = 'x;
            cdb_valid = '0;
            repeat (1) @(posedge clk);

            phys_reg_in = 'x;
            arch_reg_in = 'x;
            enqueue_valid = '0;
            rob_idx_in = 6'b000000;
            cdb_valid = '1;
            repeat (1) @(posedge clk);

            phys_reg_in = 6'b100000;
            arch_reg_in = 5'b01111;
            enqueue_valid = '1;
            rob_idx_in = 6'b000001;
            cdb_valid = '1;
            repeat (1) @(posedge clk);

            phys_reg_in = 'x;
            arch_reg_in = 'x;
            enqueue_valid = '0;
            rob_idx_in = 6'b000010;
            cdb_valid = '1;
            repeat (1) @(posedge clk);
        end
    endtask

    //---------------------------------------------------------------------------------
    // TODO: Main initial block that calls your tasks, then calls $finish
    //---------------------------------------------------------------------------------

    initial begin
        reset();

        // normal();
        // overlapping();
        // normal_ooo();
        overlapping_ooo();
        // overflow();

        repeat (10) @(posedge clk);

        $finish;
    end
endmodule : top_tb