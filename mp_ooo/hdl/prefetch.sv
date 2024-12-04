module prefetch
import rv32i_types::*;

(
    input   logic           clk, rst,
    input   logic   [31:0]  pc,
    input   logic           dfp_read,

    output  logic           prefetch_valid,
    output  logic   [31:0]  prefetch_pc,

    input   logic           branch_signal
);

    logic   dfp_read_reg;
    logic   missed, missed_reg;

    always_ff @(posedge clk) begin
        if (rst) begin
            dfp_read_reg <= '0;
            missed_reg <= '0;
        end else begin
            dfp_read_reg <= dfp_read;
            missed_reg <= missed;
        end
    end

    always_comb begin
        prefetch_valid = '0;
        prefetch_pc = pc + 32'd32;
        prefetch_pc[4:0] = '0;

        missed = (rst) ? '0 : missed_reg;

        if (branch_signal) begin
            missed = '1;
        end

        if (dfp_read_reg && !dfp_read) begin
            if (!missed) begin
                prefetch_valid = '1;
            end
            missed = ~missed;
        end
    end

endmodule : prefetch