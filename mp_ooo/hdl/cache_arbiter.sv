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
        output logic mem_valid,
        output logic   [255:0]      full_burst,
        input logic bmem_ready,
        
        input logic [255:0] cache_wdata,
        input  logic     cache_valid


    );


    enum int unsigned {
        idle,
        i,
        d
        
    } state, state_next;

    logic d_dfp_read_next;
    logic d_dfp_write_next;
    logic [31:0] d_dfp_addr_next;

    logic d_dfp_read_reg;
    logic d_dfp_write_reg;
    logic [31:0] d_dfp_addr_reg;
    logic [255:0] full_burst_reg;
    logic [255:0] full_burst_next;

    logic i_dfp_read_next;
    logic i_dfp_read_reg;   // retain data until we reach state
    logic   i_dfp_read_reg2;
                                // we will never write to instruction memory
    logic [31:0] i_dfp_addr_next;
    logic [31:0] i_dfp_addr_reg;

    always_ff @ (posedge clk) begin
        if (rst)
        begin
            state <= idle;
            d_dfp_read_reg <= 1'b0;
            d_dfp_write_reg <= 1'b0;
            i_dfp_read_reg <= 1'b0;
            i_dfp_read_reg2 <= '0;
            i_dfp_addr_reg <= 32'h1eceb000;
            d_dfp_addr_reg <= 32'h00000000;
            full_burst_reg <= '0;
        end
        else if (bmem_ready)
        begin
            state <= state_next;
            d_dfp_read_reg <= d_dfp_read_next;
            d_dfp_write_reg <= d_dfp_write_next;
            i_dfp_read_reg <= i_dfp_read_next;
            i_dfp_read_reg2 <= i_dfp_read_reg;
            i_dfp_addr_reg <= i_dfp_addr_next;
            d_dfp_addr_reg <= d_dfp_addr_next;
            full_burst_reg <= full_burst_next;
        end
        else
        begin
            state <= state;
            d_dfp_read_reg <= d_dfp_read_reg;
            d_dfp_write_reg <= d_dfp_write_reg;
            i_dfp_read_reg <= i_dfp_read_reg;
            i_dfp_read_reg2 <= i_dfp_read_reg2;
            i_dfp_addr_reg <= i_dfp_addr_reg;
            d_dfp_addr_reg <= d_dfp_addr_reg;
            full_burst_reg <= full_burst_reg;
        end
    end

    always_comb begin
        state_next = state;
        d_dfp_read_next = d_dfp_read_reg;
        d_dfp_write_next = d_dfp_write_reg;
        i_dfp_read_next = i_dfp_read_reg;
        i_dfp_addr_next = i_dfp_addr_reg;
        d_dfp_addr_next = d_dfp_addr_reg;
        full_burst_next = full_burst;

        d_dfp_resp = '0;
        d_dfp_rdata = '0;
        i_dfp_resp = '0;
        i_dfp_rdata = '0;
        bmem_read = '0;
        bmem_addr = '0;
        mem_valid = '0;
        full_burst = '0;
        case (state)
            idle: 
            begin
                d_dfp_resp = '0;
                d_dfp_rdata = '0;
                i_dfp_resp = '0;
                i_dfp_rdata = '0;
                bmem_read = '0;
                bmem_addr = '0;
                mem_valid = '0;
                full_burst = '0;

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
                    full_burst_next = d_dfp_write ? d_dfp_wdata : full_burst_reg;
                    i_dfp_read_next = 1'b0;
                    d_dfp_addr_next = d_dfp_addr;
                end
                else if ( i_dfp_read && ~d_dfp_read && ~d_dfp_write)
                begin
                    state_next = i;
                    d_dfp_read_next = 1'b0;
                    d_dfp_write_next = 1'b0;
                    i_dfp_read_next = 1'b1;
                    i_dfp_addr_next = i_dfp_addr;
                end
                else if ((d_dfp_read || d_dfp_write ) && i_dfp_read )
                begin
                    state_next = d;
                    d_dfp_read_next = (d_dfp_read ? 1'b1 : 1'b0);
                    d_dfp_write_next = d_dfp_write ? 1'b1 : 1'b0;
                    full_burst_next  = d_dfp_write ? d_dfp_wdata : full_burst_reg;
                    i_dfp_read_next = 1'b1;
                    i_dfp_addr_next = i_dfp_addr;
                    d_dfp_addr_next = d_dfp_addr;
                end

            end

            i:
            begin
                // send i_reg out to burst memory
                d_dfp_resp = '0;
                d_dfp_rdata = '0;
                i_dfp_resp = 1'b0;
                i_dfp_rdata = '0;
                bmem_read = (i_dfp_read_reg && !i_dfp_read_reg2) ? '1 : '0;
                // bmem_read = i_dfp_read_reg;
                bmem_addr = i_dfp_addr_reg;
                mem_valid = '0;
                full_burst = '0;
                
                if (cache_valid)
                begin
                    i_dfp_resp = 1'b1;
                    i_dfp_rdata = cache_wdata;
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
                // else if (~d_dfp_read && ~d_dfp_write && i_dfp_read)
                else if (i_dfp_read)
                begin
                    state_next = i;
                    d_dfp_read_next = 1'b0;
                    d_dfp_write_next = 1'b0;
                    i_dfp_read_next = 1'b1;
                    i_dfp_addr_next = i_dfp_addr;
                end
                else if ( (d_dfp_read || d_dfp_write) && ~i_dfp_read)
                begin
                    state_next = d;
                    d_dfp_read_next = (d_dfp_read) ? 1'b1 : 1'b0;
                    d_dfp_write_next = (d_dfp_write ) ? 1'b1: 1'b0;
                    i_dfp_read_next = 1'b0;
                    d_dfp_addr_next = d_dfp_addr;
                    full_burst_next = d_dfp_write  ? d_dfp_wdata : full_burst_reg;
                end
                
                // else if ( (d_dfp_read || d_dfp_write) && i_dfp_read)
                // begin
                //     state_next = d;
                //     d_dfp_read_next = d_dfp_read ? 1'b1 : 1'b0;
                //     d_dfp_write_next = d_dfp_write ? 1'b1 : 1'b0;
                //     i_dfp_read_next = 1'b1;
                //     i_dfp_addr_next = i_dfp_addr;
                //     d_dfp_addr_next = d_dfp_addr;
                //     full_burst_next = d_dfp_write ? d_dfp_wdata : full_burst_reg;
                // end
            end
            
            d:
            begin
                // send d_reg out to burst memory
                d_dfp_resp = '0;
                d_dfp_rdata = '0;
                i_dfp_resp = 1'b0;
                i_dfp_rdata = '0;
                bmem_read = (d_dfp_read_reg) ? '1 : '0;
                bmem_addr = d_dfp_addr_reg;
                mem_valid = d_dfp_write_reg;
                full_burst = full_burst_reg;

                if (cache_valid)
                begin
                    d_dfp_rdata = cache_wdata;
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
                // else if ( (d_dfp_read || d_dfp_write ) && ~i_dfp_read)
                else if ( (d_dfp_read || d_dfp_write) )
                begin
                    state_next = d;
                    d_dfp_read_next = (d_dfp_read ? 1'b1 : 1'b0);
                    d_dfp_write_next = d_dfp_write ? 1'b1 : 1'b0;
                    i_dfp_read_next = 1'b0;
                    d_dfp_addr_next = d_dfp_addr;
                    full_burst_next = d_dfp_write ? d_dfp_wdata : full_burst_reg;
                end
                else if ( (~d_dfp_read && ~d_dfp_write ) && i_dfp_read)
                begin
                    state_next = i;
                    d_dfp_read_next = 1'b0;
                    d_dfp_write_next = 1'b0;
                    i_dfp_read_next = 1'b1;
                    i_dfp_addr_next = i_dfp_addr;
                end
                // else if ((d_dfp_read || d_dfp_write ) && i_dfp_read)
                // begin
                //     state_next = i;
                //     d_dfp_read_next =  d_dfp_read ? 1'b1 : 1'b0;
                //     d_dfp_write_next = d_dfp_write ? 1'b1 : 1'b0;
                //     i_dfp_read_next = 1'b1;
                //     d_dfp_addr_next = d_dfp_addr;
                //     i_dfp_addr_next = i_dfp_addr;
                //     full_burst_next = d_dfp_write ? d_dfp_wdata : full_burst_reg;
                // end
            end
            
        endcase

    end
endmodule : cache_arbiter