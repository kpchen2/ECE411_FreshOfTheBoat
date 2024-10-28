module pipe_two
import cache_types::*;
(
    input pipe_reg_t pipe_reg,
    // cpu side signals, ufp -> upward facing port
    output  logic   [31:0]  ufp_rdata,
    input logic [3:0] ufp_rmask, ufp_wmask,
    output  logic           ufp_resp,
    input logic [2:0] lru,

    // memory side signals, dfp -> downward facing port
    output  logic   [31:0]  dfp_addr,
    output  logic           dfp_read,
    output  logic           dfp_write,
    output  logic   [255:0] dfp_wdata,

    input logic [255:0] cache_data[0:3],
    input logic [23:0] cache_tag[0:3],
    input logic cache_valid[0:3],

    output logic [2:0] lru_new,
    output logic stall,

    input logic response,
    output logic cache_hit,
    output logic write_flag,
    input logic write_stall,
    output logic [1:0] cache_hit_way,
    input logic [1:0] cache_replace_way,
    input logic dirty_miss,
    output logic write_stall_edge
);
    always_comb begin
        dfp_write = '0;
        dfp_wdata = '0;

        cache_hit = 1'b0;
        cache_hit_way = '0;
        ufp_rdata = '0;
        ufp_resp = '0;
        dfp_addr = 32'b0;
        stall = 1'b0;
        lru_new = lru;
        dfp_read = '0;
        dfp_addr = '0;
        write_flag = 1'b0;
        write_stall_edge = 1'b0;
        if (!(pipe_reg.ufp_rmask == '0 && pipe_reg.ufp_wmask == '0) || !pipe_reg.active) begin
            for (int i = 0; i < 4; i++) begin
                if (cache_valid[i] == 1'b1 && cache_tag[i][22:0] == pipe_reg.tag) begin
                    cache_hit = 1'b1;
                    case (i)
                        0:  cache_hit_way = 2'b00;
                        1:  cache_hit_way = 2'b01;
                        2:  cache_hit_way = 2'b10;
                        3:  cache_hit_way = 2'b11;
                        default:  cache_hit_way = 2'b00;
                    endcase
                end
            end

            if (cache_hit) begin
                // Cache Hit
                case (cache_hit_way)
                    0:          lru_new = {1'b1, 1'b1, lru[0]};
                    1:          lru_new = {1'b1, 1'b0, lru[0]};
                    2:          lru_new = {1'b0, lru[1], 1'b1};
                    3:          lru_new = {1'b0, lru[1], 1'b0};
                    default:    lru_new = lru;      // will never reach here
                endcase
                if (pipe_reg.ufp_rmask != 0 && !write_stall) begin
                    ufp_resp = 1'b1;
                    ufp_rdata = cache_data[cache_hit_way][pipe_reg.offset * 8 +: 32] & { {8{pipe_reg.ufp_rmask[3]}}, {8{pipe_reg.ufp_rmask[2]}}, {8{pipe_reg.ufp_rmask[1]}}, {8{pipe_reg.ufp_rmask[0]}} };
                end else if (pipe_reg.ufp_wmask != 0) begin
                    write_flag = write_stall ? 1'b0 : 1'b1;
                    write_stall_edge = (ufp_rmask == 0 && ufp_wmask == 0) ? 1'b0 : 1'b1;
                    ufp_resp = write_stall ? 1'b0 : 1'b1;
                end

                stall = 1'b0;
                dfp_read = 1'b0;
            end else begin
                // Cache Miss
                if (!write_stall) begin
                    if (cache_tag[cache_replace_way][23] && cache_valid[cache_replace_way]) begin
                        // Dirty Miss
                        dfp_write = response ? 1'b0 : 1'b1;
                        dfp_wdata = response ? '0 : cache_data[cache_replace_way];
                        dfp_addr = dirty_miss ? {pipe_reg.tag, pipe_reg.index, 5'b0} : {cache_tag[cache_replace_way][22:0], pipe_reg.index, 5'b0};
                        dfp_read = dirty_miss;
                        stall = 1'b1;
                    end else begin
                        // Clean Miss
                        if (pipe_reg.active) begin
                            dfp_read = (response) ? 1'b0 : 1'b1;
                            stall = 1'b1;
                            dfp_addr = {pipe_reg.tag, pipe_reg.index, 5'b0};
                        end else begin
                            dfp_read = 1'b0;
                            stall = 1'b0;
                            dfp_addr = '0;
                        end
                    end
                end
                lru_new = lru;
            end
        end
    end

endmodule