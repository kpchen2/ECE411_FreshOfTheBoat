

module reservation_station
import rv32i_types::*;
    (
        input logic  clk,
        input logic  rst,
        // input logic [31:0] instruction,
        input rvfi_info rename_dispatch_rvfi,
        input logic dispatch_valid,
        input logic [1:0] rs_select  , // select rs, inherit from dispatch, 
        input logic dispatch_ps_ready1   , // if the ps is ready
        input logic dispatch_ps_ready2,     // if the ps is ready
        input logic [5:0] ps1      , // ps1, inherited from rename/dispatch
        input logic [5:0] ps2      , // ps2, inherited from rename/dispatch
        input logic [4:0] rd       ,// the arch dest register, inherited from free list, don't know width
        input logic [5:0] pd       , // the phys dest register, inherited from free list, don't know width
        input logic [5:0] rob_entry , // rob entry, inherited from rob, don't know width
        input logic [5:0] cdb_ps_id_add       ,   // cdb tells us if a busy register can be marked as unbusy
        input logic [5:0] cdb_ps_id_multiply,
        input logic [5:0] cdb_ps_id_divide,
        input decode_info_t decode_info_in,


        input logic add_fu_busy,            // from FU, let us know if FU is busy currently
        input logic multiply_fu_busy,
        input logic divide_fu_busy,
        
        
        // output logic add_regf_we,           //set based on if we are ready to issue from rs, not sure if we feed to regf or FU
        // output logic multiply_regf_we,
        // output logic divide_regf_we,
        
        output rvfi_info reservation_station_rvfi, 

        output logic add_fu_ready,           // tell FU if we are ready to feed it inputs
        output logic divide_fu_ready,
        output logic multiply_fu_ready,

        output logic [5:0] add_rob_entry,
        output logic [5:0] multiply_rob_entry,
        output logic [5:0] divide_rob_entry,

        output logic [5:0] add_pd,
        output logic [5:0] multiply_pd,
        output logic [5:0] divide_pd,

        output logic [4:0] add_rd,
        output logic [4:0 ] multiply_rd,
        output logic [4:0] divide_rd,

        output logic add_full,      // if the RS is full
        output logic multiply_full,
        output logic divide_full,

        output decode_info_t add_decode_info_out,
        output decode_info_t multiply_decode_info_out,
        output decode_info_t divide_decode_info_out,

        output logic [5:0] add_ps1,
        output logic [5:0] add_ps2,

        output logic [5:0] multiply_ps1,
        output logic [5:0] multiply_ps2,

        output logic [5:0] divide_ps1,
        output logic [5:0] divide_ps2,
        // Not sure if CDB might output anything to the RS

        input  logic       regf_we_add,
        input  logic       regf_we_mul,
        input  logic       regf_we_div
    );


    //actual registers
    add_reservation_station_data add_reservation_station [NUM_ADD_REGISTERS];
    multiply_reservation_station_data multiply_reservation_station [NUM_MULTIPLY_REGISTERS];
    divide_reservation_station_data divide_reservation_station [NUM_DIVIDE_REGISTERS];
    // combinational wires
    add_reservation_station_data add_reservation_station_entry_next; // this is for writing a new entry
    multiply_reservation_station_data multiply_reservation_station_entry_next; // this is for writing a new entry
    divide_reservation_station_data divide_reservation_station_entry_next;

    add_reservation_station_data add_reservation_station_entry_new; // this is for updating an entry, changing it's busy and register flags 
    multiply_reservation_station_data multiply_reservation_station_entry_new; // this is for updating an entry, changing it's busy and register flags
    divide_reservation_station_data divide_reservation_station_entry_new;


    logic [31:0] next_free_entry; // next free entry

    // assert(entries[next_free_reg].valid != 1) // note left by Alex Maiorov during office hours

    logic [31:0] next_done_add_entry; // next done entry
    logic [31:0] next_done_multiply_entry;
    logic [31:0] next_done_divide_entry;

    logic [$clog2(MAX_ISSUES) :0] num_issues;

    logic add_fu_full;          // functional_unit full
    // logic add_fu_full_reg;
    logic multiply_fu_full;
    // logic multiply_fu_full_reg;      // functional_unit full
    logic divide_fu_full;
    // logic divide_fu_full_reg;

    logic [1:0] rs_select_reg; // reg equivalent of rs_select
    logic [5:0] cdb_ps_id_add_reg;  //reg equivalent of cdb_ps_id_add
    logic [5:0] cdb_ps_id_multiply_reg;
    logic [5:0] cdb_ps_id_divide_reg;
    
    logic insert_add;
    logic insert_multiply;
    logic insert_divide;

    logic remove_add;
    logic remove_multiply;
    logic remove_divide;

    // logic busy_reg_dummy; //for testing purposes
    
    assign reservation_station_rvfi = rename_dispatch_rvfi;

    always_ff @ (posedge clk)
    begin
        cdb_ps_id_add_reg <= cdb_ps_id_add;
        cdb_ps_id_multiply_reg <= cdb_ps_id_multiply;
        cdb_ps_id_divide_reg <= cdb_ps_id_divide;

        /* * * * * * reset logic * * * * * * */
        if (rst)
        begin
            for (int i = 0 ; i < NUM_ADD_REGISTERS; i ++)
            begin
                add_reservation_station[i] <= '0;
            end
            for (int i = 0 ; i < NUM_MULTIPLY_REGISTERS; i++)
            begin
                multiply_reservation_station[i] <= '0;
            end
            for (int i = 0 ; i < NUM_MULTIPLY_REGISTERS; i++)
            begin
                divide_reservation_station[i] <= '0;
            end
            rs_select_reg <= '0;
            // add_fu_full_reg <= '0;
            // multiply_fu_full_reg <= '0;
            // busy_reg_dummy <= 1'b0;
        end
        else
        begin

            
            /* * * * * * add entry  * * * * */

            // next_free_entry_reg <= next_free_entry; // track the next free entry
            rs_select_reg <= rs_select;             // which reservation station do we update?
            // add_fu_full_reg <= add_fu_full;                 //
            // multiply_fu_full_reg <= multiply_fu_full;
            // busy_reg_dummy <= add_reservation_station_entry_next.busy;
            if (insert_add && ~add_fu_full)
            begin
                add_reservation_station[next_free_entry] <= add_reservation_station_entry_next; // add a new entry
            end
            if (insert_multiply && ~multiply_fu_full)
            begin
                multiply_reservation_station[next_free_entry] <= multiply_reservation_station_entry_next;
            end
            if (insert_divide && ~divide_fu_full)
            begin
                divide_reservation_station[next_free_entry] <= divide_reservation_station_entry_next;
            end

            /* * * * * * * remove entry (if all three valids are high) * * * * * * * */
          
            if (remove_multiply)
            begin
               multiply_reservation_station[next_done_multiply_entry] <= multiply_reservation_station_entry_new;
            end
            if(remove_add)
            begin
                add_reservation_station[next_done_add_entry] <= add_reservation_station_entry_new;
            end
            if (remove_divide)
            begin
                divide_reservation_station[next_done_divide_entry] <= divide_reservation_station_entry_new;
            end
            // /* * * * * * * update entry (according to cdb_ps_id) * * * * *  */

            for (int i = 0; i < NUM_DIVIDE_REGISTERS; i++)
            begin
                if ((regf_we_div && divide_reservation_station[i].ps1 == cdb_ps_id_divide_reg) || (regf_we_mul && divide_reservation_station[i].ps1 == cdb_ps_id_multiply_reg) || (regf_we_add && divide_reservation_station[i].ps1 == cdb_ps_id_add_reg))
                begin
                    divide_reservation_station[i].ps1_v <= 1'b1;
                end
                if ((regf_we_div && divide_reservation_station[i].ps2 == cdb_ps_id_divide_reg) || (regf_we_mul && divide_reservation_station[i].ps2 == cdb_ps_id_multiply_reg) || (regf_we_add && divide_reservation_station[i].ps2 == cdb_ps_id_add_reg))
                begin
                    divide_reservation_station[i].ps2_v <= 1'b1;
                end
            end 

            for (int i = 0; i < NUM_MULTIPLY_REGISTERS; i++)
            begin
                if ((regf_we_div && multiply_reservation_station[i].ps1 == cdb_ps_id_divide_reg) || (regf_we_mul && multiply_reservation_station[i].ps1 == cdb_ps_id_multiply_reg) || (regf_we_add && multiply_reservation_station[i].ps1 == cdb_ps_id_add_reg))
                begin
                    multiply_reservation_station[i].ps1_v <= 1'b1;
                end
                if ((regf_we_div && multiply_reservation_station[i].ps2 == cdb_ps_id_divide_reg) || (regf_we_mul && multiply_reservation_station[i].ps2 == cdb_ps_id_multiply_reg) || (regf_we_add && multiply_reservation_station[i].ps2 == cdb_ps_id_add_reg))
                begin
                    multiply_reservation_station[i].ps2_v <= 1'b1;
                end
            end 

            for (int i = 0 ; i < NUM_ADD_REGISTERS; i++)
            begin
                if ((regf_we_div && add_reservation_station[i].ps1 == cdb_ps_id_divide_reg) || (regf_we_mul && add_reservation_station[i].ps1 == cdb_ps_id_multiply_reg) || (regf_we_add && add_reservation_station[i].ps1 == cdb_ps_id_add_reg))
                begin
                    add_reservation_station[i].ps1_v <= 1'b1;
                end
                if ((regf_we_div && add_reservation_station[i].ps2 == cdb_ps_id_divide_reg) || (regf_we_mul && add_reservation_station[i].ps2 == cdb_ps_id_multiply_reg) || (regf_we_add && add_reservation_station[i].ps2 == cdb_ps_id_add_reg))
                begin
                    add_reservation_station[i].ps2_v <= 1'b1;
                end
            end
        end
    end



    /* * * * * * * * * * * Input logic, add entry * * * * * * * * * * * * * * */
    always_comb
    begin
        insert_add = 1'b0;
        insert_multiply = 1'b0;
        insert_divide = 1'b0;
        add_reservation_station_entry_next = add_reservation_station[0];
        multiply_reservation_station_entry_next = multiply_reservation_station[0];
        divide_reservation_station_entry_next = divide_reservation_station[0];

        next_free_entry = '0;

        /* * * * * * * We selected Add RS * * * * * * */
        if (dispatch_valid)
        begin
            if (rs_select == 2'd0) 
            begin
                insert_add = 1'b1;
                add_reservation_station_entry_next.busy = 1'b1; // mark as busy
                add_reservation_station_entry_next.ps1_v = dispatch_ps_ready1;
                add_reservation_station_entry_next.ps2_v = dispatch_ps_ready2;
                add_reservation_station_entry_next.ps1 = ps1;
                add_reservation_station_entry_next.ps2 = ps2;
                add_reservation_station_entry_next.pd = pd;
                add_reservation_station_entry_next.rd = rd;
                add_reservation_station_entry_next.rob_entry = rob_entry;
                add_reservation_station_entry_next.decode_info = decode_info_in;
                for (int i = 0; i < NUM_ADD_REGISTERS; i++)
                begin
                    if (~add_reservation_station[i].busy)
                    begin
                        next_free_entry = i;
                        break;
                    end
                end
            end

        /* * * * * * * We selected Multiply RS * * * * * * */

            else if (rs_select == 2'd1) 
            begin
                insert_multiply = 1'b1;
                multiply_reservation_station_entry_next.busy = 1'b1; // mark as busy
                multiply_reservation_station_entry_next.ps1_v = dispatch_ps_ready1;
                multiply_reservation_station_entry_next.ps2_v = dispatch_ps_ready2;
                multiply_reservation_station_entry_next.ps1 = ps1;
                multiply_reservation_station_entry_next.ps2 = ps2;
                multiply_reservation_station_entry_next.pd = pd;
                multiply_reservation_station_entry_next.rd = rd;
                multiply_reservation_station_entry_next.rob_entry = rob_entry;
                multiply_reservation_station_entry_next.decode_info = decode_info_in;
                for (int i = 0; i < NUM_MULTIPLY_REGISTERS; i++)
                begin
                    if (~multiply_reservation_station[i].busy)
                    begin
                        next_free_entry = i;
                        break;
                    end
                end
            end

            else if (rs_select == 2'd2) 
            begin
                insert_divide = 1'b1;
                divide_reservation_station_entry_next.busy = 1'b1; // mark as busy
                divide_reservation_station_entry_next.ps1_v = dispatch_ps_ready1;
                divide_reservation_station_entry_next.ps2_v = dispatch_ps_ready2;
                divide_reservation_station_entry_next.ps1 = ps1;
                divide_reservation_station_entry_next.ps2 = ps2;
                divide_reservation_station_entry_next.pd = pd;
                divide_reservation_station_entry_next.rd = rd;
                divide_reservation_station_entry_next.rob_entry = rob_entry;
                divide_reservation_station_entry_next.decode_info = decode_info_in;
                for (int i = 0; i < NUM_DIVIDE_REGISTERS; i++)
                begin
                    if (~divide_reservation_station[i].busy)
                    begin
                        next_free_entry = i;
                        break;
                    end
                end
            end
        end
    end
    /* * * * * * * * * Input logic, remove entry * * * * * * */
  
    always_comb
    begin
        num_issues = '0;
        // add_regf_we = 1'b0;
        // multiply_regf_we = 1'b0;
        // divide_regf_we = 1'b0;

        add_reservation_station_entry_new = add_reservation_station[0];
        multiply_reservation_station_entry_new = multiply_reservation_station[0];
        divide_reservation_station_entry_new = divide_reservation_station[0];

        next_done_multiply_entry = '0;
        next_done_add_entry = '0;
        next_done_divide_entry = '0;

        multiply_fu_ready = 1'b0;
        add_fu_ready = 1'b0;
        divide_fu_ready = 1'b0;

        add_pd = '0;
        multiply_pd = '0;
        divide_pd = '0;

        add_rob_entry = '0;
        multiply_rob_entry = '0;
        divide_rob_entry= '0;

        add_rd = '0;
        multiply_rd  = '0;
        divide_rd = '0;

        remove_add = 1'b0;
        remove_multiply = 1'b0;
        remove_divide = 1'b0;

        add_decode_info_out = '0;
        multiply_decode_info_out = '0;
        divide_decode_info_out = '0;

        add_ps1 = '0;
        add_ps2 = '0;

        multiply_ps1 = '0;
        multiply_ps2 = '0;

        divide_ps1 = '0;
        divide_ps2 = '0;
        if (~multiply_fu_busy && (num_issues <= 3'd4))
        begin
            for (int i = 0; i < NUM_MULTIPLY_REGISTERS; i++)
            begin
                if (multiply_reservation_station[i].busy && multiply_reservation_station[i].ps1_v && multiply_reservation_station[i].ps2_v)
                begin    
                    next_done_multiply_entry = i;
                    multiply_reservation_station_entry_new = multiply_reservation_station[i];
                    multiply_reservation_station_entry_new.busy = 1'b0;
                    // multiply_regf_we = 1'b1;
                    multiply_fu_ready = 1'b1;
                    multiply_pd = multiply_reservation_station_entry_new.pd;
                    multiply_rd = multiply_reservation_station_entry_new.rd;
                    multiply_rob_entry = multiply_reservation_station_entry_new.rob_entry;
                    multiply_decode_info_out = multiply_reservation_station_entry_new.decode_info;
                    num_issues = num_issues + 1'd1;
                    remove_multiply = 1'b1;
                    multiply_ps1 = multiply_reservation_station_entry_new.ps1;
                    multiply_ps2 = multiply_reservation_station_entry_new.ps2;
                    break;
                end
            end
        end

        if (~add_fu_busy && (num_issues <= 3'd4))
        begin
            for (int i = 0; i < NUM_ADD_REGISTERS; i++)
            begin
                if (add_reservation_station[i].busy && add_reservation_station[i].ps1_v && add_reservation_station[i].ps2_v)
                begin
                    next_done_add_entry = i;
                    add_reservation_station_entry_new = add_reservation_station[i];
                    add_reservation_station_entry_new.busy = 1'b0;
                    // add_regf_we = 1'b1;
                    add_fu_ready = 1'b1;
                    add_pd = add_reservation_station_entry_new.pd;
                    add_rd = add_reservation_station_entry_new.rd;
                    add_rob_entry = add_reservation_station_entry_new.rob_entry;
                    add_decode_info_out = add_reservation_station_entry_new.decode_info;
                    remove_add = 1'b1;
                    num_issues = num_issues + 1'd1;
                    add_ps1 = add_reservation_station_entry_new.ps1;
                    add_ps2 = add_reservation_station_entry_new.ps2;
                    break;
                end
            end
        end
        if (~divide_fu_busy && (num_issues <= 3'd4))
        begin
            for (int i = 0; i < NUM_DIVIDE_REGISTERS; i++)
            begin
                if (divide_reservation_station[i].busy && divide_reservation_station[i].ps1_v && divide_reservation_station[i].ps2_v)
                begin    
                    next_done_divide_entry = i;
                    divide_reservation_station_entry_new = divide_reservation_station[i];
                    divide_reservation_station_entry_new.busy = 1'b0;
                    // divide_regf_we = 1'b1;
                    divide_fu_ready = 1'b1;
                    divide_pd = divide_reservation_station_entry_new.pd;
                    divide_rd = divide_reservation_station_entry_new.rd;
                    divide_rob_entry = divide_reservation_station_entry_new.rob_entry;
                    divide_decode_info_out = divide_reservation_station_entry_new.decode_info;
                    num_issues = num_issues + 1'd1;
                    remove_divide = 1'b1;
                    divide_ps1 = divide_reservation_station_entry_new.ps1;
                    divide_ps2 = divide_reservation_station_entry_new.ps2;
                    break;
                end
            end
        end

        /**
        * Add more as time goes on. WE NEED to output stuff in this logic
        */
    end


    /* * * * * * * * * Full Logic * * * * * * * * * */

    always_comb
    begin
        add_fu_full = 1'd1;
        multiply_fu_full = 1'd1;
        divide_fu_full = 1'd1;
        for (int i = 0; i < NUM_ADD_REGISTERS; i++)
        begin
            if (~add_reservation_station[i].busy)
            begin
                add_fu_full = 1'b0;
                break;
            end
        end
        for (int i = 0; i < NUM_MULTIPLY_REGISTERS; i++)
        begin
            if (~multiply_reservation_station[i].busy)
            begin
                multiply_fu_full = 1'b0;
                break;
            end
        end
        for (int i = 0; i < NUM_ADD_REGISTERS; i++)
        begin
            if (~divide_reservation_station[i].busy)
            begin
                divide_fu_full = 1'b0;
                break;
            end
        end
    end 

    /* * * * * * * * * Output logic * * * * * * * * * */
    assign add_full = add_fu_full;
    assign multiply_full = multiply_fu_full;
    assign divide_full = divide_fu_full;

endmodule : reservation_station
