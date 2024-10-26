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
    logic [31:0] pc;

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
        .pc(pc),
        .bmem_addr(bmem_addr),
        .bmem_read(bmem_read),
        .bmem_write(bmem_write),
        .bmem_wdata(bmem_wdata)
    );

endmodule : cpu
