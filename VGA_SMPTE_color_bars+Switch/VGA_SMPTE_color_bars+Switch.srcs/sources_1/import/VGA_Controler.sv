`timescale 1ns / 1ps

module VGA_Controler (
    input  bit         clk,
    input  bit         reset,
    input  logic [0:0] sw_sel,
    input  logic [3:0] sw_red,
    input  logic [3:0] sw_green,
    input  logic [3:0] sw_blue,
    output logic       Hsync,
    output logic       Vsync,
    output logic [3:0] vgaRed,
    output logic [3:0] vgaGreen,
    output logic [3:0] vgaBlue
);
    logic [9:0] x_pixel, y_pixel;
    VGA_Decoder u_VGA_Decoder (
        .clk    (clk),
        .reset  (reset),
        .h_sync (Hsync),
        .v_sync (Vsync),
        .DE     (DE),
        .x_pixel(x_pixel),
        .y_pixel(y_pixel)
    );

    logic [3:0] SMPTE_vgaRed, SMPTE_vgaGreen, SMPTE_vgaBlue;
    logic [11:0] SMPTE_color = {SMPTE_vgaRed, SMPTE_vgaGreen, SMPTE_vgaBlue};
    VGA_SMPTE_color_bars u_VGA_SMPTE_color_bars (
        .x_pixel(x_pixel),
        .y_pixel(y_pixel),
        .DE     (DE),
        .red    (SMPTE_vgaRed),
        .green  (SMPTE_vgaGreen),
        .blue   (SMPTE_vgaBlue)
    );

    logic [3:0] sw_vgaRed, sw_vgaGreen, sw_vgaBlue;
    logic [11:0] sw_color = {sw_vgaRed, sw_vgaGreen, sw_vgaBlue};
    VGA_RGB_switch u_VGA_RGB_switch (
        .sw_red  (sw_red),
        .sw_green(sw_green),
        .sw_blue (sw_blue),
        .DE      (DE),
        .red     (sw_vgaRed),
        .green   (sw_vgaGreen),
        .blue    (sw_vgaBlue)
    );

    color_Mux u_color_Mux (
        .sw_sel     (sw_sel),
        .SMPTE_color(SMPTE_color),
        .sw_color   (sw_color),
        .vgaRed     (vgaRed),
        .vgaGreen   (vgaGreen),
        .vgaBlue    (vgaBlue)
    );

endmodule

module color_Mux (
    input logic sw_sel,
    input logic [11:0] SMPTE_color,
    input logic [11:0] sw_color,
    output logic [3:0] vgaRed,
    output logic [3:0] vgaGreen,
    output logic [3:0] vgaBlue
);
    always_comb begin : sel_mode
        case (sw_sel)
            0: {vgaRed, vgaGreen, vgaBlue} = sw_color;
            1: {vgaRed, vgaGreen, vgaBlue} = SMPTE_color;
        endcase
    end
endmodule
