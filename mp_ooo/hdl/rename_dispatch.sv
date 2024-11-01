module rename_dispatch
import rv32i_types::*;
#(
    parameter PHYS_REG_BITS = 6
)
(
    input   logic   clk, rst,
    input   logic   [31:0]  inst,

    // to and from free list
    input   logic   [5:0]   phys_reg,
    input   logic           is_empty,
    output  logic           dequeue,

    // to and from RAT
    output  logic   [4:0]                   rd, rs1, rs2,
    output  logic   [PHYS_REG_BITS-1:0]     pd,
    input   logic   [PHYS_REG_BITS-1:0]     ps1, ps2,
    input   logic                           ps1_valid, ps2_valid,
    output  logic                           regf_we
);

    decode_info_t decode_info;

    always_comb begin
        if (!is_empty) begin
            decode_info.funct3 = inst[14:12];
            decode_info.funct7 = inst[31:25];
            decode_info.opcode = inst[6:0];
            decode_info.i_imm  = {{21{inst[31]}}, inst[30:20]};
            decode_info.s_imm  = {{21{inst[31]}}, inst[30:25], inst[11:7]};
            decode_info.b_imm  = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
            decode_info.u_imm  = {inst[31:12], 12'h000};
            decode_info.j_imm  = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:21], 1'b0};
            decode_info.rd_s   = inst[11:7];
            decode_info.rs1_s  = inst[19:15];
            decode_info.rs2_s  = inst[24:20];
        end

        pd = ps2;
    end

endmodule : rename_dispatch
