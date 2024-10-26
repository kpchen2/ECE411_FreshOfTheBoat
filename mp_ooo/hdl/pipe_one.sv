module pipe_one
import cache_types::*;
(
    input   logic   [31:0]  ufp_addr,
    input   logic   [31:0]  ufp_wdata,
    input   logic           dfp_resp,
    input   logic   [3:0]   ufp_rmask,
    input   logic   [3:0]   ufp_wmask,
    input   logic   [255:0] dfp_rdata,
    input logic [2:0] lru,
    output pipe_reg_t pipe_reg_next,
    input pipe_reg_t pipe_reg,
    output logic [3:0] web,
    output logic [31:0] data_wmask,
    output logic [255:0] data_din,
    output logic dirty_bit,
    input logic stall,
    input logic [1:0] cache_hit_way,
    output logic [1:0] cache_replace_way,
    input logic [255:0] cache_data[0:3],
    input logic write_stall, write_flag,
    input logic dfp_write,
    output logic valid,
    output logic dirty_miss_next
);

    logic [4:0] offset;
    logic [3:0] index;
    logic [22:0] tag;

    // logic [1:0] cache_replace_way;


    always_comb begin
        offset = (stall) ? pipe_reg.offset : ufp_addr[4:0];
        index = (stall) ? pipe_reg.index : ufp_addr[8:5];
        tag = (stall) ? pipe_reg.tag : ufp_addr[31:9];
        pipe_reg_next.offset = offset;
        pipe_reg_next.index = index;
        pipe_reg_next.tag = tag;
        pipe_reg_next.ufp_rmask = ufp_rmask;
        pipe_reg_next.ufp_wmask = ufp_wmask;
        pipe_reg_next.lru = lru;
        pipe_reg_next.ufp_wdata = ufp_wdata;

        pipe_reg_next.active = 1'b1;

        pipe_reg_next = (write_stall) ? pipe_reg : pipe_reg_next;

        web = '1;
        valid = 1'b1;

        data_wmask = '1;
        data_din = dfp_rdata;
        dirty_bit = 1'b0;

        dirty_miss_next = 1'b0;

        if (write_flag) begin
            data_din = cache_data[cache_hit_way];
            data_din[pipe_reg.offset * 8 +: 32] = pipe_reg.ufp_wdata;
            dirty_bit = 1'b1;
            data_wmask[pipe_reg.offset +: 4] = pipe_reg.ufp_wmask;
            web[cache_hit_way] = 1'b0;
        end

        case (lru)
            3'b000:     cache_replace_way = 2'b00;
            3'b001:     cache_replace_way = 2'b00;
            3'b010:     cache_replace_way = 2'b01;
            3'b011:     cache_replace_way = 2'b01;
            3'b100:     cache_replace_way = 2'b10;
            3'b101:     cache_replace_way = 2'b11;
            3'b110:     cache_replace_way = 2'b10;
            3'b111:     cache_replace_way = 2'b11;
            default:    cache_replace_way = 2'b00;      // will never reach here
        endcase

        if (dfp_resp && !dfp_write) begin
            web[cache_replace_way] = 1'b0;
        end else if (dfp_resp && dfp_write) begin
            valid = 1'b0;
            web[cache_replace_way] = 1'b0;
            dirty_miss_next = 1'b1;
        end
    end

endmodule