package types;

    typedef struct packed {
        logic   [31:0]  addr;
        logic   [22:0]  tag;
        logic   [3:0]   set;
        logic   [4:0]   offset;
        logic   [3:0]   rmask;

        logic   [3:0]   wmask;
        logic   [31:0]  wdata;
    } stage_reg_t;

endpackage