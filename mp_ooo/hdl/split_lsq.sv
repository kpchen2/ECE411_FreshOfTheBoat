module split_lsq
    import rv32i_types::*;
    #(
        parameter QUEUE_DEPTH = MEM_QUEUE_DEPTH
    )
    (
        input   logic           clk,
        input   logic           rst,
    
        // rename/dispatch inputs
        input   logic   [31:0]  inst,
        input   logic   [6:0]   opcode,
        input   logic   [2:0]   funct3,
        input   logic   [PHYS_REG_BITS - 1:0]   phys_reg_in,
        input   logic           enqueue_valid,
        input   logic   [ROB_ADDR_WIDTH- 1:0]   rob_num,
        input   logic   [ARCH_REG_BITS - 1:0]   rd_dispatch,
    
        // adder inputs
        input   logic   [31:0]  addr,
        input   logic           addr_valid,
        input   logic   [$clog2(QUEUE_DEPTH) - 1:0]   mem_idx_in,
        input   logic   [31:0]  store_wdata,
        input   logic   [31:0]  rs1_rdata,
        input   logic   [31:0]  rs2_rdata,
    
        // rob inputs
        input   logic   [ROB_ADDR_WIDTH - 1:0]   commited_rob,
    
        // dcache inputs
        input   logic   [31:0]  data_in,
        input   logic           data_valid,
    
        // outputs
        output  logic           full,
        output  cdb_t           cdb_mem,
    
        // rename/dispatch outputs
        output  logic   [$clog2(QUEUE_DEPTH) - 1 :0]   mem_idx_out,
    
        // dcache outputs
        output  logic   [31:0]  d_addr,
        output  logic   [3:0]   d_rmask,
        output  logic   [3:0]   d_wmask,
        output  logic   [31:0]  d_wdata
    );
    
        localparam ADDR_WIDTH = $clog2(STORE_MEM_QUEUE_DEPTH);
    
        // store queue pointers, tail, head 
        logic   [ADDR_WIDTH:0]      store_tail_reg;              // extra bit for overflow
        logic   [ADDR_WIDTH:0]      store_head_reg;              // extra bit for overflow
    
        logic   [ADDR_WIDTH:0]      store_tail_next;             // combinational
        logic   [ADDR_WIDTH:0]      store_head_next;             // combinational
    

        // load data and store queue 
        lq_entry_t     load_mem [LOAD_MEM_QUEUE_DEPTH];     // extra bit for validity | QUEUE_DEPTH entries with each entry begin DATA_WIDTH+1 size
        sq_entry_t     store_mem[STORE_MEM_QUEUE_DEPTH];
        
        // load data entries 
        lq_entry_t      load_mem_next; // this is for writing a new entry
        lq_entry_t      load_mem_new;  // this is for updating an entry, marking it as not valid     

        // store data entries 
        sq_entry_t     store_enqueue_mem_next;
        sq_entry_t     store_dequeue_mem_next;

        // ??
        lsq_entry_t     cache_mem_next; // ???
    
        // valids for stores. Note that enqueue is equivalent to mem_regf_we_dispatch. have to change so it only is valid for stores. Not sure if we need one for loads
        logic           enqueue_reg;
        logic           dequeue_reg;


        // if we got another load/store instruction. Logic has to vary.
        logic           enqueue_valid_next;

        // if ready to pop off an existing load/store instruction
        logic           data_valid_next;

        // if adder done
        logic           addr_valid_next;

        // next version of mem_idx_in input port
        logic   [ADDR_WIDTH - 1 :0]   mem_idx_in_next;

        // next version of addr in input port
        logic   [31:0]  addr_next;

        // next version of store_wdata
        logic   [31:0]  store_wdata_next;
    
        // currently accessing cache ( i think)
        logic           accessing_cache;

        // next_free_load_entry, find the closest available load_entry
        logic [LOAD_MEM_ADDR_WIDTH - 1:0] next_free_load_entry;
        // next done load entry, find the nearest load that can be issued out
        logic [LOAD_MEM_ADDR_WIDTH - 1:0] next_done_load_entry;

        // if load queue is full
        logic load_full;
        //    found a load ready to issue
        logic ready_load;

        always_ff @ (posedge clk) begin
            enqueue_reg <= enqueue_valid;
            dequeue_reg <= data_valid;
    
            if (rst) begin
                tail_reg <= '1;
                head_reg <= '1;
    
                for (int i = 0; i < QUEUE_DEPTH; i++) begin
                    mem[i] <= '0;
                end
    
            end else begin
                // enqueue
                if (enqueue_valid_next) begin
                    mem[tail_next[ADDR_WIDTH - 1:0]] <= enqueue_mem_next;
                end
                // dequeue
                if (data_valid_next) begin
                    mem[head_next[ADDR_WIDTH - 1:0]] <= dequeue_mem_next;
                end
                // adder done
                if (addr_valid_next) begin
                    mem[mem_idx_in_next].addr_ready <= 1'b1; 
                    mem[mem_idx_in_next].addr <= addr_next;
                    mem[mem_idx_in_next].shift_bits <= addr_next[1:0];
                    mem[mem_idx_in_next].store_wdata <= store_wdata_next;
                    mem[mem_idx_in_next].rs1_rdata <= rs1_rdata;
                    mem[mem_idx_in_next].rs2_rdata <= rs2_rdata;
                end
                // accessing cache
                if (accessing_cache) begin
                    mem[head_next[ADDR_WIDTH - 1:0]+1'b1].rmask <= cache_mem_next.rmask;
                    mem[head_next[ADDR_WIDTH - 1:0]+1'b1].wmask <= cache_mem_next.wmask;
                    mem[head_next[ADDR_WIDTH - 1:0]+1'b1].wdata <= cache_mem_next.wdata;
                end
      
                tail_reg <= tail_next;
                head_reg <= head_next;
            end
        end
    

        // load_full logic, if the load queue is full
        always_comb
        begin
            load_full = 1'b1;
            for (int i = 0; i < LOAD_MEM_ADDR_WIDTH; i ++)
            begin
                if (load_mem[i].valid == 1'b0)
                begin
                    load_full = 1'b0;
                    break;
                end
            end
        end


        /* load add logic order, find load_mem_next, track the youngest store older than the load */
        always_comb
        begin
            load_mem_next = '0;
            if (enqueue_valid_next && opcode == op_b_load)
            begin
                load_mem_next.valid = 1'b1;
                load_mem_next.addr_ready = 1'b0;
                load_mem_next.addr = 32'bx;
                load_mem_next.inst = inst;
                load_mem_next.opcode = opcode;
                load_mem_next.funct3 = funct3;
                load_mem_next.pd_s = phys_reg_in;
                load_mem_next.rob_num = rob_num;
                load_mem_next.rd_s = rd_dispatch;
                load_mem_next.store_empty = (store_tail_reg == store_head_reg) ? 1'b1 : 1'b0;
                if (load_mem_next.store_empty)
                begin
                    load_mem_next.store_ptr = '0;
                end
                else
                begin
                    for (int unsigned i = 0; i < STORE_MEM_QUEUE_DEPTH; i++)
                    begin
                        if (store_mem[i].rob_num < rob_num)
                        begin
                            load_mem_next.store_ptr = i;
                        end
                        else
                        begin
                            break;
                        end
                    end
                end
                for (int unsigned i = 0 ; i < LOAD_MEM_QUEUE_DEPTH; i++)
                begin
                    if (~load_mem[i].valid)
                    begin
                        next_free_load_entry = i;
                        break;
                    end
                end
            end
            
        end

        /* load remove entry order. We remove a load asynchronously if its tracked store has been dequeued and it has a ready address*/
        always_comb
        begin
            ready_load = 1'b0;
            load_mem_new = load_mem[0];
            next_done_load_entry = '0;
            for (int unsigned i = 0; i < LOAD_MEM_QUEUE_DEPTH; i++)
            begin
                if (ready_load)
                begin
                    break;
                end
                for (int unsigned j = 0; j < STORE_MEM_QUEUE_DEPTH; j++) 
                begin
                    // prior stores are still in store queue, this load cannot be issued
                    if (store_mem[j].valid && load_mem[i].valid && store_mem[j].rob_num < load_mem[i].rob_num)
                    begin
                        break; 
                    end

                    // all prior stores have been issued, issue this load 
                    else if (load_mem[i].valid && (store_mem[j].rob_num > load_mem[i].rob_num || j == store_tail_reg) && data_valid)
                    begin
                        next_done_load_entry = i;
                        load_mem_new = load_mem[i];
                        load_mem_new.valid = 1'b0;
                        cdb_mem.rob_idx = load_mem_new.rob_num;
                        cdb_mem.pd_s = load_mem_new.pd_s;
                        cdb_mem.rd_s = load_mem_new.rd_s;
                        cdb_mem.valid = '1;
                        cdb_mem.inst = load_mem_new.inst;
                        cdb_mem.addr = load_mem_new.addr;
                        cdb_mem.rmask = load_mem_new.rmask;
                        cdb_mem.wmask = '0;
                        cdb_mem.rdata = data_in;
                        cdb_mem.wdata = '0;
                        cdb_mem.rs1_rdata = load_mem_new.rs1_rdata;
                        cdb_mem.rdata = data_in;
                        cdb_mem.rs2_rdata = '0;
                        ready_load = 1'b1;
                        unique case (load_mem[i].funct3)
                            // rd_v = rd_wdata
                            load_f3_lb : cdb_mem.rd_v = {{24{data_in[7 +8 *load_mem[i].shift_bits]}}   , data_in[8 *load_mem[i].shift_bits    +: 8 ]};
                            load_f3_lbu: cdb_mem.rd_v = {{24{1'b0}}                                                , data_in[8 *load_mem[i].shift_bits    +: 8 ]};
                            load_f3_lh : cdb_mem.rd_v = {{16{data_in[15+16*load_mem[i].shift_bits[1]]}}, data_in[16*load_mem[i].shift_bits[1] +: 16]};
                            load_f3_lhu: cdb_mem.rd_v = {{16{1'b0}}                                                , data_in[16*load_mem[i].shift_bits[1] +: 16]};
                            load_f3_lw : cdb_mem.rd_v = data_in;
                            default    : cdb_mem.rd_v = 'x;
                        endcase
                    end
                end
            end
        end

        always_comb begin
            store_tail_next = store_tail_reg;
            store_head_next = store_head_reg;
            store_enqueue_mem_next = '0;
            store_dequeue_mem_next = '0;
            load_mem_next = '0;
            load_mem_new = '0;
            cache_mem_next = '0;
    
            full = '0;
            cdb_mem = '0;
    
            d_addr = '0;
            d_rmask = '0;
            d_wmask = '0;
            d_wdata = '0;
    
            enqueue_valid_next = enqueue_valid;
            data_valid_next = data_valid;
            addr_valid_next = addr_valid;
            mem_idx_in_next = mem_idx_in;
            addr_next = addr;
            store_wdata_next = store_wdata;
    
            mem_idx_out = tail_reg[ADDR_WIDTH - 1:0] + 1'b1;
            accessing_cache = '0;
            
            if (!rst) begin
                full = (tail_reg[ADDR_WIDTH - 1:0] == head_reg[ADDR_WIDTH - 1:0]) && (tail_reg[ADDR_WIDTH] != head_reg[ADDR_WIDTH]);    // logic if queue full
    
                // send dequeue inst same cycle; update queue next cycle
                if (data_valid) begin
                    head_next = head_reg + 1'd1;
                    dequeue_mem_next = mem[head_reg[ADDR_WIDTH - 1:0]+1'b1];
                    dequeue_mem_next.valid = 1'b0;
    
                    cdb_mem.rob_idx = dequeue_mem_next.rob_num;
                    cdb_mem.pd_s    = dequeue_mem_next.pd_s;
                    cdb_mem.rd_s    = dequeue_mem_next.rd_s;
                    cdb_mem.valid   = '1;
                    cdb_mem.inst    = dequeue_mem_next.inst;
                    cdb_mem.addr    = dequeue_mem_next.addr;
                    cdb_mem.rmask   = dequeue_mem_next.rmask;
                    cdb_mem.wmask   = dequeue_mem_next.wmask;
                    cdb_mem.rdata   = (dequeue_mem_next.opcode == op_b_load)  ? data_in : '0;
                    cdb_mem.wdata   = (dequeue_mem_next.opcode == op_b_store) ? dequeue_mem_next.wdata : '0;
                    cdb_mem.rs1_rdata = dequeue_mem_next.rs1_rdata;
                    cdb_mem.rs2_rdata = dequeue_mem_next.rs2_rdata;
    
                    if (dequeue_mem_next.opcode == op_b_load) begin
                        unique case (mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].funct3)
                            // rd_v = rd_wdata
                            load_f3_lb : cdb_mem.rd_v = {{24{data_in[7 +8 *mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].shift_bits]}}   , data_in[8 *mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].shift_bits    +: 8 ]};
                            load_f3_lbu: cdb_mem.rd_v = {{24{1'b0}}                                                , data_in[8 *mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].shift_bits    +: 8 ]};
                            load_f3_lh : cdb_mem.rd_v = {{16{data_in[15+16*mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].shift_bits[1]]}}, data_in[16*mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].shift_bits[1] +: 16]};
                            load_f3_lhu: cdb_mem.rd_v = {{16{1'b0}}                                                , data_in[16*mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].shift_bits[1] +: 16]};
                            load_f3_lw : cdb_mem.rd_v = data_in;
                            default    : cdb_mem.rd_v = 'x;
                        endcase
                    end else begin
                        cdb_mem.rd_s = '0;
                        cdb_mem.rd_v = '0;
                    end
    
                // ready to access cache
                end else if (mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].valid == 1'b1 && mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].addr_ready == 1'b1) begin
                    d_addr = mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].addr;
                    
                    if (mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].opcode == op_b_load && mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].rob_num == commited_rob) begin
                        unique case (mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].funct3)
                            load_f3_lb, load_f3_lbu: d_rmask = 4'b0001 << d_addr[1:0];
                            load_f3_lh, load_f3_lhu: d_rmask = 4'b0011 << d_addr[1:0];
                            load_f3_lw             : d_rmask = 4'b1111;
                            default                : d_rmask = 'x;
                        endcase
    
                    end else if (mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].rob_num == commited_rob) begin
                        unique case (mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].funct3)
                            store_f3_sb: d_wmask = 4'b0001 << d_addr[1:0];
                            store_f3_sh: d_wmask = 4'b0011 << d_addr[1:0];
                            store_f3_sw: d_wmask = 4'b1111;
                            default    : d_wmask = 'x;
                        endcase
                        
                        unique case (mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].funct3)
                            store_f3_sb: d_wdata[8 *d_addr[1:0] +: 8 ] = mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].store_wdata[7 :0];
                            store_f3_sh: d_wdata[16*d_addr[1]   +: 16] = mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].store_wdata[15:0];
                            store_f3_sw: d_wdata = mem[head_reg[ADDR_WIDTH - 1:0]+1'b1].store_wdata;
                            default    : d_wdata = 'x;
                        endcase
                    end
    
                    cache_mem_next.rmask = d_rmask;
                    cache_mem_next.wmask = d_wmask;
                    cache_mem_next.wdata = d_wdata;
    
                    d_addr[1:0] = 2'b0;
                    accessing_cache = '1;
                end
                
                if (enqueue_valid) begin
                    if (~full || data_valid) begin
                        tail_next = tail_reg + 1'b1;
                        head_next = (head_next == head_reg) ? head_reg : head_reg + 1'd1;   // don't change what dequeue set head_next to
                        enqueue_mem_next.valid = 1'b1;
                        enqueue_mem_next.addr_ready = 1'b0;
                        enqueue_mem_next.addr = 32'bx;
                        enqueue_mem_next.inst = inst;
                        enqueue_mem_next.opcode = opcode;
                        enqueue_mem_next.funct3 = funct3;
                        enqueue_mem_next.pd_s = phys_reg_in;
                        enqueue_mem_next.rob_num = rob_num;
                        enqueue_mem_next.rd_s = rd_dispatch;
    
                    end else begin
                        tail_next = tail_reg; 
                        head_next = (head_next == head_reg) ? head_reg : head_reg + 1'd1;   // don't change what dequeue set head_next to
                        enqueue_mem_next = mem[tail_reg[ADDR_WIDTH - 1:0]+1'b1];
                    end
                end
    
                full = (tail_next[ADDR_WIDTH - 1:0] == head_next[ADDR_WIDTH - 1:0]) && (tail_next[ADDR_WIDTH] != head_next[ADDR_WIDTH]);    // logic if queue full
            end
        end
    
endmodule : split_lsq
    