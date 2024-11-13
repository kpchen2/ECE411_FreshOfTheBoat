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
    logic           i_ufp_resp;

    logic   [31:0]  dfp_addr;
    logic           dfp_read, dfp_read_reg;
    logic           dfp_write;
    logic   [255:0] dfp_rdata;
    logic   [255:0] dfp_wdata;
    logic           dfp_resp;

    logic   [31:0]  d_dfp_addr; // have to get from load
    logic           d_dfp_read, d_dfp_read_reg; // have to get from load
    logic           d_dfp_write;     // have to get from load
    logic   [255:0] d_dfp_rdata;    // have to get from arbiter
    logic   [255:0] d_dfp_wdata;    // have to get from store
    logic           d_dfp_resp;     // have to get from arbiter

    logic   [31:0]  mem_addr;       // from a load or store
    logic   [3:0]   load_rmask;     // from a load 
    logic   [3:0]   store_wmask;    // from a store
    logic   [31:0]  load_rdata;     // from a load
    logic   [31:0]  store_wdata;    // from a store
    logic           d_ufp_resp;     // data cache should output this

    logic           initial_flag, initial_flag_reg;     // for initial read AND full_stall reads
    logic           full_stall;
    
    logic   [31:0]  bmem_raddr_dummy;
    logic   [255:0] full_burst;
    logic           mem_valid;    

    /* CP2 SIGNALS */
    logic   [31:0]  inst;
    logic           rob_full;
    logic           iqueue_empty;
    logic   [4:0]   rd_dispatch, rs1, rs2;
    logic   [5:0]   pd_dispatch, ps1, ps2;
    logic           ps1_valid, ps2_valid;
    logic           regf_we_dispatch;
    logic   [5:0]   rob_num, rob_num_out;
    logic   [4:0]   rd_rob;
    logic   [5:0]   pd_rob;
    logic           rob_valid;
    logic   [31:0]  cdb_rd_v;
    logic   [5:0]   old_pd;
    logic           enqueue;
    logic   [5:0]   phys_reg;
    logic           dequeue;
    logic           is_free_list_empty;

    cdb_t           cdb_add, cdb_mul, cdb_div ,cdb_mem, cdb_branch;
    decode_info_t   decode_info ;

    decode_info_t add_decode_info;
    decode_info_t multiply_decode_info;
    decode_info_t divide_decode_info;
    decode_info_t mem_decode_info;
    decode_info_t branch_decode_info;

    logic    add_fu_ready;
    logic multiply_fu_ready;
    logic divide_fu_ready;
    logic mem_fu_ready;
    logic branch_fu_ready;

    logic [5:0] add_rob_entry;
    logic [5:0] multiply_rob_entry;
    logic [5:0] divide_rob_entry;
    logic [5:0] mem_rob_entry;
    logic [5:0] branch_rob_entry;


    logic [5:0] add_pd;
    logic [5:0] multiply_pd;
    logic [5:0] divide_pd;
    logic [5:0] mem_pd;
    logic [5:0] branch_pd;

    logic [4:0] add_rd;
    logic [4:0 ] multiply_rd;
    logic [4:0] divide_rd;
    logic [4:0] mem_rd;
    logic [4:0] branch_rd;


    logic   [1:0]   rs_signal;

    logic           rs_add_full, rs_mul_full, rs_div_full, rs_mem_full, rs_branch_full;

    logic   [5:0]   ps1_out, ps2_out;
    logic           ps1_valid_out, ps2_valid_out;

    logic   [31:0]  rs1_v_add, rs1_v_mul, rs1_v_div, rs2_v_add, rs2_v_mul, rs2_v_div;

    logic   [5:0]   add_ps1, add_ps2, multiply_ps1, multiply_ps2, divide_ps1, divide_ps2;
    
    rob_entry_t rob_entry;

    logic [63:0] order;
    logic [63:0] order_next;

    logic full_garbage;
    logic empty_garbage;

    
    logic [31:0] prog;

    logic  [31:0]                    dispatch_pc_rdata;
    logic  [31:0]                    dispatch_pc_wdata;
    logic  [63:0]                    dispatch_order;
    logic  [4:0]                     dispatch_rs1_s;
    logic  [4:0]                     dispatch_rs2_s;
    logic  [31:0]                    dispatch_inst;
    logic                            dispatch_regf_we;
    
    assign mem_addr = '0;   
    assign load_rmask = '0; 
    assign store_wmask = '0;
    assign store_wdata = '0;
     // do this for now, NEED RELEVANT MEM DATA LATER


    always_ff @(posedge clk) begin

        bmem_raddr_dummy <= bmem_raddr; // useless
        // bmem_wdata <= '0;               // useless

        if (rst) begin
            pc <= 32'h1eceb000;
            initial_flag_reg <= '1;
            dfp_read_reg <= '0;
            order  <= '0;
        end else begin
            pc <= pc_next;
            initial_flag_reg <= initial_flag;
            dfp_read_reg <= dfp_read;
            order <= order_next;
        end
    end

    always_comb begin
        if (rst) begin
            pc_next = pc;
            initial_flag = '1;
            ufp_rmask = '0;
            // bmem_read = '0;
            

        end else begin
            // bmem_read = (!dfp_read_reg && dfp_read) ? '1 : '0;          // bmem_read high on rising dfp_read edge (DOESN'T MATCH TIMING DIAGRAM)

            if ((initial_flag_reg || i_ufp_resp) && !full_stall && bmem_ready) begin
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
        .ufp_resp(i_ufp_resp),

        .dfp_addr(dfp_addr),
        .dfp_read(dfp_read),
        .dfp_write(dfp_write),
        .dfp_rdata(cache_wdata),
        .dfp_wdata(dfp_wdata),      // FILL WHEN WE WANT TO WRITE
        .dfp_resp(cache_valid)
    );

    cache cache_d (
        .clk(clk),
        .rst(rst),

        .ufp_addr(mem_addr),
        .ufp_rmask(load_rmask),
        .ufp_wmask(store_wmask),
        .ufp_rdata(load_rdata),
        .ufp_wdata(store_wdata),
        .ufp_resp(d_ufp_resp),

        .dfp_addr(d_dfp_addr),
        .dfp_read(d_dfp_read),
        .dfp_write(d_dfp_write),
        .dfp_rdata(d_dfp_rdata),        // CONNECT TO BMEM
        .dfp_wdata(d_dfp_wdata),
        .dfp_resp(d_dfp_resp)           // CONNECT TO BMEM
    );

    // memory_queue memory_queue_i (
    //     .clk(clk),
    //     .rst(rst),
    //     .opcode(),
    //     .phys_reg_in(),
    //     .enqueue_valid(),
    //     .rob_num(),
    //     .addr(),
    //     .addr_valid(),
    //     .mem_idx_in(),
    //     .commited_rob(),
    //     .commited_rob_valid(),
    //     .data_in(),
    //     .data_valid(),
    //     .rd_v(),
        
    //     .phys_reg_out(),
    //     .output_valid(),
    //     .data_out(),
    //     .full(),
    //     .mem_idx_out(),
    //     .d_addr(),
    //     .d_rmask(),
    //     .d_wmask(),
    //     .d_wdata(),
    //     .rd_s()
    // );

    cache_arbiter arbiter (
        .clk(clk),
        .rst(rst),
        .i_dfp_addr(dfp_addr),
        .i_dfp_read(dfp_read),
        .i_dfp_rdata(dfp_rdata),
        .i_dfp_resp(dfp_resp),

        .d_dfp_addr(d_dfp_addr),
        .d_dfp_read(d_dfp_read),
        .d_dfp_write(d_dfp_write),
        .d_dfp_rdata(d_dfp_rdata),
        .d_dfp_wdata(d_dfp_wdata),
        .d_dfp_resp(d_dfp_resp),

        .bmem_addr(bmem_addr),
        .bmem_read(bmem_read),
        .mem_valid(mem_valid),
        .full_burst(full_burst),
        .bmem_ready(bmem_ready),

        .cache_wdata(cache_wdata),
        .cache_valid(cache_valid)
    );

    // outputs cache_valid if cache_wdata is ready
    cacheline_adapter cache_adapter_i (
        .clk(clk),
        .rst(rst),
        .bmem_rdata(bmem_rdata),
        .bmem_rvalid(bmem_rvalid),
        .full_burst(full_burst),
        .mem_valid(mem_valid),
        .cache_wdata(cache_wdata),
        .cache_valid(cache_valid),
        .bmem_wdata(bmem_wdata),
        .bmem_write(bmem_write)
    );

    queue #(.DATA_WIDTH(32), .QUEUE_DEPTH(64)) queue_i (
        .clk(clk),
        .rst(rst),
        .wdata_in(ufp_rdata),
        .enqueue_in(i_ufp_resp),
        .rdata_out(inst),
        .dequeue_in(dequeue),
        .full_out(full_stall),
        .empty_out(iqueue_empty)
    );

    queue #(.DATA_WIDTH(32), .QUEUE_DEPTH(64)) queue_pc
    (
        .clk(clk),
        .rst(rst),
        .wdata_in(pc),
        .enqueue_in(i_ufp_resp),
        .rdata_out(prog),
        .dequeue_in(dequeue),
        .full_out(full_garbage),
        .empty_out(empty_garbage)
    );

    rename_dispatch rename_dispatch_i (
        .clk(clk),
        .rst(rst),
        .inst(inst),
        .prog(prog),
        .rob_full(rob_full),
        .rs_full_add(rs_add_full), .rs_full_mul(rs_mul_full), .rs_full_div(rs_div_full),
        .is_iqueue_empty(iqueue_empty),
        .phys_reg(phys_reg),
        .is_free_list_empty(is_free_list_empty),
        .order(order),
        .dequeue(dequeue),
        .order_next(order_next),
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
        .ps1_valid_out(ps1_valid_out),
        .ps2_valid_out(ps2_valid_out),
        .regf_we(regf_we_dispatch),
        .rob_num(rob_num),
        .rob_num_out(rob_num_out),
        .decode_info(decode_info),
        .rs_signal(rs_signal),
        .dispatch_pc_rdata(dispatch_pc_rdata),
        .dispatch_pc_wdata(dispatch_pc_wdata),
        .dispatch_order(dispatch_order),
        .dispatch_rs1_s(dispatch_rs1_s),
        .dispatch_rs2_s(dispatch_rs2_s),
        .dispatch_inst(dispatch_inst),
        .dispatch_regf_we(dispatch_regf_we)
    );

    rat rat_i (
        .clk(clk),
        .rst(rst),
        .rd_dispatch(rd_dispatch),
        .rs1(rs1), .rs2(rs2),
        .rd_add(cdb_add.rd_s), .rd_mul(cdb_mul.rd_s), .rd_div(cdb_div.rd_s),
        .pd_dispatch(pd_dispatch),
        .pd_add(cdb_add.pd_s), .pd_mul(cdb_mul.pd_s), .pd_div(cdb_div.pd_s),
        .ps1(ps1),
        .ps2(ps2),
        .ps1_valid(ps1_valid),
        .ps2_valid(ps2_valid),
        .regf_we_dispatch(regf_we_dispatch),
        .regf_we_add(cdb_add.valid), .regf_we_mul(cdb_mul.valid), .regf_we_div(cdb_div.valid),
        .decode_info(decode_info)
    );

    rob rob_i (
        .clk(clk),
        .rst(rst),
        .phys_reg_in(pd_dispatch),
        .arch_reg_in(rd_dispatch),
        .enqueue_valid(regf_we_dispatch),
        .pc_rdata(dispatch_pc_rdata),
        .pc_wdata(dispatch_pc_wdata),
        .order(dispatch_order),
        .rs1_s(dispatch_rs1_s),
        .rs2_s(dispatch_rs2_s),
        .inst(dispatch_inst),
        .regf_we(dispatch_regf_we),
        .add_rob_idx_in(cdb_add.rob_idx),
        .add_cdb_valid(cdb_add.valid),
        .add_inst(cdb_add.inst),
        .mul_rob_idx_in(cdb_mul.rob_idx),
        .mul_cdb_valid(cdb_mul.valid),
        .mul_inst(cdb_mul.inst),
        .div_rob_idx_in(cdb_div.rob_idx),
        .div_cdb_valid(cdb_div.valid),
        .div_inst(cdb_div.inst),


        .add_rs1_rdata(rs1_v_add),
        .add_rs2_rdata(rs2_v_add),
        .add_rd_wdata(cdb_add.rd_v),

        .multiply_rs1_rdata(rs1_v_mul),
        .multiply_rs2_rdata(rs2_v_mul),
        .multiply_rd_wdata(cdb_mul.rd_v),

        .divide_rs1_rdata(rs1_v_div),
        .divide_rs2_rdata(rs2_v_div),
        .divide_rd_wdata(cdb_div.rd_v),

        .monitor_mem_addr('0),
        .monitor_mem_rmask('0),
        .monitor_mem_wmask('0),
        .monitor_mem_rdata('0),
        .monitor_mem_wdata('0),
        .rob_out(rob_entry),
        .dequeue_valid(rob_valid),
        .rob_num(rob_num),
        .full(rob_full)
    );
    
    rrat rrat_i (
        .clk(clk),
        .rst(rst),
        .rd(rob_entry.rvfi.monitor_rd_addr),
        .pd(rob_entry.pd),
        .regf_we(rob_valid),
        .enqueue(enqueue),
        .old_pd(old_pd)
    );

    free_list free_list_i (
        .clk(clk),
        .rst(rst),
        .wdata_in(old_pd),
        .enqueue_in(enqueue),
        .rdata_out(phys_reg),
        .dequeue_in(dequeue),
        .empty_out(is_free_list_empty)
    );

    phys_regfile phys_regfile_i (
        .clk(clk),
        .rst(rst),
        .regf_we_add(cdb_add.valid), .regf_we_mul(cdb_mul.valid), .regf_we_div(cdb_div.valid),
        .rd_v_add(cdb_add.rd_v), .rd_v_mul(cdb_mul.rd_v), .rd_v_div(cdb_div.rd_v),
        .rs1_add(add_ps1), .rs1_mul(multiply_ps1), .rs1_div(divide_ps1),          // SHOULD BE PS
        .rs2_add(add_ps2), .rs2_mul(multiply_ps2), .rs2_div(divide_ps2),          // SHOULD BE PS
        .rd_add(cdb_add.pd_s), .rd_mul(cdb_mul.pd_s), .rd_div(cdb_div.pd_s),
        .rs1_v_add(rs1_v_add), .rs1_v_mul(rs1_v_mul), .rs1_v_div(rs1_v_div),
        .rs2_v_add(rs2_v_add), .rs2_v_mul(rs2_v_mul), .rs2_v_div(rs2_v_div),
        .arch_s1_add(add_decode_info.rs1_s), .arch_s2_add(add_decode_info.rs2_s), .arch_rd_add(cdb_add.rd_s), .arch_rd_mul(cdb_mul.rd_s), .arch_rd_div(cdb_div.rd_s)
    );

    logic   start_add, start_mul, start_div;

    logic   busy_add, busy_mul, busy_div;

    execute execute_i (
        .clk(clk),
        .rst(rst),
        .rs1_v_add(rs1_v_add), .rs2_v_add(rs2_v_add), .rs1_v_mul(rs1_v_mul), .rs2_v_mul(rs2_v_mul), .rs1_v_div(rs1_v_div), .rs2_v_div(rs2_v_div),
        .decode_info_add(add_decode_info), .decode_info_mul(multiply_decode_info), .decode_info_div(divide_decode_info),
        .start_add(start_add), .start_mul(start_mul), .start_div(start_div),
        .busy_add(busy_add), .busy_mul(busy_mul), .busy_div(busy_div),
        .rob_idx_add(add_rob_entry),
        .pd_s_add(add_pd),
        .rd_s_add(add_rd),
        .cdb_add(cdb_add),
        .rob_idx_mul(multiply_rob_entry),
        .pd_s_mul(multiply_pd),
        .rd_s_mul(multiply_rd),
        .cdb_mul(cdb_mul),
        .rob_idx_div(divide_rob_entry),
        .pd_s_div(divide_pd),
        .rd_s_div(divide_rd),
        .cdb_div(cdb_div)
    );

    reservation_station reservation_stations_i
    (
        .clk(clk),
        .rst(rst),
        .dispatch_valid(regf_we_dispatch),
        .rs_select(rs_signal),
        .dispatch_ps_ready1(ps1_valid),
        .dispatch_ps_ready2(ps2_valid),
        .ps1(ps1),
        .ps2(ps2),
        .rd(rd_dispatch),
        .pd(pd_dispatch),
        .rob_entry(rob_num),
        .cdb_ps_id_add(cdb_add.pd_s),
        .cdb_ps_id_multiply(cdb_mul.pd_s),
        .cdb_ps_id_divide(cdb_div.pd_s),
        .decode_info_in(decode_info),
        
        .add_fu_busy('0),     // WAS SET TO BUSY_ADD
        .multiply_fu_busy(busy_mul),
        .divide_fu_busy(busy_div),

        // .add_regf_we(),
        // .multiply_regf_we(),
        // .divide_regf_we(),


        .add_fu_ready(start_add),
        .multiply_fu_ready(start_mul),
        .divide_fu_ready(start_div),
        
        .add_rob_entry(add_rob_entry),
        .multiply_rob_entry(multiply_rob_entry),
        .divide_rob_entry(divide_rob_entry),

        .add_pd(add_pd),
        .multiply_pd(multiply_pd), 
        .divide_pd(divide_pd),

        .add_rd(add_rd),
        .multiply_rd(multiply_rd),
        .divide_rd(divide_rd),

        .add_full(rs_add_full),
        .multiply_full(rs_mul_full),
        .divide_full(rs_div_full),

        .add_decode_info_out(add_decode_info),
        .multiply_decode_info_out(multiply_decode_info),
        .divide_decode_info_out(divide_decode_info),

        .add_ps1(add_ps1),
        .add_ps2(add_ps2),
        .multiply_ps1(multiply_ps1),
        .multiply_ps2(multiply_ps2),
        .divide_ps1(divide_ps1),
        .divide_ps2(divide_ps2),

        .regf_we_add(cdb_add.valid),
        .regf_we_mul(cdb_mul.valid),
        .regf_we_div(cdb_div.valid)
    );

endmodule : cpu
