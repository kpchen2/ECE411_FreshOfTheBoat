module fu_mem 
import rv32i_types::*;
(
    input   logic [31:0] rs1_v, rs2_v,
    // input decode_info_t decode_info,
    input   logic [6:0] opcode,
    input   logic   start,
    output logic addr_valid,
    output logic busy,
    output logic [31:0] mem_addr,
    input logic [31:0] i_imm,
    input logic [STORE_MEM_ADDR_WIDTH - 1:0] store_dispatch_mem_idx,
    input logic [LOAD_MEM_ADDR_WIDTH - 1:0] load_dispatch_mem_idx,
    output logic [MEM_ADDR_WIDTH - 1:0] mem_idx_out,
    output logic [31:0] store_wdata,
    output  logic   [31:0]  fu_rs1_v_mem, fu_rs2_v_mem,
    output  logic [6:0] opcode_out
);

assign fu_rs1_v_mem = rs1_v;
assign fu_rs2_v_mem = rs2_v;

always_comb
begin
    addr_valid = 1'b0;
    mem_addr  = '0;
    mem_idx_out = '0;
    busy = 1'b0;
    store_wdata = '0;
    opcode_out = '0;
    if (start)
    begin
        addr_valid = 1'b1;
        mem_addr = i_imm + rs1_v;
        store_wdata = rs2_v;
        busy  = 1'b1;
        mem_idx_out = (opcode == op_b_load) ? load_dispatch_mem_idx : store_dispatch_mem_idx;
        opcode_out = opcode;
    end
end
    
endmodule