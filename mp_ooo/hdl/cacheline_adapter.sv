module cacheline_adapter
import rv32i_types::*;
(
    input   logic               clk,
    input   logic               rst,

    input   logic   [63:0]      bmem_rdata,
    input   logic               bmem_rvalid,
    output  logic   [255:0]     cache_wdata,
    output  logic               cache_valid
);

    logic   [1:0]   burst_num, burst_num_reg;
    logic   [255:0] cache_wdata_reg;

    always_ff @(posedge clk) begin
        if (rst) begin
            burst_num_reg <= '0;
            cache_wdata_reg <= '0;
        end else begin
            burst_num_reg <= burst_num;
            cache_wdata_reg <= cache_wdata;
        end
    end

    always_comb begin
        if (rst || !bmem_rvalid) begin
            cache_wdata = '0;
            cache_valid = '0;
            burst_num = '0;

        end else begin
            cache_wdata = cache_wdata_reg;
            cache_wdata[burst_num_reg * 64 +: 64] = bmem_rdata;
            burst_num = burst_num_reg + 2'b01;

            cache_valid = (burst_num_reg == 3) ? '1 : '0;
        end
    end

endmodule : cacheline_adapter