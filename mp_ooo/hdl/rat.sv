module rat
import rv32i_types::*;
#(
    parameter PHYS_REG_BITS = 6
)
(
    input   logic   clk, rst,
    input   logic   [4:0]   rd_dispatch, rs1, rs2, rd_cdb,

    input   logic   [PHYS_REG_BITS-1:0]     pd_dispatch, pd_cdb,
    output  logic   [PHYS_REG_BITS-1:0]     ps1, ps2,
    output  logic   ps1_valid, ps2_valid,

    input   logic   regf_we_dispatch, regf_we_cdb
);

    logic [PHYS_REG_BITS-1:0] rat[32]; // holds mapping from arch register to phys register
    logic valid[32];

    logic [PHYS_REG_BITS-1:0] rat_init[32];

    logic [PHYS_REG_BITS-1:0] rat_next[32];
    logic valid_next[32];
    logic valid_init[32];

    logic [5:0] temp;
    always_comb begin
        temp = 6'b0;
        for (int i = 0; i < 32; i++) begin
            rat_init[i] = temp;
            valid_init[i] = 1'b1;
            temp = temp + 6'b000001;
        end
    end

    always_comb begin
        rat_next = rat;
        valid_next = valid;

        // Renames rd to pd, marking invalid
        if (regf_we_dispatch) begin
            rat_next[rd_dispatch] = pd_dispatch;
            valid_next[rd_dispatch] = 1'b0;
        end

        // Map arch sources to phys sources
        ps1 = rat[rs1];
        ps2 = rat[rs2];
        ps1_valid = valid[rs1];
        ps2_valid = valid[rs2];

        // CDB: set entry rd to valid if it still maps to pd
        if (regf_we_cdb && pd_cdb == rat[rd_cdb]) begin
            valid_next[rd_cdb] = 1'b1;
        end
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            rat <= rat_init;
            valid <= valid_init;
        end else begin
            rat <= rat_next;
            valid <= valid_next;
        end
    end

endmodule : rat
