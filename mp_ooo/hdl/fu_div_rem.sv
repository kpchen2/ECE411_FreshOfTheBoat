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

    logic   [31:0]  a;
    logic   [31:0]  b;

    logic   [32:0]  a_final, b_final;

    logic           complete_inst;
    logic   [32:0]  quotient_inst, remainder_inst;

    DW_div_seq #(33, 33, 1, 3,
    0, 1, 1,
    0)
    U1 (.clk(clk),
    .rst_n(~rst),
    .hold(1'b0),
    .start(start),
    .a(a_final),
    .b(b_final),
    .complete(complete_inst),
    .divide_by_0(),
    .quotient(quotient_inst),
    .remainder(remainder_inst) );

    always_comb begin
        rd_v = '0;
        a = '0;
        b = '0;
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
                        rd_v = quotient_inst[31:0];
                        a_final = {a[31], a};
                        b_final = {b[31], b};
                    end
                    mult_div_f3_divu : begin
                        rd_v = quotient_inst[31:0];
                        a_final = {1'b0, a};
                        b_final = {1'b0, b};
                    end
                    mult_div_f3_rem : begin
                        rd_v = remainder_inst[31:0];
                        a_final = {a[31], a};
                        b_final = {b[31], b};
                    end
                    mult_div_f3_remu : begin
                        rd_v = remainder_inst[31:0];
                        a_final = {1'b0, a};
                        b_final = {1'b0, b};
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
