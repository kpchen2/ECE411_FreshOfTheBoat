module fetch
import rv32i_types::*;
(
    input   logic   [31:0]      pc,

    output  logic   [31:0]      ufp_addr,
    output  logic   [3:0]       ufp_rmask,
    output  logic   [3:0]       ufp_wmask,
    output  logic   [31:0]      ufp_wdata
);
    always_comb begin
        ufp_addr = pc;
        ufp_rmask = 4'b1111;
        ufp_wmask = 4'b0000;
        ufp_wdata = '0;
    end

endmodule : fetch
