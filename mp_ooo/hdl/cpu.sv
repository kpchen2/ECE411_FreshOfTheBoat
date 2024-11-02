module cpu
import rv32i_types::*;
(
    input   logic               clk,
    input   logic               rst,

    output  logic   [31:0]      bmem_addr,
    output  logic               bmem_read,
    output  logic               bmem_write,
    output  logic   [63:0]      bmem_wdata,
    input   logic               bmem_ready,

    input   logic   [31:0]      bmem_raddr,
    input   logic   [63:0]      bmem_rdata,
    input   logic               bmem_rvalid
);

    logic   [31:0]  pc, pc_next;

    logic           cache_valid;
    logic   [255:0] cache_wdata;

    // dfp_rdata and dfp_resp from cacheline adapter
    logic   [31:0]  ufp_addr;
    logic   [3:0]   ufp_rmask;
    logic   [3:0]   ufp_wmask;
    logic   [31:0]  ufp_rdata;
    logic   [31:0]  ufp_wdata;
    logic           ufp_resp;

    logic   [31:0]  dfp_addr;
    logic           dfp_read, dfp_read_reg;
    logic           dfp_write;
    logic   [255:0] dfp_rdata;
    logic   [255:0] dfp_wdata;
    logic           dfp_resp;

    logic           initial_flag, initial_flag_reg;     // for initial read AND full_stall reads
    logic           full_stall;
    
    logic   [31:0]  bmem_raddr_dummy;

    /* CP2 SIGNALS */
    logic   [31:0]  inst;
    logic           rob_full;
    logic           iqueue_empty;
    logic   [4:0]   rd_dispatch, rs1, rs2;
    logic   [5:0]   pd_dispatch, ps1, ps2;
    logic           ps1_valid, ps2_valid;
    logic           regf_we_dispatch;
    logic   [5:0]   rob_num;
    logic   [4:0]   rd_rob;
    logic   [5:0]   pd_rob;
    logic           rob_valid;
    logic   [31:0]  reg_rs1_v, reg_rs2_v;
    logic   [5:0]   old_pd;
    logic           enqueue;
    logic   [5:0]   phys_reg;
    logic           dequeue_freelist;
    logic           is_free_list_empty;


    always_ff @(posedge clk) begin
        bmem_raddr_dummy <= bmem_raddr; // useless
        bmem_wdata <= '0;               // useless

        if (rst) begin
            pc <= 32'h1eceb000;
            initial_flag_reg <= '1;
            dfp_read_reg <= '0;

        end else begin
            pc <= pc_next;
            initial_flag_reg <= initial_flag;
            dfp_read_reg <= dfp_read;
        end
    end

    always_comb begin
        if (rst) begin
            pc_next = pc;
            initial_flag = '1;
            ufp_rmask = '0;
            bmem_read = '0;

        end else begin
            bmem_read = (!dfp_read_reg && dfp_read) ? '1 : '0;          // bmem_read high on rising dfp_read edge (DOESN'T MATCH TIMING DIAGRAM)

            if ((initial_flag_reg || ufp_resp) && !full_stall && bmem_ready) begin
                pc_next = pc + 4;
                initial_flag = '0;
                ufp_rmask = '1;

            end else begin
                if (full_stall || !bmem_ready) begin
                    pc_next = pc;
                    initial_flag = '1;
                    ufp_rmask = '0;
                end else begin
                    pc_next = pc;
                    initial_flag = '0;
                    ufp_rmask = '0;
                end
            end
        end
    end

    cache cache_i (
        .clk(clk),
        .rst(rst),

        .ufp_addr(pc),
        .ufp_rmask(ufp_rmask),
        .ufp_wmask('0),             // FILL WHEN WE WANT TO WRITE
        .ufp_rdata(ufp_rdata),
        .ufp_wdata('0),             // FILL WHEN WE WANT TO WRITE
        .ufp_resp(ufp_resp),

        .dfp_addr(bmem_addr),
        .dfp_read(dfp_read),
        .dfp_write(bmem_write),
        .dfp_rdata(cache_wdata),
        .dfp_wdata(dfp_wdata),             // FILL WHEN WE WANT TO WRITE
        .dfp_resp(cache_valid)
    );

    // outputs cache_valid if cache_wdata is ready
    cacheline_adapter cache_adapter_i (
        .clk(clk),
        .rst(rst),
        .bmem_rdata(bmem_rdata),
        .bmem_rvalid(bmem_rvalid),
        .cache_wdata(cache_wdata),
        .cache_valid(cache_valid)
    );

    queue #(.DATA_WIDTH(32), .QUEUE_DEPTH(64)) queue_i (
        .clk(clk),
        .rst(rst),
        .wdata_in(ufp_rdata),
        .enqueue_in(ufp_resp),
        .rdata_out(inst),
        .dequeue_in('0),
        .full_out(full_stall),
        .empty_out(iqueue_empty)
    );

    rename_dispatch rename_dispatch_i (
        .clk(clk),
        .rst(rst),
        .inst(inst),
        .rob_full(rob_full),
        .rs_full(),
        .is_iqueue_empty(iqueue_empty),
        .phys_reg(phys_reg),
        .is_free_list_empty(is_free_list_empty),
        .dequeue(dequeue_freelist),
        .rd(rd_dispatch),
        .rs1(rs1),
        .rs2(rs2),
        .pd(pd_dispatch),
        .ps1(ps1),
        .ps2(ps2),
        .ps1_valid(ps1_valid),
        .ps2_valid(ps2_valid),
        .regf_we(regf_we_dispatch),
        .rob_num(rob_num)
    );

    rat rat_i (
        .clk(clk),
        .rst(rst),
        .rd_dispatch(rd_dispatch),
        .rs1(rs1),
        .rs2(rs2),
        .rd_cdb(),
        .pd_dispatch(pd_dispatch),
        .pd_cdb(),
        .ps1(ps1),
        .ps2(ps2),
        .ps1_valid(ps1_valid),
        .ps2_valid(ps2_valid),
        .regf_we_dispatch(regf_we_dispatch),
        .regf_we_cdb()
    );

    rob rob_i (
        .clk(clk),
        .rst(rst),
        .phys_reg_in(pd_dispatch),
        .arch_reg_in(rd_dispatch),
        .enqueue_valid(regf_we_dispatch),
        .rob_idx_in(),  // FROM CDB
        .cdb_valid(),   // FROM CDB
        .rob_out({pd_rob, rd_rob}),
        .dequeue_valid(rob_valid),
        .rob_num(rob_num),
        .full(rob_full)
    );

    rrat rrat_i (
        .clk(clk),
        .rst(rst),
        .rd(rd_rob),
        .pd(pd_rob),
        .regf_we(rob_valid),
        .enqueue(enqueue), // FREE LIST
        .old_pd(old_pd)   // FREE LIST
    );

    phys_regfile phys_regfile_i (
        .clk(clk),
        .rst(rst),
        .regf_we(),
        .rd_v(),    
        .rs1_s(),
        .rs2_s(),
        .rd_s(),
        .rs1_v(reg_rs1_v),
        .rs2_v(reg_rs2_v)
    );

    fu_add fu_add_i (
        .clk(clk),
        .rst(rst),
        .rs1_v(reg_rs1_v),
        .rs2_v(reg_rs2_v),
        .decode_info(),
        .rd_v()
    );

    free_list free_list_i (
        .clk(clk),
        .rst(rst),
        .wdata_in(old_pd),
        .enqueue_in(enqueue),

        .rdata_out(phys_reg),
        .dequeue_in(dequeue_freelist),

        .full_out(),    // we don't really care about this
        .empty_out(is_free_list_empty)
    );

endmodule : cpu
