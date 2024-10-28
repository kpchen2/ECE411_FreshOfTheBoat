package cache_types;

    typedef struct packed {
        logic [4:0] offset;
        logic [3:0] index;
        logic [22:0] tag;
        logic [2:0] lru;
        logic active;
        logic [3:0] ufp_rmask;
        logic [3:0] ufp_wmask;
        logic   [31:0]  ufp_wdata;
        // logic [1:0] cache_replace_way;
    } pipe_reg_t;

endpackage