module cache
import cache_types::*;
(
    input   logic           clk,
    input   logic           rst,

    // cpu side signals, ufp -> upward facing port
    input   logic   [31:0]  ufp_addr,
    input   logic   [3:0]   ufp_rmask,
    input   logic   [3:0]   ufp_wmask,
    output  logic   [31:0]  ufp_rdata,
    input   logic   [31:0]  ufp_wdata,
    output  logic           ufp_resp,

    // memory side signals, dfp -> downward facing port
    output  logic   [31:0]  dfp_addr,
    output  logic           dfp_read,
    output  logic           dfp_write,
    input   logic   [255:0] dfp_rdata,
    output  logic   [255:0] dfp_wdata,
    input   logic           dfp_resp
);

    logic [255:0] cache_data[0:3];
    logic [23:0] cache_tag[0:3];
    logic cache_valid[0:3];

    logic [3:0] web;

    logic cache_hit;
    logic [1:0] cache_hit_way, cache_replace_way;

    logic [2:0] lru, lru_new;
    logic stall;
    logic write_flag, write_stall, write_stall_edge;

    logic dirty_bit;

    logic valid;

    logic dirty_miss, dirty_miss_next;

    logic response, response_next;

    logic [31:0] data_wmask;
    logic [255:0] data_din;

    pipe_reg_t pipe_reg, pipe_reg_next;

    pipe_one pipe_one_i (
        .*
    );

    pipe_two pipe_two_i (
        .*
    );

    always_ff @(posedge clk) begin
        if (rst) begin
            pipe_reg <= '0;
            response <= 1'b0;
            write_stall <= 1'b0;
            dirty_miss <= 1'b0;
        end else if (stall) begin
            pipe_reg <= pipe_reg; 
            response <= dfp_resp;
            write_stall <= (write_stall_edge && write_flag) ? write_flag : '0; // it shouldn't reach here
            dirty_miss <= dirty_miss_next;
        end else if (write_stall) begin
            pipe_reg <= pipe_reg;
            response <= dfp_resp;
            write_stall <= (write_stall_edge && write_flag) ? write_flag : '0;
            dirty_miss <= dirty_miss_next;
        end else begin
            pipe_reg <= pipe_reg_next;
            response <= dfp_resp;
            write_stall <= (write_stall_edge && write_flag) ? write_flag : '0;
            dirty_miss <= dirty_miss_next;
        end
    end


    generate for (genvar i = 0; i < 4; i++) begin : arrays
        mp_cache_data_array data_array (
            .clk0       (clk),
            .csb0       ('0),
            .web0       (web[i]),
            .wmask0     (data_wmask),
            .addr0      ((stall || write_flag) ? pipe_reg.index : pipe_reg_next.index),
            .din0       (data_din),
            .dout0      (cache_data[i])
        );
        mp_cache_tag_array tag_array (
            .clk0       (clk),
            .csb0       ('0),
            .web0       (web[i]),
            .addr0      ((stall || write_flag) ? pipe_reg.index : pipe_reg_next.index),
            .din0       ({dirty_bit, pipe_reg.tag}),
            .dout0      (cache_tag[i])
        );
        valid_array valid_array (
            .clk0       (clk),
            .rst0       (rst),
            .csb0       ('0),
            .web0       (web[i]),
            .addr0      ((stall || write_flag) ? pipe_reg.index : pipe_reg_next.index),
            .din0       (valid),
            .dout0      (cache_valid[i])
        );
    end endgenerate

    lru_array lru_array (
        .clk0       (clk),
        .rst0       (rst),
        .csb0       (1'b0),
        .web0       (1'b1),
        .addr0      (pipe_reg_next.index),
        .din0       (3'b0),
        .dout0      (lru),
        .csb1       (1'b0),
        .web1       (!cache_hit),
        .addr1      (pipe_reg.index),
        .din1       (lru_new), // most recent used to write
        .dout1      ()  //unused
    );

endmodule