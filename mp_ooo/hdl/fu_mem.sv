module fu_mem 
import rv32i_types::*;
(
    input logic [31:0] rs1_v, rs2_v,
    input decode_info_t decode_info,
    output logic [31:0] rd_v,
    input   logic   start,
    output logic valid,
    output logic busy,
    output logic [31:0] mem_addr,
    input logic [11:0] i_imm,
    output logic [5:0] mem_idx,
);



always_comb
begin
    
    if (start)
    begin
        mem_addr = i_imm + rs1_v;
    end
end
    
endmodule