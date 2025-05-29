`timescale 1ns / 1ps

module VGA_Controler (
    input  bit         clk,
    input  bit         reset,
    output logic       h_sync,
    output logic       v_sync,
    output logic       DE,
    output logic [9:0] x_pixel,
    output logic [9:0] y_pixel
);
    logic [9:0] h_count, v_count;
    pixel_clk_generator u_pixel_clk_generator (
        .clk  (clk),
        .reset(reset),
        .pclk (pclk)
    );
    pixel_counter u_pixel_counter (
        .pclk   (pclk),
        .reset  (reset),
        .h_count(h_count),
        .v_count(v_count)
    );
    pixel_decoder u_pixel_decoder (
        .h_count(h_count),
        .v_count(v_count),
        .h_sync (h_sync),
        .v_sync (v_sync),
        .DE     (DE),
        .x_pixel(x_pixel),
        .y_pixel(y_pixel)
    );

endmodule

module pixel_clk_generator (
    input  bit clk,
    input  bit reset,
    output bit pclk
);
    logic [1:0] p_counter;
    always_ff @(posedge clk, posedge reset) begin : Clock_Counter
        if (reset) begin
            p_counter <= 0;
            pclk <= 0;
        end else begin
            if (p_counter == 3) begin
                p_counter <= 0;
                pclk <= 1;
            end else begin
                p_counter <= p_counter + 1;
                pclk <= 0;
            end
        end
    end
endmodule

module pixel_counter (
    input bit pclk,
    input bit reset,
    output logic [9:0] h_count,  // count 0 to 800
    output logic [9:0] v_count  // count 0 to 524
);
    localparam H_MAX = 800, V_MAX = 525;
    always_ff @(posedge pclk, posedge reset) begin : Horizontal_Counter
        if (reset) h_count <= 0;
        else begin
            if (h_count == H_MAX - 1) begin
                h_count <= 0;
            end else h_count <= h_count + 1;
        end
    end
    always_ff @(posedge pclk, posedge reset) begin : Vertical_Counter
        if (reset) v_count <= 0;
        else begin
            if (h_count == H_MAX - 1) begin
                if (v_count == V_MAX - 1) begin
                    v_count <= 0;
                end else begin
                    v_count <= v_count + 1;
                end
            end
        end
    end
endmodule

module pixel_decoder #(
    parameter 
        // Horizontal_param
        H_Visible_area = 640,
        H_Front_porch  = 16,
        H_Sync_pulse   = 96,
        H_Back_porch   = 48,
        Whole_line     = 800,
        // Vertical_param
        V_Visible_area = 480,
        V_Front_porch  = 10,
        V_Sync_pulse   = 2,
        V_Back_porch   = 33,
        Whole_frame    = 525
    )(
    input  logic [9:0] h_count,
    input  logic [9:0] v_count,
    output logic       h_sync,
    output logic       v_sync,
    output logic       DE,
    output logic [9:0] x_pixel,
    output logic [9:0] y_pixel
);
    enum logic [9:0] {        
        h_sync_start   = (H_Visible_area + H_Front_porch),
        h_sync_stop    = (h_sync_start + H_Sync_pulse),
        v_sync_start   = (V_Visible_area + V_Front_porch),
        v_sync_stop    = (v_sync_start + V_Sync_pulse)
    } sync_start_stop;

    assign h_sync = !((h_count >= h_sync_start) && (h_count <= h_sync_stop));
    assign v_sync = !((v_count >= v_sync_start) && (v_count <= v_sync_stop));
    assign DE = ((h_count < H_Visible_area) && (v_count < V_Visible_area));
    assign x_pixel = h_count;
    assign y_pixel = v_count;
endmodule
