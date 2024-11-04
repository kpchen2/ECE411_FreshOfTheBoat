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
    logic   [31:0]  cdb_rd_v;
    logic   [5:0]   old_pd;
    logic           enqueue;
    logic   [5:0]   phys_reg;
    logic           dequeue;
    logic           is_free_list_empty;

    cdb_t           cdb_add, cdb_mul, cdb_div;
    decode_info_t   decode_info ;

    decode_info_t add_decode_info;
    decode_info_t multiply_decode_info;
    decode_info_t divide_decode_info;
    
    logic    add_fu_ready;
    logic multiply_fu_ready;
    logic divide_fu_ready;

    logic [5:0] add_rob_entry,
    logic [5:0] multiply_rob_entry,
    logic [5:0] divide_rob_entry,

    logic [5:0] add_pd,
    logic [5:0] multiply_pd,
    logic [5:0] divide_pd,

    logic [4:0] add_rd,
    logic [4:0 ] multiply_rd,
    logic [4:0] divide_rd,


    logic   [1:0]   rs_signal;

    logic           rs_add_full, rs_mul_full, rs_div_full;

    logic   [5:0]   ps1_out, ps2_out;
    logic           ps1_valid_out, ps2_valid_out;


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
        .dfp_wdata(dfp_wdata),      // FILL WHEN WE WANT TO WRITE
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
        .dequeue_in(dequeue),
        .full_out(full_stall),
        .empty_out(iqueue_empty)
    );

    rename_dispatch rename_dispatch_i (
        .inst(inst),
        .rob_full(rob_full),
        .rs_full_add(rs_add_full), .rs_full_mul(rs_mul_full), .rs_full_div(rs_div_full),        // FROM RS
        .is_iqueue_empty(iqueue_empty),
        .phys_reg(phys_reg),
        .is_free_list_empty(is_free_list_empty),
        .dequeue(dequeue),
        .rd(rd_dispatch),
        .rs1(rs1),
        .rs2(rs2),
        .pd(pd_dispatch),
        .ps1(ps1),
        .ps2(ps2),
        .ps1_valid(ps1_valid),
        .ps2_valid(ps2_valid),
        .ps1_out(ps1_out),
        .ps2_out(ps2_out),
        .ps1_valid(ps1_valid_out),
        .ps2_valid(ps2_valid_out),  // outputs into RS
        .regf_we(regf_we_dispatch),
        .rob_num(rob_num),
        .decode_info(decode_info),
        .rs_signal(rs_signal)
    );

    rat rat_i (
        .clk(clk),
        .rst(rst),
        .rd_dispatch(rd_dispatch),
        .rs1(rs1),
        .rs2(rs2),
        .rd_add(cdb_add.rd_s), .rd_mul(cdb_mul.rd_s), .rd_div(cdb_div.rd_s),         // FROM CDB
        .pd_dispatch(pd_dispatch),
        .pd_add(cdb_add.pd_s), .pd_mul(cdb_mul.pd_s), .pd_div(cdb_div.pd_s),         // FROM CDB
        .ps1(ps1),
        .ps2(ps2),
        .ps1_valid(ps1_valid),
        .ps2_valid(ps2_valid),
        .regf_we_dispatch(regf_we_dispatch),
        .regf_we_add(cdb_add.valid), .regf_we_mul(cdb_mul.valid), .regf_we_div(cdb_div.valid)      // FROM CDB
    );

    rob rob_i (
        .clk(clk),
        .rst(rst),
        .phys_reg_in(pd_dispatch),
        .arch_reg_in(rd_dispatch),
        .enqueue_valid(regf_we_dispatch),
        .add_rob_idx_in(),      // FROM CDB
        .add_cdb_valid(),       // FROM CDB
        .mul_rob_idx_in(),      // FROM CDB
        .mul_cdb_valid(),       // FROM CDB
        .div_rob_idx_in(),      // FROM CDB
        .div_cdb_valid(),       // FROM CDB
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
        .enqueue(enqueue),
        .old_pd(old_pd)
    );



    phys_regfile phys_regfile_i (
        .clk(clk),
        .rst(rst),
        .regf_we_add(cdb_add.valid), .regf_we_mul(cdb_mul.valid), .regf_we_div(cdb_div.valid),
        .rd_v_add(cdb_add.rd_v), .rd_v_mul(cdb_mul.rd_v), .rd_v_div(cdb_div.rd_v),
        .rs1_s(),           // RS
        .rs2_s(),           // RS
        .rd_add(cdb_add.pd_s), .rd_mul(cdb_mul.pd_s), .rd_div(cdb_div.pd_s),           // CDB
        .rs1_v(reg_rs1_v),
        .rs2_v(reg_rs2_v)
    );

    execute execute_i (
        .clk(clk),
        .rst(rst),
        .reg_rs1_v(), .reg_rs2_v(),                                     // RS
        .decode_info_add(add_decode_info), .decode_info_mul(multiply_decode_info), .decode_info_div(divide_decode_info),     // RS
        .start_add(add_fu_ready), .start_mul(multiply_fu_ready), .start_div(divide_fu_ready),                       // RS
        .rob_idx_add(add_rob_entry),                                                 // RS    
        .pd_s_add(add_pd),                                                    // RS
        .rd_s_add(add_rd),                                                    // RS
        .cdb_add(cdb_add),
        .rob_idx_mul(multiply_rob_entry),                                                 // RS
        .pd_s_mul(multiply_pd),                                                    // RS
        .rd_s_mul(multiply_rd),                                                    // RS
        .cdb_mul(cdb_mul),
        .rob_idx_div(divide_rob_entry),                                                 // RS
        .pd_s_div(divide_pd),                                                    // RS
        .rd_s_div(divide_rd),                                                    // RS
        .cdb_div(cdb_div)
    );

    reservation_station reservation_stations_i
    (
        .clk(clk),
        .rst(rst),
        .dispatch_valid(),
        .rs_select(rs_signal),
        .dispatch_ps_ready1(ps1_valid),
        .dispatch_ps_ready2(ps2_valid),
        .ps1(ps1),
        .ps2(ps2),
        .rd(rd_dispatch),
        .pd(pd_dispatch),
        .rob_entry(rob_num),
        .cdb_ps_id(),
        .decode_info_in(decode_info),
        
        .add_fu_busy(~cdb_add.valid),
        .multiply_fu_busy(~cdb_mul.valid),
        .divide_fu_busy(~cdb_div.valid),

        .add_regf_we(),
        .multiply_regf_we(),
        .divide_regf_we(),

        .add_fu_ready(),
        .divide_fu_ready(),
        .multiply_fu_ready,
        
        .add_rob_entry(),
        .multiply_rob_entry(),
        .divide_rob_entry(),

        .add_pd(),
        .multiply_pd(), 
        .divide_pd(),

        .add_rd(),
        .multiply_rd(),
        .divide_rd(),

        .add_full(rs_add_full),
        .multiply_full(   rs_mul_full   )
        ,.divide_full(rs_div_full),

        .add_decode_info_out(add_decode_info),
        .multiply_decode_info_out(multiply_decode_info),
        .divide_decode_info_out(divide_decode_info)
    )

endmodule : cpu
