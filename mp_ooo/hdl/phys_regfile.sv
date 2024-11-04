module phys_regfile
import rv32i_types::*;
#(
    parameter PHYS_REG_BITS = 6
)
(
    input   logic           clk,
    input   logic           rst,
    input   logic           regf_we_add, regf_we_mul, regf_we_div,
    input   logic   [31:0]  rd_v_add, rd_v_mul, rd_v_div,
    input   logic   [PHYS_REG_BITS-1:0]   rs1_add, rs2_add, rs1_mul, rs2_mul, rs1_div, rs2_div, rd_add, rd_mul, rd_div,
    output  logic   [31:0]  rs1_v_add, rs2_v_add, rs1_v_mul, rs2_v_mul, rs1_v_div, rs2_v_div
);

            logic   [31:0]  data [2**PHYS_REG_BITS];

    always_ff @(posedge clk) begin
        if (rst) begin
            for (int i = 0; i < 32; i++) begin
                data[i] <= '0;
            end
        end
        
        if (!rst && (regf_we_add && (rd_add != 0))) begin
            data[rd_add] <= rd_v_add;
        end

        if (!rst && (regf_we_mul && (rd_mul != 0))) begin
            data[rd_mul] <= rd_v_mul;
        end

        if (!rst && (regf_we_div && (rd_div != 0))) begin
            data[rd_div] <= rd_v_div;
        end
    end

    // always_ff @(posedge clk) begin
    //     if (rst) begin
    //         rs1_v <= 'x;
    //         rs2_v <= 'x;
    //     end else begin
    //         rs1_v <= (rs1_s != 5'd0) ? data[rs1_s] : '0;
    //         rs2_v <= (rs2_s != 5'd0) ? data[rs2_s] : '0;
    //     end
    // end
    always_comb begin
        rs1_v_add = (rs1_add != 0) ? data[rs1_add] : '0;
        rs2_v_add = (rs2_add != 0) ? data[rs2_add] : '0;

        rs1_v_mul = (rs1_mul != 0) ? data[rs1_mul] : '0;
        rs2_v_mul = (rs2_mul != 0) ? data[rs2_mul] : '0;

        rs1_v_div = (rs1_div != 0) ? data[rs1_div] : '0;
        rs2_v_div = (rs2_div != 0) ? data[rs2_div] : '0;
    end

endmodule : phys_regfile
