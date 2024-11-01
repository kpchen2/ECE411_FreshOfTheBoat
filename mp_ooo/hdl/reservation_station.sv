

module reservation_station
import rv32i_types::*;
    (
        input logic  clk,
        input logic  rst,
        input logic [31:0] address,
        input logic [1:0] rs_select  , // select rs, inherit from dispatch, 
        input logic [31:0] rat_ps_id , // ps_id inherited from RAT, don't know width
        input logic rat_ps_ready   , // if the ps is ready
        input logic [31:0] rd       ,// the arch dest register, inherited from free list, don't know width
        input logic [31:0] pd       , // the phys dest register, inherited from free list, don't know width
        input logic [31:0] rob_entry , // rob entry, inherited from rob, don't know width
        input logic fu_busy,            // from FU, let us know if FU is busy currently
        output logic regf_we,           //set based on if we are ready to issue from rs, not sure if we feed to regf or FU
        output logic fu_ready           // tell FU if we are ready to feed it inputs
        // Not sure if CDB might output anything to the RS
    );

    add_reservation_station_data add_reservation_station [NUM_ADD_REGISTERS];
    multiply_reservation_station_data multiply_reservation_station [NUM_MULTIPLY_REGISTERS];

    always_ff @ (posedge clk)
    begin
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
        end
    end

    always_comb
    begin

    end

endmodule : reservation_station
