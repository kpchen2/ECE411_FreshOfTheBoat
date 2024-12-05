// import rv32i_types::*;


// module top_tb;


// timeunit 1ps;
//     timeprecision 1ps;
//     // parameter DATA_WIDTH = 32; 
//     // parameter QUEUE_DEPTH = 64;
//     int clock_half_period_ps = getenv("ECE411_CLOCK_PERIOD_PS").atoi() / 2;

//     bit clk;
//     always #(clock_half_period_ps) clk = ~clk;

//     bit rst;


//     initial begin
//         $fsdbDumpfile("dump.fsdb");
//         $fsdbDumpvars(0, "+all");
//         rst = 1'b1;
//         repeat (2) @(posedge clk);
//         rst <= 1'b0;
//     end

    
//         // rename/dispatch inputs
//         logic   [31:0]  inst;
//         logic   [6:0]   opcode;
//         logic   [2:0]   funct3;
//         logic   [PHYS_REG_BITS - 1:0]   phys_reg_in;
//         logic           store_enqueue_valid;    
//         logic           load_enqueue_valid;
//         logic   [ROB_ADDR_WIDTH- 1:0]   rob_num;
//         logic   [ARCH_REG_BITS - 1:0]   rd_dispatch;
    
//         // adder inputs
//         logic   [31:0]  addr;
//         logic           addr_valid;
//         logic   [LOAD_MEM_ADDR_WIDTH - 1:0]   load_mem_idx_in;
//         logic   [STORE_MEM_ADDR_WIDTH - 1:0]  store_mem_idx_in;
//         logic   [31:0]  store_wdata;
//         logic   [31:0]  rs1_rdata;
//         logic   [31:0]  rs2_rdata;
//         logic   [6:0]   addr_opcode;
    
//         // rob inputs
//         logic   [ROB_ADDR_WIDTH - 1:0]   commited_rob;
    
//         // dcache inputs
//         logic   [31:0]  data_in;
//         logic           data_valid;
    
//         // outputs
//         logic           full;
//         logic [281:0]           cdb_mem;
    
//         // rename/dispatch outputs
//         logic   [STORE_MEM_ADDR_WIDTH- 1 :0]   store_mem_idx_out;
//         logic   [LOAD_MEM_ADDR_WIDTH - 1 :0]   load_mem_idx_out;

    
//         // dcache outputs
//         logic   [31:0]  d_addr;
//         logic   [3:0]   d_rmask;
//         logic   [3:0]   d_wmask;
//         logic   [31:0]  d_wdata;


// task generate_reset;
//     begin
//         rst = 1'b1;
//         repeat (2) @ (posedge clk);
//         rst <= 1'b0;
//     end
// endtask;

// split_lsq(
//     clk,
//     rst,

//     // rename/dispatch inputs
//     inst,
//     opcode,
//     funct3,
//     phys_reg_in,
//     store_enqueue_valid,    
//     load_enqueue_valid,
//     rob_num,
//     rd_dispatch,

//     // adder inputs
//     addr,
//     addr_valid,
//     load_mem_idx_in,
//     store_mem_idx_in,
//     store_wdata,
//     rs1_rdata,
//     rs2_rdata,
//     addr_opcode,

//     // rob inputs
//     commited_rob,

//     // dcache inputs
//     data_in,
//     data_valid,

//     // outputs
//     full,
//     cdb_mem,

//     // rename/dispatch outputs
//     store_mem_idx_out,
//     load_mem_idx_out,


//     // dcache outputs
//     d_addr,
//     d_rmask,
//     d_wmask,
//     d_wdata
// ) dut;


// task standard_task( 
    
//         // rename/dispatch inputs
//         logic   [31:0]  inst_,
//         logic   [6:0]   opcode_,
//         logic   [2:0]   funct3_,
//         logic   [PHYS_REG_BITS - 1:0]   phys_reg_in_,
//         logic           store_enqueue_valid_,    
//         logic           load_enqueue_valid_,
//         logic   [ROB_ADDR_WIDTH- 1:0]   rob_num_,
//         logic   [ARCH_REG_BITS - 1:0]   rd_dispatch_
//         // adder inputs
//         logic   [31:0]  addr_,
//         logic           addr_valid_,
//         logic   [LOAD_MEM_ADDR_WIDTH - 1:0]   load_mem_idx_in_,
//         logic   [STORE_MEM_ADDR_WIDTH - 1:0]  store_mem_idx_in_,
//         logic   [31:0]  store_wdata_,
//         logic   [31:0]  rs1_rdata_
//         logic   [31:0]  rs2_rdata_,
//         logic   [6:0]   addr_opcode_,      // rob inputs
//         logic   [ROB_ADDR_WIDTH - 1:0]   commited_rob_,
    
//         // dcache inputs
//         logic   [31:0]  data_in_,
//         logic           data_valid_,


// );
//     begin
//         inst = inst_;
//         opcode = opcode_;
//         funct3 = funct3_;
//         phys_reg_in = phys_reg_in_;
//         store_enqueue_valid = store_enqueue_valid_;    
//         load_enqueue_valid = load_enqueue_valid_;
//         rob_num = rob_num_;
//         rd_dispatch = rd_dispatch_;
//         addr = addr_;
//         addr_valid = addr_valid_;
//         load_mem_idx_in = load_mem_idx_in_;
//         store_mem_idx_in = store_mem_idx_in_;
//         store_wdata = store_wdata_;
//         rs1_rdata = rs1_rdata_
//         rs2_rdata = rs2_rdata_;
//         addr_opcode = addr_opcode_;      // rob inputs
//         commited_rob = commited_rob_;
//         data_in = data_in_;
//         data_valid = data_valid_;                                        
//     end
// endtask

// task simple_store_stall;
//     standard_task
//     (
//         // rename/dispatch inputs
//         32'h08208223,
//         op_b_store  ,
//         3'b000 ,
//         PHYS_REG_BITS'd32,
//         1'b1,
//         1'b0,
//         ROB_ADDR_WIDTH'd0,
//         ARCH_REG_BITS'd0,
//         // adder inputs
//         32'd0,
//         1'b0,
//         LOAD_MEM_ADDR_WIDTH'd0,
//         STORE_MEM_ADDR_WIDTH'd0,
//         32'heceb2022,
//         32'd4,
//         32'd8,
//         6'd0,
//         // rob inputs
//         ROB_ADDR_WIDTH'd0,
//         // dcache inputs
//         32'd0,
//         1'b0,
//     )
// endtask

// initial
// begin
//     generate_reset;
//     simple_store;
//     #100000;
//     $finish;
// end

// endmodule