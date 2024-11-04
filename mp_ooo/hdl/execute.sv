module execute
import rv32i_types::*;
#(
    parameter PHYS_REG_BITS = 6
)
(
    input   logic           clk,
    input   logic           rst,
    input   logic   [31:0]  reg_rs1_v, reg_rs2_v,
    input   decode_info_t   decode_info,
    input   logic   [31:0]  cdb_rd_v,
    input   logic           start_add, start_mul, start_div,

    // ADD PORTS
    input   logic   [5:0]   rob_idx_add,
    input   logic   [5:0]   pd_s_add,
    input   logic   [4:0]   rd_s_add,
    output  cdb_t           cdb_add,

    // MULT PORTS
    input   logic   [5:0]   rob_idx_mul,
    input   logic   [5:0]   pd_s_mul,
    input   logic   [4:0]   rd_s_mul,
    output  cdb_t           cdb_mul,

    // DIV PORTS
    input   logic   [5:0]   rob_idx_div,
    input   logic   [5:0]   pd_s_div,
    input   logic   [4:0]   rd_s_div,
    output  cdb_t           cdb_div
);

    logic   valid_add, valid_mul, valid_div;
    // cdb_t   cdb_add, cdb_mul, cdb_div;

    logic   [5:0]   rob_add_reg, rob_mul_reg, rob_div_reg;
    logic   [5:0]   pd_add_reg, pd_mul_reg, pd_div_reg;
    logic   [4:0]   rd_add_reg, rd_mul_reg, rd_div_reg;

    logic   [31:0]  rd_v_add, rd_v_mul, rd_v_div;

    always_ff @(posedge clk) begin
        if (rst) begin
            rob_add_reg <= '0;
            pd_add_reg <= '0;
            rd_add_reg <= '0;
            rob_mul_reg <= '0;
            pd_mul_reg <= '0;
            rd_mul_reg <= '0;
            rob_div_reg <= '0;
            pd_div_reg <= '0;
            rd_div_reg <= '0;
        end else if (valid_add) begin
            rob_add_reg <= rob_idx_add;
            pd_add_reg <= pd_s_add;
            rd_add_reg <= rd_s_add;
        end else if (valid_mul) begin
            rob_mul_reg <= rob_idx_mul;
            pd_mul_reg <= pd_s_mul;
            rd_mul_reg <= rd_s_mul;
        end else if (valid_div) begin
            rob_div_reg <= rob_idx_div;
            pd_div_reg <= pd_s_div;
            rd_div_reg <= rd_s_div;
        end
    end

    fu_add fu_add_i (
        .clk(clk),
        .rst(rst),
        .rs1_v(reg_rs1_v),
        .rs2_v(reg_rs2_v),
        .decode_info(decode_info),     // PHYS REGFILE
        .rd_v(rd_v_add),
        .start(start_add),
        .valid(valid_add)
    );

    fu_mult fu_mul_i (
        .clk(clk),
        .rst(rst),
        .rs1_v(reg_rs1_v),
        .rs2_v(reg_rs2_v),
        .decode_info(decode_info),     // PHYS REGFILE
        .rd_v(rd_v_mul),
        .start(start_mul),
        .valid(valid_mul)
    );

    fu_div_rem fu_div_i (
        .clk(clk),
        .rst(rst),
        .rs1_v(reg_rs1_v),
        .rs2_v(reg_rs2_v),
        .decode_info(decode_info),     // PHYS REGFILE
        .rd_v(rd_v_div),
        .start(start_div),
        .valid(valid_div)
    );

    always_comb begin
        cdb_add.rob_idx = rob_add_reg;
        cdb_add.pd_s = pd_add_reg;
        cdb_add.rd_s = rd_add_reg;
        cdb_add.rd_v = rd_v_add;
        cdb_add.valid = valid_add;

        cdb_mul.rob_idx = rob_mul_reg;
        cdb_mul.pd_s = pd_mul_reg;
        cdb_mul.rd_s = rd_mul_reg;
        cdb_mul.rd_v = rd_v_mul;
        cdb_mul.valid = valid_mul;

        cdb_div.rob_idx = rob_div_reg;
        cdb_div.pd_s = pd_div_reg;
        cdb_div.rd_s = rd_div_reg;
        cdb_div.rd_v = rd_v_div;
        cdb_div.valid = valid_div;
    end

endmodule : execute
