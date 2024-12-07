module store_buffer
import rv32i_types::*;
(
    input   logic           clk,
    input   logic           rst,

    // inputs from memory
    input   logic   [31:0]  store_data, store_addr,
    input   logic   [31:0]  load_addr,
    input   logic   [3:0]   store_mask,
    input   logic   [3:0]   load_mask,

    // inputs from cache
    input   logic           ufp_resp,
    input   logic   [31:0]  ufp_rdata,

    // outputs to memory
    // output  logic           empty,      // if not empty, don't let memory instruction go to cache
    output  logic           full,       // if full, don't let stores come in
    output  logic   [31:0]  load_data,
    output  logic           load_resp,
    output  logic           store_resp,

    // outputs to cache
    output  logic   [31:0]  sb_ufp_addr,
    output  logic   [3:0]   sb_ufp_rmask,
    output  logic   [3:0]   sb_ufp_wmask,
    output  logic   [31:0]  sb_ufp_wdata
);

    sb_info             store_buffer [8];
    sb_info             store_buffer_reg [8];
    logic   [2:0]       index;
    logic               empty;
    // logic               full_reg;
    // logic               empty_reg;
    logic               hit;
    logic               store_resp_next;

    logic   [31:0]      load_addr_next, load_addr_reg;
    logic   [3:0]       load_mask_next, load_mask_reg;

    logic               currently_in_load, currently_in_load_reg;

    always_ff @(posedge clk) begin
        if (rst) begin
            // store_buffer_reg <= '0;
            // full_reg <= '0;
            // empty_reg <= '0;
            store_resp <= '0;
            load_addr_reg <= '0;
            load_mask_reg <= '0;
            currently_in_load_reg <= '0;

            for (int i = 0; i < 8; i++) begin
                store_buffer_reg[i] <= '0;
            end

        end else begin
            // store_buffer_reg <= store_buffer;
            // full_reg <= full;
            // empty_reg <= empty;
            store_resp <= store_resp_next;
            load_addr_reg <= load_addr_next;
            load_mask_reg <= load_mask_next;
            currently_in_load_reg <= currently_in_load;

            for (int i = 0; i < 8; i++) begin
                store_buffer_reg[i] <= store_buffer[i];
            end
        end
    end

    always_comb begin
        index = '0;
        // full = full_reg;
        full = (store_buffer_reg[7] != '0);
        hit = '0;
        load_data = '0;
        load_resp = '0;

        sb_ufp_addr = '0;
        sb_ufp_rmask = '0;
        sb_ufp_wmask = '0;
        sb_ufp_wdata = '0;
        store_buffer = store_buffer_reg;
        currently_in_load = currently_in_load_reg;
        // empty = empty_reg;
        empty = (store_buffer_reg[0] == '0);

        store_resp_next = (store_mask != '0);

        if (load_mask != '0) begin
            load_addr_next = load_addr;
            load_mask_next = load_mask;
        end else begin
            load_addr_next = load_addr_reg;
            load_mask_next = load_mask_reg;
        end

        // if dfp_resp and no stores, load must've finished
        if (ufp_resp && currently_in_load_reg) begin
            load_resp = '1;
            load_data = ufp_rdata;
            currently_in_load = '0;
        end

        // check queue for load data
        if (load_mask_reg != '0) begin
            for (int i = 0; i < 8; i++) begin
                if (store_buffer_reg[i].addr == load_addr_reg && store_buffer_reg[i].mask == load_mask_reg) begin
                    if (i == 0) begin
                        index = '0;
                    end else if (i == 1) begin
                        index = 3'b001;
                    end else if (i == 2) begin
                        index = 3'b010;
                    end else if (i == 3) begin
                        index = 3'b011;
                    end else if (i == 4) begin
                        index = 3'b100;
                    end else if (i == 5) begin
                        index = 3'b101;
                    end else if (i == 6) begin
                        index = 3'b110;
                    end else begin
                        index = '1;
                    end

                    hit = '1;
                end
            end

            if (hit) begin
                load_data = store_buffer_reg[index].data;
                load_resp = '1;

                load_mask_next = '0;
                load_addr_next = '0;
            end
            // else begin
            //     if (!empty_reg) begin
            //         load_addr_next = load_addr;
            //         load_mask_next = load_mask;
            //     end else begin
            //         sb_ufp_addr = load_addr;
            //         sb_ufp_rmask = load_mask;
            //     end
            // end
        end

        // send store to cache
        // if (!empty) begin
        //     if (store_buffer_reg[0].sent_to_cache && ufp_resp) begin
        //         for (int i = 0; i < 7; i++) begin
        //             store_buffer[i] = store_buffer_reg[i+1];
        //         end
        //         store_buffer[7] = '0;

        //         if (store_buffer[0] == '0) begin
        //             empty = '1;
        //         end
        //         full = '0;
        //     end

        //     if (store_buffer_reg[0].sent_to_cache == '0 && store_buffer_reg[0].mask != '0) begin
        //         store_buffer[0].sent_to_cache = '1;

        //         sb_ufp_addr = store_buffer_reg[0].addr;
        //         sb_ufp_wmask = store_buffer_reg[0].mask;
        //         sb_ufp_wdata = store_buffer_reg[0].data;
        //     end
            

        // // send load to cache
        // end else begin
        //     if (load_mask_reg != '0) begin
        //         sb_ufp_addr = load_addr_reg;
        //         sb_ufp_rmask = load_mask_reg;

        //         load_addr_next = '0;
        //         load_mask_next = '0;

        //     end
        //     //  else if (load_mask != '0) begin
        //     //     sb_ufp_addr = load_addr;
        //     //     sb_ufp_rmask = load_mask;
        //     // end
        // end

        if (!full && load_mask_reg != '0) begin
            // if (load_mask_reg != '0) begin
                sb_ufp_addr = load_addr_reg;
                sb_ufp_rmask = load_mask_reg;

                load_addr_next = '0;
                load_mask_next = '0;

                currently_in_load = '1;
            // end

        end else if (!currently_in_load) begin
            if (store_buffer_reg[0].sent_to_cache && ufp_resp) begin
                for (int i = 0; i < 7; i++) begin
                    store_buffer[i] = store_buffer_reg[i+1];
                end
                store_buffer[7] = '0;

                if (store_buffer[0] == '0) begin
                    empty = '1;
                end
                full = '0;
            end

            if (store_buffer_reg[0].sent_to_cache == '0 && store_buffer_reg[0].mask != '0) begin
                store_buffer[0].sent_to_cache = '1;

                sb_ufp_addr = store_buffer_reg[0].addr;
                sb_ufp_wmask = store_buffer_reg[0].mask;
                sb_ufp_wdata = store_buffer_reg[0].data;
            end
        end

        // add store to queue
        if (store_mask != '0) begin
            for (int i = 7; i >= 0; i--) begin
                if (store_buffer[i] == '0) begin
                    if (i == 0) begin
                        index = '0;
                    end else if (i == 1) begin
                        index = 3'b001;
                    end else if (i == 2) begin
                        index = 3'b010;
                    end else if (i == 3) begin
                        index = 3'b011;
                    end else if (i == 4) begin
                        index = 3'b100;
                    end else if (i == 5) begin
                        index = 3'b101;
                    end else if (i == 6) begin
                        index = 3'b110;
                    end else begin
                        index = '1;
                    end
                end
            end

            store_buffer[index].addr = store_addr;
            store_buffer[index].data = store_data;
            store_buffer[index].mask = store_mask;

            // if (index == 3) begin
            //     full = '1;
            // end
            empty = '0;
        end
    end

endmodule : store_buffer