`timescale 1ns / 1ps

module VGA_Controler (
    input  bit         clk,
    input  bit         reset,
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

    VGA_SMPTE_color_bars u_VGA_SMPTE_color_bars(
        .x_pixel (x_pixel ),
        .y_pixel (y_pixel ),
        .DE      (DE      ),
        .red     (vgaRed     ),
        .green   (vgaGreen   ),
        .blue    (vgaBlue    )
    );
    

endmodule

