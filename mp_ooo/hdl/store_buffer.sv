module store_buffer
import rv32i_types::*;
(
    input   logic           clk,
    input   logic           rst,

    // memory inputs
    input   logic   [31:0]  store_data, store_addr,
    input   logic   [31:0]  load_data, load_addr,
    input   logic   [3:0]   store_mask,
    input   logic   [3:0]   load_mask,

    // cache inputs
    input   logic           cache_ready,

    // memory outputs
    output  logic           empty,      // if not empty, don't let memory instruction go to cache
    output  logic           full,       // if full, don't let stores come in

    // cache outputs
    output  logic   
);

    logic   sb_info     store_buffer [1:0];
    
    always_comb begin
    
    end

endmodule : store_buffer