`timescale 1ns / 1ps

module VGA_Controler (
    input  bit         clk,
    input  bit         reset,
    input  logic [3:0] sw_red,
    input  logic [3:0] sw_green,
    input  logic [3:0] sw_blue,
    output logic       Hsync,
    output logic       Vsync,
    output logic [3:0] vgaRed,
    output logic [3:0] vgaBlue,
    output logic [3:0] vgaGreen
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

    VGA_RGB_switch u_VGA_RGB_switch (
        .sw_red  (sw_red),
        .sw_green(sw_green),
        .sw_blue (sw_blue),
        .DE      (DE),
        .red     (vgaRed),
        .green   (vgaBlue),
        .blue    (vgaGreen)
    );

endmodule

