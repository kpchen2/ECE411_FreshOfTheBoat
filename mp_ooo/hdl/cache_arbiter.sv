module cache_arbiter
    (
        input logic clk,
        input logic rst,

        /* INSTRUCTION RELEVANT SIGNALS */
        input logic [31:0] i_dfp_addr,
        input logic i_dfp_read,
        // output logic i_dfp_write, we will never write to instruction memory
        output logic  [255:0] i_dfp_rdata,
        // input logic  [255:0] i_dfp_wdata,      // FILL WHEN WE WANT TO WRITE we will never write to instruction memory
        output logic i_dfp_resp,   

        /* DATA RELEVANT SIGNALS */
        input logic [31:0] d_dfp_addr,
        input logic d_dfp_read,
        input logic d_dfp_write,
        output logic  [255:0] d_dfp_rdata,
        input logic  [255:0] d_dfp_wdata,      // FILL WHEN WE WANT TO WRITE
        output logic d_dfp_resp,           

        output logic [31:0] bmem_addr,
        output logic bmem_read,
        output logic bmem_write,
        output logic   [63:0]      bmem_wdata,
        input  logic     bmem_rvalid,
        input logic [255:0] bmem_rdata


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
        else if (bmem_rvalid)
        begin
            state <= state_next;
            d_dfp_read_reg <= d_dfp_read_next;
            d_dfp_write_reg <= d_dfp_write_next;
            i_dfp_read_reg <= i_dfp_read_next;
        end
        else
        begin
            state <= state;
            d_dfp_read_reg <= d_dfp_read_reg;
            d_dfp_write_reg <= d_dfp_write_reg;
            i_dfp_read_reg <= i_dfp_read_reg;
        end
    end
    always_comb
    begin
        state_next = state;
        d_dfp_read_next = d_dfp_read_reg;
        d_dfp_write_next = d_dfp_write_reg;
        i_dfp_read_next = i_dfp_read_reg;
        d_dfp_resp = '0;
        d_dfp_rdata = '0;
        i_dfp_resp = '0;
        i_dfp_rdata = '0;
        bmem_read = '0;
        bmem_addr = '0;
        bmem_write = '0;
        bmem_wdata = '0;
        unique case (state)
            idle: 
            begin
                d_dfp_resp = '0;
                d_dfp_rdata = '0;
                i_dfp_resp = '0;
                i_dfp_rdata = '0;
                bmem_read = '0;
                bmem_addr = '0;
                bmem_write = '0;
                bmem_wdata = '0;

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
                // send i_reg out to burst memory
                d_dfp_resp = '0;
                d_dfp_rdata = '0;
                i_dfp_resp = 1'b0;
                i_dfp_rdata = '0;
                bmem_read = i_dfp_read_reg;
                bmem_addr = i_dfp_addr;
                bmem_write = '0;
                bmem_wdata = '0;
                
                if (bmem_rvalid)
                begin
                    i_dfp_resp = 1'b1;
                    i_dfp_rdata = bmem_rdata;
                end
                else
                begin
                    i_dfp_resp = 1'b0;
                    i_dfp_rdata = '0;
                end

                if (~d_dfp_read && ~d_dfp_write && ~i_dfp_read)
                begin
                    state_next = idle;
                    d_dfp_read_next = 1'b0;
                    d_dfp_write_next = 1'b0;
                    i_dfp_read_next = 1'b0;
                end
                else if ( (d_dfp_read || d_dfp_write) && ~i_dfp_read)
                begin
                    state_next = d;
                    d_dfp_read_next = (d_dfp_read) ? 1'b1 : 1'b0;
                    d_dfp_write_next = (d_dfp_write ) ? 1'b1: 1'b0;
                    i_dfp_read_next = 1'b0;
                end
                else if (~d_dfp_read && ~d_dfp_write && i_dfp_read)
                begin
                    state_next = i;
                    d_dfp_read_next = 1'b0;
                    d_dfp_write_next = 1'b0;
                    i_dfp_read_next = 1'b1;
                end
                else if ( (d_dfp_read || d_dfp_write) && i_dfp_read)
                begin
                    state_next = d;
                    d_dfp_read_next = d_dfp_read ? 1'b1 : 1'b0;
                    d_dfp_write_next = d_dfp_write ? 1'b1 : 1'b0;
                    i_dfp_read_next = 1'b1;
                end
            end
            d:
            begin
                // send d_reg out to burst memory
                d_dfp_resp = '0;
                d_dfp_rdata = '0;
                i_dfp_resp = 1'b0;
                i_dfp_rdata = '0;
                bmem_read = d_dfp_read_reg;
                bmem_addr = d_dfp_addr;
                bmem_write = d_dfp_write_reg;
                bmem_wdata = d_dfp_wdata;

                if (bmem_rvalid)
                begin
                    d_dfp_rdata = bmem_rdata;
                    d_dfp_resp = 1'b1; 
                end
                else
                begin
                    d_dfp_rdata = '0;
                    d_dfp_resp = '0;
                end

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
                else if ( (~d_dfp_read && ~d_dfp_write ) && i_dfp_read)
                begin
                    state_next = i;
                    d_dfp_read_next = 1'b0;
                    d_dfp_write_next = 1'b0;
                    i_dfp_read_next = 1'b1;
                end
                else if ((d_dfp_read || d_dfp_write ) && i_dfp_read)
                begin
                    state_next = i;
                    d_dfp_read_next = 1'b1;
                    d_dfp_write_next = 1'b1;
                    i_dfp_read_next = 1'b1;
                end
            end
            
        endcase

    end
endmodule : cache_arbiter