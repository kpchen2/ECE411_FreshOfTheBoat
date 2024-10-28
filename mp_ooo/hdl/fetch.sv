module fetch
import rv32i_types::*;
(
    input   logic   [31:0]      pc,

    output  logic   [31:0]      bmem_addr,
    output  logic               bmem_read,
    output  logic               bmem_write,
    output  logic   [63:0]      bmem_wdata
);
    always_comb begin
        bmem_addr = pc;
        bmem_read = 1'b1;
        bmem_write = 1'b0;
        bmem_wdata = '0;
    end

endmodule : fetch
