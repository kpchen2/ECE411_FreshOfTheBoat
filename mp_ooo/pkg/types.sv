package rv32i_types;

    localparam NUM_ADD_REGISTERS = 4;
    localparam NUM_MULTIPLY_REGISTERS = 4;
    localparam NUM_DIVIDE_REGISTERS = 4;
    localparam MAX_ISSUES = 4; // num instructions to issue
    // parameter DATA_WIDTH = 6;

    typedef logic [6:0] physicalIndexing;
    
    typedef struct packed {
        logic           monitor_valid;
        logic   [63:0]  monitor_order;
        logic   [31:0]  monitor_inst;
        logic   [4:0]   monitor_rs1_addr;
        logic   [4:0]   monitor_rs2_addr;
        logic   [31:0]  monitor_rs1_rdata;
        logic   [31:0]  monitor_rs2_rdata;
        logic           monitor_regf_we;
        logic   [4:0]   monitor_rd_addr;
        logic   [31:0]  monitor_rd_wdata;
        logic   [31:0]  monitor_pc_rdata;
        logic   [31:0]  monitor_pc_wdata;
        logic   [31:0]  monitor_mem_addr;
        logic   [3:0]   monitor_mem_rmask;
        logic   [3:0]   monitor_mem_wmask;
        logic   [31:0]  monitor_mem_rdata;
        logic   [31:0]  monitor_mem_wdata;
    } rvfi_info;
    
    typedef struct packed {
        logic   [2:0]   funct3;
        logic   [6:0]   funct7;
        logic   [6:0]   opcode;
        logic   [31:0]  i_imm;
        logic   [31:0]  s_imm;
        logic   [31:0]  b_imm;
        logic   [31:0]  u_imm;
        logic   [31:0]  j_imm;

        logic   [4:0]  rs1_s;
        logic   [4:0]  rs2_s;
        logic   [4:0]  rd_s;
        logic   [31:0] inst;
    } decode_info_t;

    typedef struct packed {
        logic busy;
        logic ps1_v;
        logic [5:0] ps1;
        logic ps2_v;
        logic [5:0] ps2;
        logic [5:0] pd;
        logic [4:0] rd;
        logic [5:0] rob_entry;
        decode_info_t decode_info;
    } add_reservation_station_data;

    typedef struct packed {
        logic busy;
        logic ps1_v;
        logic [5:0] ps1;
        logic ps2_v;
        logic [5:0] ps2;
        logic [5:0] pd;
        logic [4:0] rd;
        logic [5:0] rob_entry;
        decode_info_t decode_info;
    } multiply_reservation_station_data;

    typedef struct packed {
        logic busy;
        logic ps1_v;
        logic [5:0] ps1;
        logic ps2_v;
        logic [5:0] ps2;
        logic [5:0] pd;
        logic [4:0] rd;
        logic [5:0] rob_entry;
        decode_info_t decode_info;
    } divide_reservation_station_data;

    typedef struct packed {
        logic   [5:0]   rob_idx;
        logic   [5:0]   pd_s;
        logic   [4:0]   rd_s;
        logic   [31:0]  rd_v;
        logic           valid;
        logic   [31:0]  inst;
    } cdb_t;

    typedef struct packed {
        logic [5:0] ps1;
        logic [5:0] ps2;
        logic [5:0]  pd;
        logic [4:0] rd;
        logic [5:0] rob_entry;
    } cdb_rs_output;

    typedef struct packed {
        logic   [31:0]  addr;
        logic   [22:0]  tag;
        logic   [3:0]   set_no;
        logic   [4:0]   offset;
        logic   [3:0]   rmask;

        logic   [3:0]   wmask;
        logic   [31:0]  wdata;
    } stage_reg_t;

    typedef struct packed {
        logic   [5:0]   phys_reg;
        logic   [4:0]   arch_reg;
    } rob_out_t;

    typedef struct packed {
        logic valid;
        logic commit;
        logic [5:0] pd;
        rvfi_info rvfi;
    } rob_entry_t;
    

    typedef struct packed {
        rvfi_info if_id_rvfi;
    } if_id_t;

    typedef struct packed {
        rvfi_info id_ex_rvfi;
        logic [2:0] funct3;
        logic [6:0]funct7;
        logic [6:0]opcode;
        logic [31:0]i_imm;
        logic [31:0] s_imm;
        logic [31:0]b_imm;
        logic [31:0]u_imm;
        logic [31:0]j_imm;
        logic imem_resp;
    } id_ex_t;

    typedef struct packed {
        rvfi_info ex_mm_rvfi;
        logic [31:0] rd_v;
        logic [4:0] rd_s;
        logic [2:0] funct3;
        logic [6:0]opcode;
        logic imem_resp;
    } ex_mm_t;

    typedef struct packed {
        rvfi_info mm_wb_rvfi;
        logic [31:0] rd_v;
        logic [4:0] rd_s;
        logic dmem_resp;
        logic [2:0] funct3;
        logic [6:0]opcode;
    } mm_wb_t;

    typedef enum logic {
        rs1_out = 1'b0,
        pc_out  = 1'b1
    } alu_m1_sel_t;

    // more mux def here

    typedef struct packed {
        logic   [31:0]      inst;
        logic   [31:0]      pc;
        logic   [63:0]      order;

        alu_m1_sel_t        alu_m1_sel;

        // what else?

    } id_ex_stage_reg_t;
    
    typedef enum logic [6:0] {
        op_b_lui       = 7'b0110111, // load upper immediate (U type)
        op_b_auipc     = 7'b0010111, // add upper immediate PC (U type)
        op_b_jal       = 7'b1101111, // jump and link (J type)
        op_b_jalr      = 7'b1100111, // jump and link register (I type)
        op_b_br        = 7'b1100011, // branch (B type)
        op_b_load      = 7'b0000011, // load (I type)
        op_b_store     = 7'b0100011, // store (S type)
        op_b_imm       = 7'b0010011, // arith ops with register/immediate operands (I type)
        op_b_reg       = 7'b0110011  // arith ops with register operands (R type)
    } rv32i_opcode;

    typedef enum logic [2:0] {
        arith_f3_add   = 3'b000, // check logic 30 for sub if op_reg op
        arith_f3_sll   = 3'b001,
        arith_f3_slt   = 3'b010,
        arith_f3_sltu  = 3'b011,
        arith_f3_xor   = 3'b100,
        arith_f3_sr    = 3'b101, // check logic 30 for logical/arithmetic
        arith_f3_or    = 3'b110,
        arith_f3_and   = 3'b111
    } arith_f3_t;

    typedef enum logic [2:0] {
        mult_div_f3_mul     = 3'b000,
        mult_div_f3_mulh    = 3'b001,
        mult_div_f3_mulhsu  = 3'b010,
        mult_div_f3_mulhu   = 3'b011,
        mult_div_f3_div     = 3'b100,
        mult_div_f3_divu    = 3'b101,
        mult_div_f3_rem     = 3'b110,
        mult_div_f3_remu    = 3'b111
    } mult_div_f3_t;

    typedef enum logic [2:0] {
        load_f3_lb     = 3'b000,
        load_f3_lh     = 3'b001,
        load_f3_lw     = 3'b010,
        load_f3_lbu    = 3'b100,
        load_f3_lhu    = 3'b101
    } load_f3_t;

    typedef enum logic [2:0] {
        store_f3_sb    = 3'b000,
        store_f3_sh    = 3'b001,
        store_f3_sw    = 3'b010
    } store_f3_t;

    typedef enum logic [2:0] {
        branch_f3_beq  = 3'b000,
        branch_f3_bne  = 3'b001,
        branch_f3_ball = 3'b010,
        branch_f3_blt  = 3'b100,
        branch_f3_bge  = 3'b101,
        branch_f3_bltu = 3'b110,
        branch_f3_bgeu = 3'b111
    } branch_f3_t;

    typedef enum logic [2:0] {
        alu_op_add     = 3'b000,
        alu_op_sll     = 3'b001,
        alu_op_sra     = 3'b010,
        alu_op_sub     = 3'b011,
        alu_op_xor     = 3'b100,
        alu_op_srl     = 3'b101,
        alu_op_or      = 3'b110,
        alu_op_and     = 3'b111
    } alu_ops;

    typedef enum logic [6:0] {
        base           = 7'b0000000,
        variant        = 7'b0100000,
        mult           = 7'b0000001
    } funct7_t;

    typedef union packed {
        logic [31:0] word;

        struct packed {
            logic [11:0] i_imm;
            logic [4:0]  rs1;
            logic [2:0]  funct3;
            logic [4:0]  rd;
            rv32i_opcode opcode;
        } i_type;

        struct packed {
            logic [6:0]  funct7;
            logic [4:0]  rs2;
            logic [4:0]  rs1;
            logic [2:0]  funct3;
            logic [4:0]  rd;
            rv32i_opcode opcode;
        } r_type;

        struct packed {
            logic [11:5] imm_s_top;
            logic [4:0]  rs2;
            logic [4:0]  rs1;
            logic [2:0]  funct3;
            logic [4:0]  imm_s_bot;
            rv32i_opcode opcode;
        } s_type;

        
        struct packed {
            logic imm_12;
            logic [10:5] imm_10_5;
            logic [4:0] rs2;
            logic [4:0] rs1;
            logic [2:0] funct3;
            logic [4:1] imm_4_1;
            logic imm_11;
            rv32i_opcode opcode;
        } b_type;

        struct packed {
            logic [31:12] imm;
            logic [4:0]   rd;
            rv32i_opcode  opcode;
        } j_type;

    } instr_t;

    // add your types in this file if needed.

endpackage
