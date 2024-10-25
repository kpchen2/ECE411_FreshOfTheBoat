module top_tb;
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
    bit clk;
    bit rst;
    logic   [31:0]  ufp_addr;
    logic   [3:0]   ufp_rmask;
    logic   [3:0]   ufp_wmask;
    logic   [31:0]  ufp_rdata;
    logic   [31:0]  ufp_wdata;
    logic           ufp_resp;

    //---------------------------------------------------------------------------------
    // TODO: Generate a clock:
    //---------------------------------------------------------------------------------
    always #1ns clk = ~clk;

    //---------------------------------------------------------------------------------
    // TODO: Write a task to generate reset:
    //---------------------------------------------------------------------------------
    mem_itf_wo_mask mem_itf(.*);
    simple_memory_256_wo_mask simple_memory(.itf(mem_itf));

    //---------------------------------------------------------------------------------
    // TODO: Instantiate the DUT and physical memory:
    //---------------------------------------------------------------------------------
    cache dut (
        .clk(clk),
        .rst(rst),
        .ufp_addr(ufp_addr),
        .ufp_rmask(ufp_rmask),
        .ufp_wmask(ufp_wmask),
        .ufp_rdata(ufp_rdata),
        .ufp_wdata(ufp_wdata),
        .ufp_resp(ufp_resp),
        .dfp_addr(mem_itf.addr[0]),
        .dfp_read(mem_itf.read[0]),
        .dfp_write(mem_itf.write[0]),
        .dfp_rdata(mem_itf.rdata[0]),
        .dfp_wdata(mem_itf.wdata[0]),
        .dfp_resp(mem_itf.resp[0])
    );

    //---------------------------------------------------------------------------------
    // TODO: Write tasks to test various functionalities:
    //---------------------------------------------------------------------------------
    // std::randomize(addr) with {addr[8:5] == 4'hf;};
    //---------------------------------------------------------------------------------
    // covergroup cg @(posedge clk);
    //     all_fsm_states           : coverpoint dut.control.state iff (!rst);
    //     writeback_to_pmem        : coverpoint dut.dfp_write {bins assert_write = {1};}
    //     read_all_cachelines_way0 : coverpoint dut.datapath.way0.addr iff (dut.ufp_rmask != '0);
    // endgroup : cg
    
    //---------------------------------------------------------------------------------
    // TODO: Main initial block that calls your tasks, then calls $finish
    //---------------------------------------------------------------------------------
    // `include "../../hvl/common/rvfi_reference.svh"

    task reset;
        begin
            rst = 1'b1;
            repeat (2) @(posedge clk);
            rst <= 1'b0;
        end
    endtask

    // task test_read (input logic [31:0] addr, input logic wait_signal);
    //     begin
    //         ufp_addr = addr;
    //         ufp_rmask = 4'b1111;
    //         ufp_wmask = 4'b0000;
    //         ufp_wdata = '0;
    //         if (wait_signal) begin
    //             @(posedge clk iff ufp_resp);
    //         end
    //     end
    // endtask

    // task test_write (input logic [31:0] addr, input logic [31:0] wdata);
    //     begin
    //         ufp_addr = addr;
    //         ufp_rmask = 4'b0000;
    //         ufp_wmask = 4'b1011;
    //         ufp_wdata = wdata;
    //         @(posedge clk iff ufp_resp);
    //     end
    // endtask
    task test_read;
        begin
            ufp_addr <= 32'h00000020;
            ufp_rmask <= 4'b1101;
            ufp_wmask <= 4'b0000;
            ufp_wdata <= '0;
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= 'x;
            repeat (12) @(posedge clk);
            ufp_addr <= 32'h00000024;
            ufp_rmask <= 4'b1110;
            repeat (1) @(posedge clk);
            ufp_addr <= 32'h00000008;
            ufp_rmask <= 4'b1111;
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= 'x;
            repeat (12) @(posedge clk);
            ufp_addr <= 'x;//32'h0000002c;
            ufp_rmask <= '0;//4'b0001;
            repeat (1) @(posedge clk);
            ufp_addr <= 32'h00000030;
            ufp_rmask <= 4'b0111;
            repeat (1) @(posedge clk);
            ufp_addr <= 32'h00000004;
            ufp_rmask <= 4'b1111;
            repeat (1) @(posedge clk);
            ufp_addr <= 32'h00000038;
            ufp_rmask <= 4'b1000;
            repeat (1) @(posedge clk);

            // ufp_addr = 32'h00000028;
            // ufp_rmask = 4'b0000;
            // ufp_wmask = 4'b1011;
            // ufp_wdata = 32'hcafebabe;
            // repeat (1) @(posedge clk);

            // ufp_addr = 32'h00000020;
            // ufp_rmask = 4'b0000;
            // ufp_wmask = 4'b1101;
            // ufp_wdata = 32'hdeadbeef;
            // repeat (1) @(posedge clk);
            // // ufp_addr = 'x;
            // // ufp_rmask = '0;
            // // ufp_wmask = 'x;
            // // ufp_wdata = 'x;
            // repeat (1) @(posedge clk);

            // ufp_addr = 32'h00000024;
            // ufp_rmask = 4'b0000;
            // ufp_wmask = 4'b1000;
            // ufp_wdata = 32'habacdaba;
            // repeat (1) @(posedge clk);
            // // ufp_addr = 'x;
            // // ufp_rmask = '0;
            // // ufp_wmask = 'x;
            // // ufp_wdata = 'x;
            // repeat (1) @(posedge clk);

            // ufp_addr = 32'h00000020;
            // ufp_rmask = 4'b1001;
            // ufp_wmask = 4'b0000;
            // ufp_wdata = '0;
            // repeat (2) @(posedge clk);
            // ufp_addr = 32'h00000028;
            // ufp_rmask = 4'b1100;
            // ufp_wmask = 4'b0000;
            // ufp_wdata = '0;
            // repeat (1) @(posedge clk);
            // ufp_addr = 32'h00000024;
            // ufp_rmask = 4'b0110;
            // ufp_wmask = 4'b0000;
            // ufp_wdata = '0;
            // repeat (1) @(posedge clk);
        end
    endtask

    task test_write;
        begin
            ufp_addr <= 32'h00000020;
            ufp_rmask <= 4'b0000;
            ufp_wmask <= 4'b1111;
            ufp_wdata <= 32'habcdef12;
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= 'x;
            repeat (12) @(posedge clk);
            ufp_wmask <= 4'b0000;
            ufp_addr <= 32'h00000020;
            ufp_rmask <= 4'b1101;
            repeat (2) @(posedge clk);
            ufp_addr <= 32'h00000028;
            ufp_rmask <= 4'b0000;
            repeat (1) @(posedge clk);
            ufp_rmask <= 4'b1000;
            repeat (1) @(posedge clk);
            // ufp_addr = 'x;
            // ufp_rmask = 'x;
            // repeat (12) @(posedge clk);
            // ufp_addr = 'x;//32'h0000002c;
            // ufp_rmask = '0;//4'b0001;
            // repeat (1) @(posedge clk);
            // ufp_addr = 32'h00000030;
            // ufp_rmask = 4'b0111;
            // repeat (1) @(posedge clk);
            // ufp_addr = 32'h00000004;
            // ufp_rmask = 4'b1111;
            // repeat (1) @(posedge clk);
            // ufp_addr = 32'h00000038;
            // ufp_rmask = 4'b1000;
            // repeat (1) @(posedge clk);
        end
    endtask

    task test_write_dumb;
        begin
            ufp_addr = 32'h00000020;
            ufp_rmask = 4'b0000;
            ufp_wmask = 4'b1111;
            ufp_wdata = 32'habcdef12;
            repeat (1) @(posedge clk);
            ufp_addr = 'x;
            ufp_rmask = 'x;
            repeat (12) @(posedge clk);
            ufp_wmask = 4'b0000;
            ufp_addr = 32'h00000020;
            ufp_rmask = 4'b1101;
            repeat (2) @(posedge clk);
            ufp_addr = 32'h00000028;
            ufp_rmask = 4'b0000;
            repeat (1) @(posedge clk);
            ufp_rmask = 4'b1000;
            repeat (1) @(posedge clk);
            // ufp_addr = 'x;
            // ufp_rmask = 'x;
            // repeat (12) @(posedge clk);
            // ufp_addr = 'x;//32'h0000002c;
            // ufp_rmask = '0;//4'b0001;
            // repeat (1) @(posedge clk);
            // ufp_addr = 32'h00000030;
            // ufp_rmask = 4'b0111;
            // repeat (1) @(posedge clk);
            // ufp_addr = 32'h00000004;
            // ufp_rmask = 4'b1111;
            // repeat (1) @(posedge clk);
            // ufp_addr = 32'h00000038;
            // ufp_rmask = 4'b1000;
            // repeat (1) @(posedge clk);
        end
    endtask

    task deassert;
        ufp_addr <= 'x;
        ufp_rmask <= 'x;
        ufp_wmask <= 'x;
        ufp_wdata <= 'x;
    endtask

    task edge_case;
        begin
            ufp_addr <= 32'h00000020;
            ufp_rmask <= 4'b1111;
            ufp_wmask <= 4'b0000;
            ufp_wdata <= '0;
            @(posedge clk);
            deassert();
            repeat (12) @(posedge clk);

            // repeat (13) @(posedge clk);
            ufp_wmask <= 4'b0000;
            ufp_wdata <= '0;
            ufp_addr <= 32'h00000024;
            ufp_rmask <= 4'b1110;
            @(posedge clk iff ufp_resp);
            // deassert();
            // @(posedge clk);
            // wait (ufp_resp == 1'b1);
            // ufp_rmask = '0;
            // repeat (20) @(posedge clk);

            ufp_addr <= 32'h00000028;
            ufp_rmask <= 4'b0000;
            ufp_wmask <= 4'b1011;
            ufp_wdata <= 32'hcafebabe;
            // @(posedge clk iff ufp_resp);
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= '0;
            ufp_wmask <= '0;
            ufp_wdata <= 'x;
            repeat (1) @(posedge clk);
            ufp_addr <= 32'h00000020;
            ufp_rmask <= 4'b0000;
            ufp_wmask <= 4'b1101;
            ufp_wdata <= 32'hdeadbeef;
            // @(posedge clk iff ufp_resp);
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= '0;
            ufp_wmask <= '0;
            ufp_wdata <= 'x;
            repeat (1) @(posedge clk);
            ufp_addr <= 32'h0010002c;
            ufp_rmask <= 4'b0000;
            ufp_wmask <= 4'b1000;
            ufp_wdata <= 32'habacdaba;
            // @(posedge clk iff ufp_resp);
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= '0;
            ufp_wmask <= '0;
            ufp_wdata <= 'x;
            repeat (13) @(posedge clk);
            // test_write(32'h00000028, 32'hcafebabe);
            // test_write(32'h00000020, 32'hdeadbeef);
            // test_write(32'h00000024, 32'habacdaba);
            ufp_addr <= 32'h00000024;
            // ufp_rmask <= 4'b1001;
            ufp_rmask <= 4'b1111;
            ufp_wmask <= 4'b0000;
            ufp_wdata <= '0;
            // @(posedge clk iff ufp_resp);
            repeat (1) @(posedge clk);
            ufp_rmask <= 4'b0000;
            repeat (1) @(posedge clk);
            ufp_addr <= 32'h00000028;
            ufp_rmask <= 4'b1111;
            ufp_wmask <= 4'b0000;
            ufp_wdata <= '0;
            // @(posedge clk iff ufp_resp);
            repeat (1) @(posedge clk);
            ufp_addr <= 32'h0010002c;
            ufp_rmask <= 4'b1111;
            ufp_wmask <= 4'b0000;
            ufp_wdata <= '0;
            repeat (1) @(posedge clk);
            // deassert();
            ufp_addr <= 'x;
            ufp_rmask <= '0;
            ufp_wmask <= '0;
            ufp_wdata <= 'x;
            repeat (20) @(posedge clk);
        end
    endtask

    task write_edgecase;
        begin
            ufp_addr <= 32'h00000020;
            ufp_rmask <= 4'b1111;
            ufp_wmask <= 4'b0000;
            ufp_wdata <= '0;
            @(posedge clk);
            deassert();
            repeat (12) @(posedge clk);

            // repeat (13) @(posedge clk);
            // ufp_wmask <= 4'b0000;
            // ufp_wdata <= '0;
            // ufp_addr <= 32'h00000024;
            // ufp_rmask <= 4'b1110;
            // @(posedge clk iff ufp_resp);
            // deassert();
            // @(posedge clk);
            // wait (ufp_resp == 1'b1);
            // ufp_rmask = '0;
            // repeat (20) @(posedge clk);

            ufp_addr <= 32'h00000028;
            ufp_rmask <= 4'b0000;
            ufp_wmask <= 4'b1011;
            ufp_wdata <= 32'hcafebabe;
            // @(posedge clk);
            // deassert();
            // repeat (12) @(posedge clk);
            // @(posedge clk iff ufp_resp);
            repeat (1) @(posedge clk);
            ufp_addr <= 32'h00000020;
            ufp_rmask <= 4'b0000;
            ufp_wmask <= 4'b1101;
            ufp_wdata <= 32'hdeadbeef;
            // @(posedge clk iff ufp_resp);
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= '0;
            ufp_wmask <= '0;
            ufp_wdata <= 'x;
            repeat (2) @(posedge clk);
            ufp_addr <= 32'h00000024;
            ufp_rmask <= 4'b0000;
            ufp_wmask <= 4'b1000;
            ufp_wdata <= 32'habacdaba;
            // @(posedge clk iff ufp_resp);
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= '0;
            ufp_wmask <= '0;
            ufp_wdata <= 'x;
            repeat (2) @(posedge clk);
            ufp_addr <= 32'h00000024;
            ufp_rmask <= 4'b1111;
            ufp_wmask <= 4'b0000;
            ufp_wdata <= '0;
            // test_write(32'h00000028, 32'hcafebabe);
            // test_write(32'h00000020, 32'hdeadbeef);
            // test_write(32'h00000024, 32'habacdaba);
            // ufp_addr <= 32'h00000020;
            // // ufp_rmask <= 4'b1001;
            // ufp_rmask <= 4'b1111;
            // ufp_wmask <= 4'b0000;
            // ufp_wdata <= '0;
            // @(posedge clk iff ufp_resp);
            repeat (1) @(posedge clk);
            // ufp_addr <= 'x;
            // ufp_rmask <= '0;
            // ufp_wmask <= '0;
            // ufp_wdata <= 'x;
            // repeat (1) @(posedge clk);

            ufp_addr <= 32'h00000020;
            // ufp_rmask <= 4'b1001;
            ufp_rmask <= 4'b1111;
            ufp_wmask <= 4'b0000;
            ufp_wdata <= '0;
            // ufp_addr <= 32'h00000028;
            // ufp_rmask <= 4'b1111;
            // ufp_wmask <= 4'b0000;
            // ufp_wdata <= '0;
            // @(posedge clk iff ufp_resp);
            repeat (1) @(posedge clk);
            // ufp_addr <= 32'h00000024;
            // ufp_rmask <= 4'b1111;
            ufp_wmask <= 4'b0000;
            ufp_wdata <= '0;
            ufp_addr <= 32'h00000028;
            ufp_rmask <= 4'b1111;
            ufp_wmask <= 4'b0000;
            ufp_wdata <= '0;
            @(posedge clk iff ufp_resp);
            // deassert();
            ufp_addr <= 'x;
            ufp_rmask <= '0;
            ufp_wmask <= '0;
            ufp_wdata <= 'x;
            repeat (20) @(posedge clk);
        end
    endtask

    initial begin
        reset();

        edge_case();
        // test_read();
        // dirty();
        // write_edgecase();
        // striped();
        // stripe();

        ufp_addr <= 'x;
        ufp_rmask <= '0;
        ufp_wmask <= '0;
        ufp_wdata <= 'x;
        repeat (100) @(posedge clk);

        $finish;
    end

    task striped;
        begin
            ufp_addr <= 32'h00000020;
            ufp_rmask <= 4'b0000;
            ufp_wmask <= 4'b1111;
            ufp_wdata <= 32'habcdef12;
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= 'x;
            ufp_wmask <= 'x;
            repeat (12) @(posedge clk);
            ufp_wmask <= 4'b1011;
            ufp_addr <= 32'h00000024;
            ufp_rmask <= 4'b0000;
            ufp_wdata <= 32'hdeadbeef;
            repeat (1) @(posedge clk);
            ufp_wmask <= 4'b0000;
            repeat (1) @(posedge clk);
            ufp_addr <= 32'h00100020;
            ufp_rmask <= 4'b0000;
            ufp_wmask <= 4'b1111;
            ufp_wdata <= 32'h1eceb000;
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= 'x;
            ufp_wmask <= 'x;
            repeat (13) @(posedge clk);
            ufp_wmask <= 4'b1001;
            ufp_addr <= 32'h00100020;
            ufp_rmask <= 4'b0000;
            ufp_wdata <= 32'habcd1234;
            repeat (1) @(posedge clk);
            ufp_wmask <= 4'b0000;
            repeat (1) @(posedge clk);
            ufp_addr <= 32'h00100020;
            ufp_rmask <= 4'b0101;
            ufp_wmask <= 4'b0000;
            ufp_wdata <= '0;
            repeat (1) @(posedge clk);
            ufp_rmask <= 4'b0000;
            repeat (1) @(posedge clk);
        end
    endtask

    task dirty;
        begin
            ufp_addr <= 32'h00000020;
            ufp_rmask <= 4'b1101;
            ufp_wmask <= 4'b0000;
            ufp_wdata <= '0;
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= 'x;
            repeat (12) @(posedge clk);
            ufp_addr <= 32'h00000024;
            ufp_wmask <= 4'b1111;
            ufp_rmask <= '0;
            ufp_wdata <= 32'hcafebabe;
            repeat (1) @(posedge clk);
            ufp_addr <= 32'h0000002c;
            ufp_wmask <= 4'b1111;
            ufp_rmask <= '0;
            ufp_wdata <= 32'h87654321;
            repeat (1) @(posedge clk);
            ufp_wmask <= '0;
            // repeat (1) @(posedge clk);
            // ufp_addr <= 32'h0000002c;
            // ufp_wmask <= 4'b0000;
            // ufp_rmask <= 4'b1001;
            // ufp_wdata <= '0;
            // repeat (1) @(posedge clk);
            // ufp_rmask <= '0;
            repeat (1) @(posedge clk);

            ufp_addr <= 32'h00100024;
            ufp_wmask <= 4'b1111;
            ufp_rmask <= '0;
            ufp_wdata <= 32'h89abcdef;
            repeat (1) @(posedge clk);
            deassert();
            repeat (13) @(posedge clk);
            ufp_addr <= 32'h00100024;
            ufp_wmask <= 4'b0000;
            ufp_rmask <= 4'b1011;
            ufp_wdata <= '0;
            repeat (1) @(posedge clk);
            ufp_rmask <= '0;
            repeat (1) @(posedge clk);

            ufp_addr <= 32'h00200024;
            ufp_wmask <= 4'b1100;
            ufp_rmask <= '0;
            ufp_wdata <= 32'hfedcba98;
            repeat (1) @(posedge clk);
            deassert();
            repeat (12) @(posedge clk);
            ufp_addr <= 32'h00200024;
            ufp_wmask <= 4'b0000;
            ufp_rmask <= 4'b0100;
            ufp_wdata <= '0;
            repeat (1) @(posedge clk);
            ufp_rmask <= '0;
            repeat (1) @(posedge clk);

            ufp_addr <= 32'h00400030;
            ufp_wmask <= 4'b0111;
            ufp_rmask <= '0;
            ufp_wdata <= 32'hdeadbeef;
            repeat (1) @(posedge clk);
            deassert();
            repeat (12) @(posedge clk);
            // ufp_addr <= 32'h00400030;
            // ufp_wmask <= 4'b0000;
            // ufp_rmask <= 4'b0011;
            // ufp_wdata <= '0;
            // repeat (1) @(posedge clk);
            // ufp_rmask <= '0;
            // repeat (1) @(posedge clk);
            ufp_addr <= 32'h00800030;
            ufp_wmask <= 4'b1111;
            ufp_rmask <= '0;
            ufp_wdata <= 32'h45362718;
            repeat (1) @(posedge clk);
            deassert();
            ufp_rmask <= '0;
            ufp_wmask <= '0;
            repeat (24) @(posedge clk);
            ufp_addr <= 32'h00800030;
            ufp_wmask <= '0;
            ufp_rmask <= 4'b1111;
            ufp_wdata <= '0;
            repeat (1) @(posedge clk);
            ufp_rmask <= '0;
            repeat (1) @(posedge clk);
            ufp_addr <= 32'h00000024;
            ufp_rmask <= 4'b1110;
            repeat (1) @(posedge clk);
            deassert();
            repeat (23) @(posedge clk);
            ufp_addr <= 32'h07000034;
            ufp_wmask <= '0;
            ufp_rmask <= 4'b1111;
            ufp_wdata <= '0;
            repeat (12) @(posedge clk);
            ufp_addr <= 32'h00000034;
            ufp_wmask <= '0;
            ufp_rmask <= 4'b1111;
            ufp_wdata <= '0;
            repeat (1) @(posedge clk);
        end
    endtask

    task stripe;
        begin
            ufp_addr <= 32'h00000020;
            ufp_rmask <= 4'b0000;
            ufp_wmask <= 4'b1111;
            ufp_wdata <= 32'habcdef12;
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= 'x;
            ufp_wmask <= 'x;
            repeat (12) @(posedge clk);
            ufp_wmask <= 4'b1111;
            ufp_addr <= 32'h02000024;
            ufp_rmask <= 4'b0000;
            ufp_wdata <= 32'hdeadbeef;
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= 'x;
            ufp_wmask <= 'x;
            repeat (13) @(posedge clk);
            ufp_wmask <= 4'b1111;
            ufp_addr <= 32'h02800024;
            ufp_rmask <= 4'b0000;
            ufp_wdata <= 32'hdeadbeef;
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= 'x;
            ufp_wmask <= 'x;
            repeat (13) @(posedge clk);
            ufp_wmask <= 4'b1111;
            ufp_addr <= 32'h02400024;
            ufp_rmask <= 4'b0000;
            ufp_wdata <= 32'hdeadbeef;
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= 'x;
            ufp_wmask <= 'x;
            repeat (13) @(posedge clk);
            ufp_wmask <= 4'b1111;
            ufp_addr <= 32'h02000044;
            ufp_rmask <= 4'b0000;
            ufp_wdata <= 32'hdeadbeef;
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= 'x;
            ufp_wmask <= 'x;
            repeat (13) @(posedge clk);
            ufp_wmask <= 4'b1111;
            ufp_addr <= 32'h00400044;
            ufp_rmask <= 4'b0000;
            ufp_wdata <= 32'hdeadbeef;
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= 'x;
            ufp_wmask <= 'x;
            repeat (13) @(posedge clk);
            ufp_wmask <= 4'b1111;
            ufp_addr <= 32'h02800044;
            ufp_rmask <= 4'b0000;
            ufp_wdata <= 32'hdeadbeef;
            repeat (1) @(posedge clk);
            ufp_addr <= 'x;
            ufp_rmask <= 'x;
            ufp_wmask <= 'x;
            repeat (13) @(posedge clk);
            ufp_wmask <= 4'b1111;
            ufp_addr <= 32'h02200044;
            ufp_rmask <= 4'b0000;
            ufp_wdata <= 32'hdeadbeef;
            repeat (1) @(posedge clk);
        end
    endtask

    // initial begin
    //     reset();

    //     // test_write();
    //     // bhavesh();
    //     // test_read();
    //     dirty();

    //     ufp_addr = 'x;
    //     ufp_rmask = '0;
    //     repeat (100) @(posedge clk);

    //     $finish;
    // end
endmodule : top_tb
