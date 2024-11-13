module fu_mem 
import rv32i_types::*;
(
    input logic [31:0] rs1_v, rs2_v,
    input decode_info_t decode_info,
    input   logic   start,
    output logic addr_valid,
    output logic busy,
    output logic [31:0] mem_addr,
    input logic [31:0] i_imm,
    input logic [5:0] dispatch_mem_idx,
    output logic [5:0] mem_idx_out,
    output logic [31:0] store_wdata
);



always_comb
begin
    addr_valid = 1'b0;
    mem_addr  = '0;
    mem_idx_out = '0;
    busy = 1'b0;
    store_wdata = '0;
    if (start)
    begin
        addr_valid = 1'b1;
        mem_addr = i_imm + rs1_v;
        store_wdata = rs2_v;
        busy  = 1'b1;
        mem_idx_out = dispatch_mem_idx;

    end
end
    
endmodule