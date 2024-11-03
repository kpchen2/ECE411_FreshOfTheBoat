

module reservation_station
import rv32i_types::*;
    (
        input logic  clk,
        input logic  rst,
        // input logic [31:0] instruction,
        input logic dispatch_valid,
        input logic [1:0] rs_select  , // select rs, inherit from dispatch, 
        // input logic [31:0] dispatch_ps_id1 , // ps_id inherited from RAT, don't know width
        // input logic [31:0] dispatch_ps_id2 , // ps_id inherited from RAT, don't know width
        input logic dispatch_ps_ready1   , // if the ps is ready
        input logic dispatch_ps_ready2,     // if the ps is ready
        input logic [31:0] ps1      , // ps1, inherited from rename/dispatch
        input logic [31:0] ps2      , // ps2, inherited from rename/dispatch
        input logic [31:0] rd       ,// the arch dest register, inherited from free list, don't know width
        input logic [31:0] pd       , // the phys dest register, inherited from free list, don't know width
        input logic [31:0] rob_entry , // rob entry, inherited from rob, don't know width
        input logic [31:0] cdb_ps_id       ,   // cdb tells us if a busy register can be marked as unbusy
        input logic add_fu_busy,            // from FU, let us know if FU is busy currently
        input logic multiply_fu_busy,
        output logic add_regf_we,           //set based on if we are ready to issue from rs, not sure if we feed to regf or FU
        output logic multiply_regf_we,
        output logic add_fu_ready,           // tell FU if we are ready to feed it inputs
        output logic multiply_fu_ready,
        output cdb_rs_output multiply_cdb,
        output cdb_rs_output add_cdb     
        // Not sure if CDB might output anything to the RS
    );


    //actual registers
    add_reservation_station_data add_reservation_station [NUM_ADD_REGISTERS];
    multiply_reservation_station_data multiply_reservation_station [NUM_MULTIPLY_REGISTERS];

    // combinational wires
    add_reservation_station_data add_reservation_station_entry_next; // this is for writing a new entry
    multiply_reservation_station_data multiply_reservation_station_entry_next; // this is for writing a new entry

    add_reservation_station_data add_reservation_station_entry_new; // this is for updating an entry, changing it's busy and register flags 
    multiply_reservation_station_data multiply_reservation_station_entry_new; // this is for updating an entry, changing it's busy and register flags

    logic [31:0] next_free_entry; // next free entry

    // assert(entries[next_free_reg].valid != 1) // note left by Alex Maiorov during office hours

    logic [31:0] next_done_add_entry; // next done entry
    logic [31:0] next_done_multiply_entry;

    logic [2:0] num_issues;

    logic add_fu_full;          // functional_unit full
    logic add_fu_full_reg;
    logic multiply_fu_full;
    logic multiply_fu_full_reg;      // functional_unit full
    logic [1:0] rs_select_reg; // reg equivalent of rs_select
    logic [31:0] cdb_ps_id_reg;  //reg equivalent of cdb_ps_id
    
    logic remove_add;
    logic remove_multiply;

    logic busy_reg_dummy; //for testing purposes
    
    always_ff @ (posedge clk)
    begin
        cdb_ps_id_reg <= cdb_ps_id;

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
            rs_select_reg <= '0;
            add_fu_full_reg <= '0;
            multiply_fu_full_reg <= '0;
            busy_reg_dummy <= 1'b0;
        end
        else
        begin

            
            /* * * * * * add entry  * * * * */

            // next_free_entry_reg <= next_free_entry; // track the next free entry
            rs_select_reg <= rs_select;             // which reservation station do we update?
            add_fu_full_reg <= add_fu_full;                 //
            multiply_fu_full_reg <= multiply_fu_full;
            busy_reg_dummy <= add_reservation_station_entry_next.busy;
            
            add_reservation_station[next_free_entry] <= add_reservation_station_entry_next; // add a new entry
            multiply_reservation_station[next_free_entry] <= multiply_reservation_station_entry_next;
            

            /* * * * * * * remove entry (if all three valids are high) * * * * * * * */
          
            if (remove_multiply)
            begin
               multiply_reservation_station[next_done_multiply_entry] <= multiply_reservation_station_entry_new;
            end
            if(remove_add)
            begin
                add_reservation_station[next_done_add_entry] <= add_reservation_station_entry_new;
            end
        
            // /* * * * * * * update entry (according to cdb_ps_id) * * * * *  */

            // for (int i = 0; i < NUM_MULTIPLY_REGISTERS; i++)
            // begin
            //     if (multiply_reservation_station[i].ps1 == cdb_ps_id_reg)
            //     begin
            //         multiply_reservation_station[i].ps1_v <= 1'b1;
            //     end
            //     if (multiply_reservation_station[i].ps2 == cdb_ps_id_reg)
            //     begin
            //         multiply_reservation_station[i].ps2_v <= 1'b1;
            //     end
            // end 

            // for (int i = 0 ; i < NUM_ADD_REGISTERS; i++)
            // begin
            //     if (add_reservation_station[i].ps1 == cdb_ps_id_reg)
            //     begin
            //         add_reservation_station[i].ps1_v <= 1'b1;
            //     end
            //     if (add_reservation_station[i].ps2 == cdb_ps_id_reg)
            //     begin
            //         add_reservation_station[i].ps2_v <= 1'b1;
            //     end
            // end
        end
    end



    /* * * * * * * * * * * Input logic, add entry * * * * * * * * * * * * * * */
    always_comb
    begin
        add_reservation_station_entry_next = add_reservation_station[0];
        multiply_reservation_station_entry_next = multiply_reservation_station[0];

        add_fu_full = 1'd1;
        multiply_fu_full = 1'd1;
        next_free_entry = '0;

        /* * * * * * * We selected Add RS * * * * * * */

        if (rs_select == 2'd0 && dispatch_valid) 
        begin
            add_reservation_station_entry_next.busy = 1'b1; // mark as busy
            add_reservation_station_entry_next.ps1_v = dispatch_ps_ready1;
            add_reservation_station_entry_next.ps2_v = dispatch_ps_ready2;
            add_reservation_station_entry_next.ps1 = ps1;
            add_reservation_station_entry_next.ps2 = ps2;
            add_reservation_station_entry_next.pd = pd;
            add_reservation_station_entry_next.rd = rd;
            add_reservation_station_entry_next.rob_entry = rob_entry;
            for (int i = 0; i < NUM_ADD_REGISTERS; i++)
            begin
                if (~add_reservation_station[i].busy)
                begin
                    next_free_entry = i;
                    add_fu_full = 1'd0;
                    break;
                end
            end



        end

        /* * * * * * * We selected Multiply RS * * * * * * */

        else if (rs_select == 2'd1 && dispatch_valid) 
        begin

            multiply_reservation_station_entry_next.busy = 1'b1; // mark as busy
            multiply_reservation_station_entry_next.ps1_v = dispatch_ps_ready1;
            multiply_reservation_station_entry_next.ps2_v = dispatch_ps_ready2;
            multiply_reservation_station_entry_next.ps1 = ps1;
            multiply_reservation_station_entry_next.ps2 = ps2;
            multiply_reservation_station_entry_next.pd = pd;
            multiply_reservation_station_entry_next.rd = rd;
            multiply_reservation_station_entry_next.rob_entry = rob_entry;
            for (int i = 0; i < NUM_MULTIPLY_REGISTERS; i++)
            begin
                if (~multiply_reservation_station[i].busy)
                begin
                    next_free_entry = i;
                    multiply_fu_full = 1'd0;
                    break;
                end
            end
        end
    end

    /* * * * * * * * * Input logic, remove entry * * * * * * */
  
    always_comb
    begin
        num_issues = '0;
        add_regf_we = 1'b0;
        multiply_regf_we = 1'b0;
        add_reservation_station_entry_new = add_reservation_station[0];
        multiply_reservation_station_entry_new = multiply_reservation_station[0];
        next_done_multiply_entry = '0;
        next_done_add_entry = '0;
        multiply_fu_ready = 1'b0;
        add_fu_ready = 1'b0;
        add_cdb = '0;
        multiply_cdb = '0;
        remove_add = 1'b0;
        remove_multiply = 1'b0;

        if (~multiply_fu_busy && (num_issues <= 3'd4))
        begin
            for (int i = 1; i < NUM_MULTIPLY_REGISTERS; i++)
            begin
                if (multiply_reservation_station[i].busy && multiply_reservation_station[i].ps1_v && multiply_reservation_station[i].ps2_v)
                begin    
                    next_done_multiply_entry = i;
                    multiply_reservation_station_entry_new = multiply_reservation_station[i];
                    multiply_reservation_station_entry_new.busy = 1'b0;
                    multiply_regf_we = 1'b1;
                    multiply_fu_ready = 1'b1;
                    multiply_cdb.ps1 = multiply_reservation_station_entry_new.ps1;
                    multiply_cdb.ps2 = multiply_reservation_station_entry_new.ps2;
                    multiply_cdb.pd = multiply_reservation_station_entry_new.pd;
                    multiply_cdb.rd = multiply_reservation_station_entry_new.rd;
                    multiply_cdb.rob_entry = multiply_reservation_station_entry_new.rob_entry;
                    num_issues = num_issues + 1'd1;
                    remove_multiply = 1'b1;
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
                    add_regf_we = 1'b1;
                    add_fu_ready = 1'b1;
                    add_cdb.ps1 = add_reservation_station_entry_new.ps1;
                    add_cdb.ps2 = add_reservation_station_entry_new.ps2;
                    add_cdb.pd = add_reservation_station_entry_new.pd;
                    add_cdb.rd = add_reservation_station_entry_new.rd;
                    add_cdb.rob_entry = add_reservation_station_entry_new.rob_entry;
                    remove_add = 1'b1;
                    num_issues = num_issues + 1'd1;
                    break;
                end
            end
        end


        /**
        * Add more as time goes on. WE NEED to output stuff in this logic
        */
    end

    /* * * * * * * * * Output logic * * * * * * * * * */
    

endmodule : reservation_station
