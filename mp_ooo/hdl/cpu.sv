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

    logic   [31:0]  pc;

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

    assign ufp_addr = pc;
    assign ufp_rmask = '1;
    assign ufp_wmask = '0;
    assign ufp_wdata = '0;

    always_ff @(posedge clk) begin
        if (rst) begin
            pc <= 32'h1eceb000;
        end else if (!bmem_ready) begin
            pc <= pc;
        end else begin
            pc <= pc + 4;
        end
    end

    fetch fetch_i (
        .*
    );

    cache cache_i (
        .clk(clk),
        .rst(rst),

        .ufp_addr(ufp_addr),
        .ufp_rmask(ufp_rmask),
        .ufp_wmask(ufp_wmask),
        .ufp_rdata(ufp_rdata),
        .ufp_wdata(ufp_wdata),
        .ufp_resp(ufp_resp),

        .dfp_addr(dfp_addr),
        .dfp_read(dfp_read),
        .dfp_write(dfp_write),
        .dfp_rdata(dfp_rdata),
        .dfp_wdata(dfp_wdata),
        .dfp_resp(dfp_resp)
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

endmodule : cpu