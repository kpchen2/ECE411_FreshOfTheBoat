module fu_br
import rv32i_types::*;
#(
    parameter PHYS_REG_BITS = 6
)
(
    input   logic   [31:0]  rs1_v, rs2_v,
    input   decode_info_t   decode_info,
    output  logic   [31:0]  rd_v,
    input   logic           start,
    output  logic           valid,
    output  logic           busy,
    output  logic           pc_select,
    output  logic   [31:0]  pc_branch,
    output  logic           btb_web,
    output  logic   [7:0]   btb_addr,
    output  logic   [31:0]  btb_din,
    output  logic   [7:0]   lht_in
);

    logic signed   [31:0] as;
    logic signed   [31:0] bs;
    logic unsigned [31:0] au;
    logic unsigned [31:0] bu;

    logic   [31:0]  a;
    logic   [31:0]  b;

    logic   [2:0]   cmpop;

    logic   [31:0]  aluout;
    logic           br_en;

    logic   [31:0]  temp_pc_branch;
    logic           temp_pc_select;

    assign as =   signed'(a);
    assign bs =   signed'(b);
    assign au = unsigned'(a);
    assign bu = unsigned'(b);

    always_comb begin
        unique case (cmpop)
            branch_f3_beq : br_en = (au == bu);
            branch_f3_bne : br_en = (au != bu);
            branch_f3_blt : br_en = (as <  bs);
            branch_f3_bge : br_en = (as >=  bs);
            branch_f3_bltu: br_en = (au <  bu);
            branch_f3_bgeu: br_en = (au >=  bu);
            default       : br_en = 1'bx;
        endcase
    end

    always_comb begin
        rd_v = '0;
        a = '0;
        b = '0;
        cmpop = '0;
        valid = 1'b0;
        busy = 1'b0;
        pc_select = '0;
        temp_pc_branch = '0;
        temp_pc_select = '0;
        if (start) begin
            valid = 1'b1;
            busy = 1'b1;
            unique case (decode_info.opcode)
                op_b_jal  : begin
                    rd_v = decode_info.pc + 'd4;
                    temp_pc_select = '1;
                    temp_pc_branch = decode_info.pc + decode_info.j_imm;
                end
                op_b_jalr : begin
                    rd_v = decode_info.pc + 'd4;
                    temp_pc_select = '1;
                    temp_pc_branch = (rs1_v + decode_info.i_imm) & 32'hfffffffe;
                end
                op_b_br   : begin
                    cmpop = decode_info.funct3;
                    a = rs1_v;
                    b = rs2_v;
                    if (br_en) begin
                        temp_pc_select = '1;
                        temp_pc_branch = decode_info.pc + decode_info.b_imm;
                    end else begin
                        temp_pc_select = '0;
                    end                    
                end
                default : begin
                    // do nothing
                end
            endcase
        end

        btb_web = '1;
        btb_addr = '0;
        btb_din = '0;

        if (~decode_info.lht_valid) begin
            lht_in = '0;
            lht_in[0] = temp_pc_select;
        end else begin
            lht_in[7:1] = decode_info.lht_true[6:0];
            lht_in[0] = temp_pc_select;
        end
        
        if (temp_pc_select) begin
            btb_web = '0;
            btb_addr = decode_info.pc[9:2];
            btb_din = temp_pc_branch;
            pc_select = temp_pc_select;
        end

        if (decode_info.bp && temp_pc_select && decode_info.bp_addr == temp_pc_branch) begin
            pc_select = '0;
            pc_branch = '0;
        end else if (decode_info.bp && ~temp_pc_select) begin
            pc_select = '1;
            pc_branch = decode_info.pc + 32'd4;
        end else begin
            pc_select = temp_pc_select;
            pc_branch = temp_pc_branch;
        end
    end

endmodule : fu_br