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
    logic           dfp_read;
    logic           dfp_write;
    logic   [255:0] dfp_rdata;
    logic   [255:0] dfp_wdata;
    logic           dfp_resp;

    logic           initial_flag, initial_flag_reg;     // for initial read AND full_stall reads
    logic           full_stall;
    
    logic           bmem_ready_dummy;
    logic   [31:0]  bmem_raddr_dummy;

    // assign ufp_addr = pc;
    // assign ufp_rmask = '1;
    // assign ufp_wmask = '0;
    // assign ufp_wdata = '0;

    always_ff @(posedge clk) begin
        bmem_ready_dummy <= bmem_ready;
        bmem_raddr_dummy <= bmem_raddr;

        if (rst) begin
            pc <= 32'h1eceb000;
            initial_flag_reg <= '1;

        end else begin
            pc <= pc_next;
            initial_flag_reg <= initial_flag;
        end
    end

    always_comb begin
        if (rst) begin
            pc_next = pc;
            initial_flag = '1;
            ufp_rmask = '0;

        end else begin
            if ((initial_flag_reg || ufp_resp) && !full_stall) begin
                pc_next = pc + 4;
                initial_flag = '0;
                ufp_rmask = '1;

            end else begin
                if (full_stall) begin
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

    // fetch fetch_i (
    //     .pc(pc),
    //     .bmem_addr(bmem_addr),
    //     .bmem_read(bmem_read),
    //     .bmem_write(bmem_write),
    //     .bmem_wdata(bmem_wdata)
    // );

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
        .dfp_read(bmem_read),
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

    queue queue_i (
        .clk(clk),
        .rst(rst),
        .wdata_in(ufp_rdata),
        .enqueue_in(ufp_resp),
        .rdata_out(),
        .dequeue_in('0),
        .full_out(full_stall),
        .empty_out()
    );

endmodule : cpu