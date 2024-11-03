module rrat
import rv32i_types::*;
#(
    parameter PHYS_REG_BITS = 6
)
(
    input   logic   clk, rst,
    input   logic   [4:0]   rd,
    input   logic   [PHYS_REG_BITS-1:0] pd,
    input   logic   regf_we,
    output  logic   enqueue,
    output  logic   [PHYS_REG_BITS-1:0] old_pd
);

    logic [PHYS_REG_BITS-1:0] rrat[32]; // holds mapping from arch register to phys register
    logic [PHYS_REG_BITS-1:0] rrat_init[32];
    logic [PHYS_REG_BITS-1:0] rrat_next[32];

    logic [5:0] temp;
    always_comb begin
        temp = 6'b0;
        for (int i = 0; i < 32; i++) begin
            rrat_init[i] = temp;
            temp = temp + 6'b000001;
        end
    end

    always_comb begin
        rrat_next = rrat;

        old_pd = regf_we ? rrat_next[rd] : '0;
        rrat_next[rd] = regf_we ? pd : rrat_next[rd];
        enqueue = regf_we;
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            rrat <= rrat_init;
        end else begin
            rrat <= rrat_next;
        end
    end

endmodule : rrat
