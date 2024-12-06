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
        input   logic           store_enqueue_valid,    
        input   logic           load_enqueue_valid,
        input   logic   [ROB_ADDR_WIDTH- 1:0]   rob_num,
        input   logic   [ARCH_REG_BITS - 1:0]   rd_dispatch,
    
        // adder inputs
        input   logic   [31:0]  addr,
        input   logic           addr_valid,
        input   logic   [LOAD_MEM_ADDR_WIDTH - 1:0]   mem_idx_in,

        input   logic   [31:0]  store_wdata,
        input   logic   [31:0]  rs1_rdata,
        input   logic   [31:0]  rs2_rdata,
        input   logic   [6:0]   addr_opcode,
    
        // rob inputs
        input   logic   [ROB_ADDR_WIDTH - 1:0]   commited_rob,
    
        // dcache inputs
        input   logic   [31:0]  data_in,
        input   logic           data_valid,
    
        // outputs
        output  logic           full,
        output  cdb_t           cdb_mem,
    
        // rename/dispatch outputs
        output  logic   [STORE_MEM_ADDR_WIDTH- 1 :0]   store_mem_idx_out,
        output  logic   [LOAD_MEM_ADDR_WIDTH - 1 :0]   load_mem_idx_out,

    
        // dcache outputs
        output  logic   [31:0]  d_addr,
        output  logic   [3:0]   d_rmask,
        output  logic   [3:0]   d_wmask,
        output  logic   [31:0]  d_wdata
    );
    
    localparam ADDR_WIDTH = $clog2(STORE_MEM_QUEUE_DEPTH);

    // store queue pointers, tail, head 
    logic   [STORE_MEM_ADDR_WIDTH:0]      store_tail_reg;              // extra bit for overflow
    logic   [STORE_MEM_ADDR_WIDTH:0]      store_head_reg;              // extra bit for overflow

    logic   [STORE_MEM_ADDR_WIDTH:0]      store_tail_next;             // combinational
    logic   [STORE_MEM_ADDR_WIDTH:0]      store_head_next;             // combinational

    // similar to tail_reg. Instead of using it to index the load queue, it is used to tag the load queue entry. Then on issue, it's compared with mem_idx_in
    logic   [LOAD_MEM_ADDR_WIDTH:0]      load_counter;
    logic   [LOAD_MEM_ADDR_WIDTH:0]      load_counter_next;

    // load data and store queue 
    lq_entry_t     load_mem [LOAD_MEM_QUEUE_DEPTH];     // extra bit for validity | QUEUE_DEPTH entries with each entry begin DATA_WIDTH+1 size
    sq_entry_t     store_mem[STORE_MEM_QUEUE_DEPTH];
    
    // load data entries 
    lq_entry_t      load_mem_next; // this is for writing a new entry after get from rename dispatch
    lq_entry_t      load_mem_new;  // this is for updating an entry, marking it as not valid after data in  
    lq_entry_t      load_mem_addr; // when an address comes in , update with the address
    lq_entry_t      load_mem_tracked; // when we send to the cache, update the r and w masks (just r mask)

    // store data entries 
    sq_entry_t     store_enqueue_mem_next;
    sq_entry_t     store_dequeue_mem_next;

    // ??
    sq_entry_t     cache_mem_next; // only for stores

    // valids for stores. Note that enqueue is equivalent to mem_regf_we_dispatch. have to change so it only is valid for stores. Not sure if we need one for loads
    logic           enqueue_reg;
    logic           dequeue_reg;


    // if we got another load/store instruction. Logic has to vary.
    logic           store_enqueue_valid_next;
    logic           load_enqueue_valid_next;

    // if ready to pop off an existing load/store instruction
    logic           data_valid_next;

    // if address sent from adder is valid done
    logic           addr_valid_next;

    // next version of mem_idx_in input port
    logic   [LOAD_MEM_ADDR_WIDTH - 1 :0]   mem_idx_in_next;

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
    // if store queue is full
    logic store_full;
    logic store_full_reg;
    //    found a load ready to issue to request for cache
    logic load_ready;

    logic [LOAD_MEM_ADDR_WIDTH - 1:0] load_entry_tracked; // save index into register, use it when we get data_valid
    logic [LOAD_MEM_ADDR_WIDTH - 1:0] load_entry_tracked_next; // save index into register, use it when we get data_valid

    logic load_entry_is_tracked; // flag
    logic load_entry_is_tracked_next; // flag

    logic [6:0] addr_opcode_next;

    enum int unsigned {
        load,
        store,
        store_idle,
        load_idle
    } state, state_next;

    // enum int unsigned {
    //     load_cache,
    //     store_cache,
    //     idle_cache
    // } state_cache, state_cache_next;

    always_ff @(posedge clk) 
    begin
        if (rst) 
        begin
            load_counter <= '1;
            store_tail_reg <= '1;
            store_head_reg <= '1;
            state <= load;
            store_full_reg <= store_full;
            // load queue depth is same as store for now, may be subject to change
            for (int i = 0; i < LOAD_MEM_QUEUE_DEPTH; i++) begin
                load_mem[i] <= '0;
                store_mem[i] <= '0;
            end
        end
        else
        begin
            state <= state_next;
            load_entry_is_tracked <= load_entry_is_tracked_next;
            load_entry_tracked <= load_entry_tracked_next;
            load_mem[next_free_load_entry] <= load_mem_next;
            load_mem[next_done_load_entry] <= load_mem_new;
            if (load_entry_is_tracked_next)
            begin
                load_mem[load_entry_tracked] <= load_mem_tracked;
            end
            if (store_enqueue_valid_next)
            begin
                store_mem[store_tail_next[STORE_MEM_ADDR_WIDTH - 1:0]] <= store_enqueue_mem_next;
            end
            else if (load_enqueue_valid_next)
            begin
                load_mem[next_free_load_entry] <= load_mem_next;
            end

            // if (data_valid_next)
            // begin
            //     if (state_next == load)
            //     begin
            //         load_mem[load_entry_tracked_next] <= load_mem_new;
            //     end
            //     else if (state_next == store)
            //     begin
            //         store_mem[store_head_next[STORE_MEM_ADDR_WIDTH - 1:0]] <= store_dequeue_mem_next;
            //     end

            // end
            

            if (addr_valid_next && addr_opcode_next == op_b_load)
            begin
                load_mem[mem_idx_in_next] <= load_mem_addr;
            end
            else if (addr_valid_next && addr_opcode_next == op_b_store)
            begin
                store_mem[mem_idx_in_next].addr_ready <= 1'b1; 
                store_mem[mem_idx_in_next].addr <= addr_next;
                store_mem[mem_idx_in_next].shift_bits <= addr_next[1:0];
                store_mem[mem_idx_in_next].store_wdata <= store_wdata_next;
                store_mem[mem_idx_in_next].rs1_rdata <= rs1_rdata;
                store_mem[mem_idx_in_next].rs2_rdata <= rs2_rdata;
            end

            
            else if (accessing_cache && state == store)
            begin
                store_mem[store_head_next[ADDR_WIDTH - 1:0]+1'b1].wmask <= cache_mem_next.wmask;
                store_mem[store_head_next[ADDR_WIDTH - 1:0]+1'b1].wdata <= cache_mem_next.wdata;
            end
            store_tail_reg <= store_tail_next;
            store_head_reg <= store_head_next;
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

    // store full logic
    always_comb
    begin
        store_full = (store_tail_next[STORE_MEM_ADDR_WIDTH - 1:0] == store_head_next[STORE_MEM_ADDR_WIDTH - 1:0]) && (store_tail_next[STORE_MEM_ADDR_WIDTH] != store_head_next[STORE_MEM_ADDR_WIDTH]);    // logic if queue full
    end

    assign full = store_full_reg || load_full;
    assign addr_opcode_next = addr_opcode;
    always_comb
    begin
        next_free_load_entry = '0;
        for (int unsigned i = 0; i < LOAD_MEM_ADDR_WIDTH; i++)
        begin
            if (~load_mem[i].valid)
            begin
                next_free_load_entry = physicalIndexing5'(i);
                break;
            end
        end
    end



    /* load add logic order, find load_mem_next, track the youngest store older than the load */
    /* store add logic order, identical to mem queue */
    always_comb
    begin

        load_mem_next = load_mem[next_free_load_entry];
        store_tail_next = store_tail_reg;
        store_enqueue_mem_next = '0;


        // enqueue_valid_next = enqueue_valid; // include here or later?
        // data_valid_next = data_valid;
        // addr_valid_next = addr_valid;
        // mem_idx_in_next = mem_idx_in;
        // addr_next = addr;
        // store_wdata_next = store_wdata;


        // got a load to queue
        if (load_enqueue_valid)
        begin
            if (~load_full || data_valid) // why is data_valid necessary? 
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
                // load_mem_next.idx = load_counter;
                // load_counter_next = load_counter + 1;

                // if no stores, load does not need to point to a store
                if (load_mem_next.store_empty)
                begin
                    load_mem_next.store_ptr = '0;
                end
                else
                begin // find the store pointer ___ 
                    for (int unsigned i = 0; i < STORE_MEM_QUEUE_DEPTH; i++)
                    begin
                        if (store_mem[i].rob_num < rob_num)
                        begin
                            load_mem_next.store_ptr = i;
                        end
                        else
                        begin
                            break; // break when we found a store that is older than this load
                        end
                    end
                end
                /* Find the store pointer ^^^*/
            end

            
        end
        else if (store_enqueue_valid)// store insertion. Identical to original memory queue
        begin
            if (~store_full_reg || data_valid) // why is data_valid necessary? Ask Kevin
            begin
                store_tail_next = store_tail_reg + 1'b1;
                store_enqueue_mem_next.valid = 1'b1;
                store_enqueue_mem_next.addr_ready = 1'b0;
                store_enqueue_mem_next.addr = 32'bx;
                store_enqueue_mem_next.inst = inst;
                store_enqueue_mem_next.opcode = opcode;
                store_enqueue_mem_next.funct3 = funct3;
                store_enqueue_mem_next.rob_num = rob_num;

            end 
            else 
            begin
                store_tail_next = store_tail_reg; 
                store_enqueue_mem_next = store_mem[store_tail_reg[STORE_MEM_ADDR_WIDTH - 1:0]+1'b1];
            end
            
        end
    end

    always_comb 
    begin
        load_mem_addr = load_mem[mem_idx_in];
        if (addr_valid && addr_opcode == op_b_load)
        begin
            load_mem_addr.addr_ready = 1'b1;
            load_mem_addr.addr = addr;
            load_mem_addr.shift_bits = 1'b1;
            load_mem_addr.rs1_rdata = rs1_rdata;
        end
    end

    /* load remove entry order on valid cache data. We remove a load asynchronously if its tracked store has been dequeued and it has a ready address*/
    /* store remove entry order on valid cache data. Identical to mem queue */
    always_comb
    begin
        store_head_next = store_head_reg;
        store_dequeue_mem_next = '0;
        cache_mem_next = '0;

        cdb_mem = '0;

        d_addr = '0;
        d_rmask = '0;
        d_wmask = '0;
        d_wdata = '0;

        store_enqueue_valid_next = store_enqueue_valid;
        load_enqueue_valid_next = load_enqueue_valid;
        data_valid_next = data_valid;
        addr_valid_next = addr_valid;
        mem_idx_in_next = mem_idx_in;
        addr_next = addr;
        store_wdata_next = store_wdata;
        next_done_load_entry = '0;
        store_mem_idx_out = store_tail_reg[ADDR_WIDTH - 1:0] + 1'b1;
        load_mem_idx_out = next_free_load_entry;
        accessing_cache = '0;
        load_mem_new = load_mem[next_done_load_entry];
        load_ready = '0;
        load_entry_is_tracked_next = '0;
        load_entry_tracked_next = '0;
        load_mem_tracked = load_mem[load_entry_tracked_next];
        case (state)
            load: // send request to cache
            begin // loop and find a valid load to issue to cache
                for (int unsigned i = 0; i < LOAD_MEM_QUEUE_DEPTH; i++)
                begin
                    if (load_mem[i].valid && load_mem[i].addr_ready && load_mem[i].store_ptr < store_head_reg[STORE_MEM_ADDR_WIDTH - 1:0]) // find valid load that has valid address
                    begin
                        load_ready = 1'b1;
                        load_entry_tracked_next = physicalIndexing5'(i);
                        load_entry_is_tracked_next = 1'b1;
                        break;
                    end
                end
                if (load_ready)
                begin
                    d_addr = load_mem[load_entry_tracked_next].addr;
                    unique case (load_mem[load_entry_tracked_next].funct3)
                        load_f3_lb, load_f3_lbu: d_rmask = 4'b0001 << d_addr[1:0];
                        load_f3_lh, load_f3_lhu: d_rmask = 4'b0011 << d_addr[1:0];
                        load_f3_lw             : d_rmask = 4'b1111;
                        default                : d_rmask = 'x;
                    endcase
                    load_mem_tracked = load_mem[load_entry_tracked_next];
                    
                    load_mem_tracked.rmask = d_rmask;
                    
                    // cache_mem_next.wmask = '0;
                    // cache_mem_next.wdata = '0;

                    d_addr[1:0] = 2'b0;
                    accessing_cache = '1;
                    state_next = load_idle;
                end
                else
                begin
                    accessing_cache = 1'b0;
                    state_next = store;
                end
            end
            load_idle: // 
            begin
                if (data_valid)
                begin
                    next_done_load_entry = load_entry_tracked;
                    load_mem_new = load_mem[next_done_load_entry];
                    load_entry_tracked_next = '0;
                    load_entry_is_tracked_next = 1'b0;
                    load_mem_new.valid = 1'b0;
                  

                    cdb_mem.rob_idx = load_mem_new.rob_num;
                    cdb_mem.pd_s    = load_mem_new.pd_s;
                    cdb_mem.rd_s    = load_mem_new.rd_s;
                    cdb_mem.valid   = '1;
                    cdb_mem.inst    = load_mem_new.inst;
                    cdb_mem.addr    = load_mem_new.addr;
                    cdb_mem.rmask   = load_mem_new.rmask;
                    cdb_mem.wmask   = '0;
                    cdb_mem.rdata   = data_in;
                    cdb_mem.wdata   = '0;
                    cdb_mem.rs1_rdata = load_mem_new.rs1_rdata;
                    cdb_mem.rs2_rdata = '0;

                    unique case (load_mem[load_entry_tracked].funct3)
                        // rd_v = rd_wdata
                        load_f3_lb : cdb_mem.rd_v = {{24{data_in[7 +8 *load_mem[load_entry_tracked].shift_bits]}}   , data_in[8 *load_mem[load_entry_tracked].shift_bits    +: 8 ]};
                        load_f3_lbu: cdb_mem.rd_v = {{24{1'b0}}                                                , data_in[8 *load_mem[load_entry_tracked].shift_bits    +: 8 ]};
                        load_f3_lh : cdb_mem.rd_v = {{16{data_in[15+16*load_mem[load_entry_tracked].shift_bits[1]]}}, data_in[16*load_mem[load_entry_tracked].shift_bits[1] +: 16]};
                        load_f3_lhu: cdb_mem.rd_v = {{16{1'b0}}                                                , data_in[16*load_mem[load_entry_tracked].shift_bits[1] +: 16]};
                        load_f3_lw : cdb_mem.rd_v = data_in;
                        default    : cdb_mem.rd_v = 'x;
                    endcase
                    state_next = store;
                end
                else
                begin
                    state_next = load_idle;
                    load_entry_is_tracked_next = load_entry_is_tracked;
                    load_entry_tracked_next = load_entry_tracked_next;
                end
                
            end
            store: // send request to cache
            begin
                if (store_mem[store_head_reg[STORE_MEM_ADDR_WIDTH - 1:0]+1'b1].valid == 1'b1 && store_mem[store_head_reg[STORE_MEM_ADDR_WIDTH - 1:0]+1'b1].addr_ready == 1'b1) 
                begin
                    d_addr = store_mem[store_head_reg[STORE_MEM_ADDR_WIDTH - 1:0]+1'b1].addr;
                    unique case (store_mem[store_head_reg[STORE_MEM_ADDR_WIDTH - 1:0]+1'b1].funct3)
                        store_f3_sb: d_wmask = 4'b0001 << d_addr[1:0];
                        store_f3_sh: d_wmask = 4'b0011 << d_addr[1:0];
                        store_f3_sw: d_wmask = 4'b1111;
                        default    : d_wmask = 'x;
                    endcase
                    
                    unique case (store_mem[store_head_reg[STORE_MEM_ADDR_WIDTH - 1:0]+1'b1].funct3)
                        store_f3_sb: d_wdata[8 *d_addr[1:0] +: 8 ] = store_mem[store_head_reg[STORE_MEM_ADDR_WIDTH - 1:0]+1'b1].store_wdata[7 :0];
                        store_f3_sh: d_wdata[16*d_addr[1]   +: 16] = store_mem[store_head_reg[STORE_MEM_ADDR_WIDTH - 1:0]+1'b1].store_wdata[15:0];
                        store_f3_sw: d_wdata = store_mem[store_head_reg[STORE_MEM_ADDR_WIDTH - 1:0]+1'b1].store_wdata;
                        default    : d_wdata = 'x;
                    endcase

                    cache_mem_next.wmask = d_wmask;
                    cache_mem_next.wdata = d_wdata;
    
                    d_addr[1:0] = 2'b00;
                    accessing_cache = '1;
                    state_next = store_idle;
                    
                    if (store_mem[store_head_reg[STORE_MEM_ADDR_WIDTH - 1:0] + 1'b1].rob_num == commited_rob)
                    begin
                        
                        state_next = load;
                    end
                    
                end

               
                else // waiting for cache response
                begin
                    state_next = load;

                end
            end
            store_idle:
            begin
                if (data_valid)
                begin
                    store_head_next = store_head_reg + 1'd1;
                    store_dequeue_mem_next = store_mem[store_head_reg[STORE_MEM_ADDR_WIDTH - 1:0]+1'b1];
                    store_dequeue_mem_next.valid = 1'b0;

                    cdb_mem.rob_idx = store_dequeue_mem_next.rob_num;
                    cdb_mem.pd_s    = '0;
                    cdb_mem.rd_s    = '0;
                    cdb_mem.valid   = '1;
                    cdb_mem.inst    = store_dequeue_mem_next.inst;
                    cdb_mem.addr    = store_dequeue_mem_next.addr;
                    cdb_mem.rmask   = '0;
                    cdb_mem.wmask   = store_dequeue_mem_next.wmask;
                    cdb_mem.rdata   = '0;
                    cdb_mem.wdata   = store_dequeue_mem_next.wdata;
                    cdb_mem.rs1_rdata = store_dequeue_mem_next.rs1_rdata;
                    cdb_mem.rs2_rdata = store_dequeue_mem_next.rs2_rdata;
                    cdb_mem.rd_s = '0;
                    cdb_mem.rd_v = '0;
                    state_next = load;
                end
                else
                begin
                    state_next = store_idle;
                end
            end
            default:
            begin
                state_next = state;
            end
        endcase

    end

  
    
    
    
   
endmodule : split_lsq
    