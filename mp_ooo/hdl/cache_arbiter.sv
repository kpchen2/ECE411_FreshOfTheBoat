module cache_arbiter
    (
        input logic clk,
        input logic rst,

        // input logic [31:0] i_ufp_addr,
        // input logic [3:0] ufp_rmask,
        // input logic [3:0]ufp_wmask ,            // This will always be 0
        // output logic [31:0]ufp_rdata,
        // input logic [31:0]ufp_wdata,          // FILL WHEN WE WANT TO WRITE
        // output logic ufp_resp,

        output logic [31:0] i_dfp_addr,
        output logic i_dfp_read,
        output logic i_dfp_write,
        input logic  [255:0] i_dfp_rdata,
        output logic  [255:0] i_dfp_wdata,      // FILL WHEN WE WANT TO WRITE
        input logic i_dfp_resp,

        output logic [31:0] d_dfp_addr,
        output logic d_dfp_read,
        output logic d_dfp_write,
        input logic  [255:0] d_dfp_rdata,
        output logic  [255:0] d_dfp_wdata,      // FILL WHEN WE WANT TO WRITE
        input logic d_dfp_resp
    );


    enum int unsigned {
        idle,
        i,
        d
        
    } state, state_next;

    logic d_dfp_read_next;
    logic d_dfp_write_next;

    logic d_dfp_read_reg;
    logic d_dfp_write_reg;

    logic i_dfp_read_next;
    logic i_dfp_read_reg;   // retain data until we reach state
                            // we will never write to instruction memory
    always_ff @ (posedge clk)
    begin
        if (rst)
        begin
            state <= idle;
            d_dfp_read_reg <= 1'b0;
            d_dfp_write_reg <= 1'b0;
            i_dfp_read_reg <= 1'b0;
        end
        else 
        begin
            state <= state_next;
            d_dfp_read_reg <= d_dfp_read_next;
            d_dfp_write_reg <= d_dfp_write_next;
            i_dfp_read_reg <= i_dfp_read_next;
        end
    end
    always_comb
    begin
        state_next = state;
        d_dfp_read_next = 1'b0;
        d_dfp_write_next = 1'b0;
        i_dfp_read_next = 1'b0;
        unique case (state)
            idle: 
            begin
                if (~d_dfp_read && ~d_dfp_write && ~i_dfp_read)
                begin
                    state_next = idle;
                    d_dfp_read_next = 1'b0;
                    d_dfp_write_next = 1'b0;
                    i_dfp_read_next = 1'b0;
                end
                else if ( (d_dfp_read || d_dfp_write ) && ~i_dfp_read)
                begin
                    state_next = d;
                    d_dfp_read_next = (d_dfp_read ? 1'b1 : 1'b0);
                    d_dfp_write_next = d_dfp_write ? 1'b1 : 1'b0;
                    i_dfp_read_next = 1'b0;
                end
                else if ( i_dfp_read && ~d_dfp_read && ~d_dfp_write)
                begin
                    state_next = i;
                    d_dfp_read_next = 1'b0;
                    d_dfp_write_next = 1'b0;
                    i_dfp_read_next = 1'b1;
                end
                else if ((d_dfp_read || d_dfp_write ) && i_dfp_read )
                begin
                    state_next = d;
                    d_dfp_read_next = (d_dfp_read ? 1'b1 : 1'b0);
                    d_dfp_write_next = d_dfp_write ? 1'b1 : 1'b0;
                    i_dfp_read_next = 1'b1;
                end

            end

            i:
            begin

            end
            d:
            begin
                // send d_reg out to burst memory
                if (~d_dfp_read && ~d_dfp_write && ~i_dfp_read)
                begin
                    state_next = idle;
                    d_dfp_read_next = (d_dfp_read ? 1'b1 : 1'b0);
                    d_dfp_write_next = d_dfp_write ? 1'b1 : 1'b0;
                    i_dfp_read_next = 1'b1; 
                end
                else if ( (d_dfp_read || d_dfp_write ) && ~i_dfp_read)
                begin
                    state_next = d;
                    d_dfp_read_next = (d_dfp_read ? 1'b1 : 1'b0);
                    d_dfp_write_next = d_dfp_write ? 1'b1 : 1'b0;
                    i_dfp_read_next = 1'b0;
                end
            end
            
        endcase

    end
endmodule : cache_arbiter