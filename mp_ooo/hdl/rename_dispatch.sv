module rename_dispatch
import rv32i_types::*;
#(
    parameter PHYS_REG_BITS = 6
)
(
    input   logic   [31:0]  inst,

    input   logic           rob_full, rs_full_add, rs_full_mul, rs_full_div, // May need to make multiple RS_full flags due to there being multiple stations

    input   logic           is_iqueue_empty,

    // to and from free list
    input   logic   [5:0]   phys_reg,
    input   logic           is_free_list_empty,
    output  logic           dequeue,

    // to and from RAT
    output  logic   [4:0]                   rd, rs1, rs2,
    output  logic   [PHYS_REG_BITS-1:0]     pd,
    input   logic   [PHYS_REG_BITS-1:0]     ps1, ps2,
    input   logic                           ps1_valid, ps2_valid,
    output  logic   [PHYS_REG_BITS-1:0]     ps1_out, ps2_out,
    output  logic                           ps1_valid_out, ps2_valid_out,
    output  logic                           regf_we,
    input   logic   [PHYS_REG_BITS-1:0]     rob_num,     // USE THIS SOMEWHERE,
    output  logic   [PHYS_REG_BITS-1:0]     rob_num_out,
    output  decode_info_t                   decode_info,
    output  logic   [1:0]                   rs_signal
);

    // decode_info_t decode_info;

    always_comb begin
        rd = '0;
        rs1 = '0;
        rs2 = '0;
        dequeue = 1'b0;
        rs_signal = 2'b00;
        decode_info = '0;

        ps1_out = ps1;
        ps2_out = ps2;
        ps1_valid_out = ps1_valid;
        ps2_valid_out = ps2_valid;

        rob_num_out = rob_num;

        if (inst[6:0] == op_b_reg && (inst[14:12] == mult_div_f3_mul || inst[14:12] == mult_div_f3_mulh || inst[14:12] == mult_div_f3_mulhsu || inst[14:12] == mult_div_f3_mulhu)) begin
            rs_signal = 2'b01;
        end else if (inst[6:0] == op_b_reg && (inst[14:12] == mult_div_f3_div || inst[14:12] == mult_div_f3_divu || inst[14:12] == mult_div_f3_rem || inst[14:12] == mult_div_f3_remu)) begin
            rs_signal = 2'b10;
        end

        // if free list empty, instruction queue empty, ROB full, corresponding RS full, don't process instruction
        if (!is_free_list_empty && !is_iqueue_empty && !rob_full && !((rs_full_add && rs_signal == 2'b00) || (rs_full_mul && rs_signal == 2'b01) || (rs_full_div && rs_signal == 2'b10))) begin
            dequeue = 1'b1;
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
            regf_we = 1'b1;

            rd = decode_info.rd_s;
            rs1 = decode_info.rs1_s;
            rs2 = decode_info.rs2_s;
        end
        regf_we = 1'b0;
        pd = phys_reg;
    end

endmodule : rename_dispatch
