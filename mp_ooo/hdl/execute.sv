module execute
import rv32i_types::*;
#(
    parameter PHYS_REG_BITS = 6
)
(
    input   logic           clk,
    input   logic           rst,
    input   logic   [31:0]  rs1_v_add, rs2_v_add, rs1_v_mul, rs2_v_mul, rs1_v_div, rs2_v_div,
    input   decode_info_t   decode_info_add, decode_info_mul, decode_info_div,
    input   logic           start_add, start_mul, start_div,

    // ADD PORTS
    input   logic   [5:0]   rob_idx_add,
    input   logic   [5:0]   pd_s_add,
    input   logic   [4:0]   rd_s_add,
    output  cdb_t           cdb_add,
    output  logic           busy_add,

    // MULT PORTS
    input   logic   [5:0]   rob_idx_mul,
    input   logic   [5:0]   pd_s_mul,
    input   logic   [4:0]   rd_s_mul,
    output  cdb_t           cdb_mul,
    output  logic           busy_mul,

    // DIV PORTS
    input   logic   [5:0]   rob_idx_div,
    input   logic   [5:0]   pd_s_div,
    input   logic   [4:0]   rd_s_div,
    output  cdb_t           cdb_div,
    output  logic           busy_div
);

    logic   valid_add, valid_mul, valid_div;
    // cdb_t   cdb_add, cdb_mul, cdb_div;

    logic   [5:0]   rob_add_reg, rob_mul_reg, rob_div_reg;
    logic   [5:0]   pd_add_reg, pd_mul_reg, pd_div_reg;
    logic   [4:0]   rd_add_reg, rd_mul_reg, rd_div_reg;

    logic   [31:0]  rd_v_add, rd_v_mul, rd_v_div;

    logic           mul_1, mul_2, mul_3, mul_4;
    logic           div_1, div_2, div_3, div_4;

    // logic           busy_add;

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
        end else if (start_mul) begin
            rob_mul_reg <= rob_idx_mul;
            pd_mul_reg <= pd_s_mul;
            rd_mul_reg <= rd_s_mul;
        end else if (start_div) begin
            rob_div_reg <= rob_idx_div;
            pd_div_reg <= pd_s_div;
            rd_div_reg <= rd_s_div;
        end
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            mul_1 <= 1'b0;
            mul_2 <= 1'b0;
            mul_3 <= 1'b0;
            mul_4 <= 1'b0;

            div_1 <= 1'b0;
            div_2 <= 1'b0;
            div_3 <= 1'b0;
            div_4 <= 1'b0;
        end else begin
            mul_1 <= start_mul;
            mul_2 <= mul_1;
            mul_3 <= mul_2;
            mul_4 <= mul_3;

            div_1 <= start_div;
            div_2 <= div_1;
            div_3 <= div_2;
            div_4 <= div_3;
        end
    end

    fu_add fu_add_i (
        .rs1_v(rs1_v_add),
        .rs2_v(rs2_v_add),
        .decode_info(decode_info_add),     // PHYS REGFILE
        .rd_v(rd_v_add),
        .start(start_add),
        .valid(valid_add),
        .busy(busy_add)
    );

    fu_mult fu_mul_i (
        .clk(clk),
        .rst(rst),
        .rs1_v(rs1_v_mul),
        .rs2_v(rs2_v_mul),
        .decode_info(decode_info_mul),     // PHYS REGFILE
        .rd_v(rd_v_mul),
        .start(start_mul),
        .valid(valid_mul),
        .hold(mul_1 || mul_2 || mul_3 || mul_4)
    );

    fu_div_rem fu_div_i (
        .clk(clk),
        .rst(rst),
        .rs1_v(rs1_v_div),
        .rs2_v(rs2_v_div),
        .decode_info(decode_info_div),     // PHYS REGFILE
        .rd_v(rd_v_div),
        .start(start_div),
        .valid(valid_div),
        .hold(div_1 || div_2 || div_3 || div_4)
    );

    always_comb begin
        busy_mul = mul_1 || mul_2 || mul_3 || mul_4;
        busy_div = div_1 || div_2 || div_3 || div_4;

        cdb_add.rob_idx = rob_idx_add;
        cdb_add.pd_s = pd_s_add;
        cdb_add.rd_s = rd_s_add;
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
