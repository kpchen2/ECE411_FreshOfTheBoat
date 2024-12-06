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

    // outputs to memory
    output  logic           empty,      // if not empty, don't let memory instruction go to cache
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

    logic   sb_info     store_buffer [1:0];
    logic   sb_info     store_buffer_reg [1:0];
    logic   [1:0]       index;
    logic               full_reg, empty_reg;
    logic               hit;
    logic               store_resp_next;

    logic   [31:0]      load_addr_next, load_addr_reg;
    logic   [3:0]       load_mask_next, load_mask_reg;

    always_ff @(posedge clk) begin
        if (rst) begin
            store_buffer_reg <= '0;
            full_reg <= '0;
            empty_reg <= '0;
            store_resp <= '0;
            load_addr_reg <= '0;
            load_mask_reg <= '0;

        end else begin
            store_buffer_reg <= store_buffer;
            full_reg <= full;
            empty_reg <= empty;
            store_resp <= store_resp_next;
            load_addr_reg <= load_addr_next;
            load_mask_reg <= load_mask_next;
        end
    end

    always_comb begin
        index = '0;
        full = full_reg;
        hit = '0;
        load_data = '0;
        load_resp = '0;

        sb_ufp_addr = '0;
        sb_ufp_rmask = '0;
        sb_ufp_wmask = '0;
        sb_ufp_wdata = '0;
        store_buffer = store_buffer_reg;
        empty = empty_reg;

        store_resp_next = (store_mask);

        load_addr_next = load_add_reg;
        load_mask_next = load_mask_reg;

        // check queue for load data
        if (load_mask != '0) begin
            for (int i = 0; i < 4; i++) begin
                if (store_buffer_reg[i].addr == load_addr && store_buffer_reg[i].mask == load_mask) begin
                    if (i == 0) begin
                        index = '0;
                    end else if (i == 1) begin
                        index = 2'b01;
                    end else if (i == 2) begin
                        index = 2'b10;
                    end else begin
                        index = '1;
                    end

                    hit = '1;
                end
            end

            if (hit) begin
                load_data = store_buffer_reg[index].data;
                load_resp = '1;
            end else begin
                if (!empty_reg) begin
                    load_addr_next = load_addr;
                    load_mask_next = load_mask;
                end else begin
                    sb_ufp_addr = load_addr;
                    sb_ufp_rmask = load_mask;
                end
            end
        end

        // send store to cache
        if (!empty_reg) begin
            sb_ufp_addr = store_buffer_reg[0].addr;
            sb_ufp_wmask = store_buffer_reg[0].mask;
            sb_ufp_wdata = store_buffer_reg[0].data;

            for (int i = 0; i < 3; i++) begin
                store_buffer[i] = store_buffer_reg[i+1];
            end
            store_buffer[3] = '0;

            if (store_buffer[0] == '0) begin
                empty = '1;
            end
            full = '0;

        end else begin
            if (load_mask_reg != '0) begin
                sb_ufp_addr = load_addr_reg;
                sb_ufp_rmask = load_mask_reg;

                load_addr_next = '0;
                load_mask_next = '0;
            end
        end

        // add store to queue
        if (store_mask != '0) begin
            for (int i = 3; i >= 0; i--) begin
                if (store_buffer[i] == '0) begin
                    if (i == 0) begin
                        index = '0;
                    end else if (i == 1) begin
                        index = 2'b01;
                    end else if (i == 2) begin
                        index = 2'b10;
                    end else begin
                        index = '1;
                    end
                end
            end

            store_buffer[index].addr = store_addr;
            store_buffer[index].data = store_data;
            store_buffer[index].mask = store_mask;

            if (index == 3) begin
                full = '1;
            end
            empty = '0;
        end
    end

endmodule : store_buffer