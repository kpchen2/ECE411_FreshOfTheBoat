module fu_div_rem
import rv32i_types::*;
#(
    parameter PHYS_REG_BITS = 6
)
(
    input   logic           clk,
    input   logic           rst,
    input   logic   [31:0]  rs1_v, rs2_v,
    input   decode_info_t   decode_info,
    output  logic   [31:0]  rd_v,
    input   logic           start
);

    logic signed   [31:0] as;
    logic signed   [31:0] bs;
    logic unsigned [31:0] au;
    logic unsigned [31:0] bu;

    logic   [31:0]  a;
    logic   [31:0]  b;

    logic   [31:0]  aluout;
    logic           br_en;

    logic           complete_inst;
    logic   [31:0]  quotient_inst, remainder_inst;

    assign as =   signed'(a);
    assign bs =   signed'(b);
    assign au = unsigned'(a);
    assign bu = unsigned'(b);

    DW_div_seq #(32, 32, 0, 3,
    0, 1, 1,
    0)
    U1 (.clk(clk),
    .rst_n(~rst),
    .hold(1'b0),
    .start(start),
    .a(a),
    .b(b),
    .complete(complete_inst),
    .divide_by_0(),
    .quotient(quotient_inst),
    .remainder(remainder_inst) );

    always_comb begin
        rd_v = '0;
        a = '0;
        b = '0;
        // TC = 1'b0;
        unique case (decode_info.opcode)
            op_b_reg : begin
                a = rs1_v;
                b = rs2_v;
                unique case (decode_info.funct3)
                    mult_div_f3_mul : begin
                        
                    end
                    mult_div_f3_mulh : begin

                    end
                    mult_div_f3_mulhsu : begin

                    end
                    mult_div_f3_mulhu : begin

                    end
                    mult_div_f3_div : begin
                        rd_v = quotient_inst;
                    end
                    mult_div_f3_divu : begin

                    end
                    mult_div_f3_rem : begin
                        rd_v = remainder_inst;
                    end
                    mult_div_f3_remu : begin

                    end
                    default : begin
                        
                    end
                endcase
            end
            default : begin
                // do nothing
            end
        endcase
    end

endmodule : fu_div_rem
