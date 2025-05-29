`timescale 1ps / 1ps

module ImageVGA (
    input bit clk,
    input bit reset,
    input logic [0:0] sw_mode,
    input logic [3:0] RGB_filter_mode,
    output logic Hsync,
    output logic Vsync,
    output logic [3:0] vgaRed,
    output logic [3:0] vgaBlue,
    output logic [3:0] vgaGreen
);
    logic DE;
    logic [9:0] x_pixel, y_pixel;
    logic [3:0] Red, Blue, Green;
    logic [3:0] RGB_FilterRed, RGB_FilterBlue, RGB_FilterGreen;
    logic [3:0] gray_Red, gray_Blue, gray_Green;
    VGA_Controler u_VGA_Controler (
        .clk    (clk),
        .reset  (reset),
        .h_sync (Hsync),
        .v_sync (Vsync),
        .DE     (DE),
        .x_pixel(x_pixel),
        .y_pixel(y_pixel)
    );

    ImageRom u_ImageRom (
        .x_pixel   (x_pixel),
        .y_pixel   (y_pixel),
        .DE        (DE),
        .red_port  (Red),
        .green_port(Blue),
        .blue_port (Green)
    );

    RGB_filter u_RGB_filter (
        .sw     (RGB_filter_mode),
        .Red    (Red),
        .Blue   (Blue),
        .Green  (Green),
        .o_Red  (RGB_FilterRed),
        .o_Green(RGB_FilterBlue),
        .o_Blue (RGB_FilterGreen)
    );

    glayScale_filter u_glayScale_filter (
        .Red    (RGB_FilterRed),
        .Blue   (RGB_FilterBlue),
        .Green  (RGB_FilterGreen),
        .o_Red  (gray_Red),
        .o_Blue (gray_Blue),
        .o_Green(gray_Green)
    );

    grayMux u_grayMux (
        .sw_mode   (sw_mode),
        .Red       (RGB_FilterRed),
        .Blue      (RGB_FilterBlue),
        .Green     (RGB_FilterGreen),
        .gray_Red  (gray_Red),
        .gray_Blue (gray_Blue),
        .gray_Green(gray_Green),
        .vgaRed    (vgaRed),
        .vgaBlue   (vgaBlue),
        .vgaGreen  (vgaGreen)
    );

endmodule

module grayMux (
    input logic sw_mode,
    input logic [3:0] Red,
    Blue,
    Green,
    input logic [3:0] gray_Red,
    gray_Blue,
    gray_Green,
    output logic [3:0] vgaRed,
    output logic [3:0] vgaBlue,
    output logic [3:0] vgaGreen
);
    always_comb begin : colorMux
        vgaRed   = Red;
        vgaBlue  = Blue;
        vgaGreen = Green;
        if (sw_mode) begin
            vgaRed   = gray_Red;
            vgaBlue  = gray_Blue;
            vgaGreen = gray_Green;
        end
    end
endmodule

module RGB_filter (
    input  logic [2:0] sw,
    input  logic [3:0] Red,
    input  logic [3:0] Blue,
    input  logic [3:0] Green,
    output logic [3:0] o_Red,
    output logic [3:0] o_Green,
    output logic [3:0] o_Blue
);
    always_comb begin : color_filter_logic
        o_Red   = Red;
        o_Green = Green;
        o_Blue  = Blue;
        case (sw)
            3'b001: begin
                o_Blue  = 0;
                o_Green = 0;
            end
            3'b010: begin
                o_Red   = 0;
                o_Green = 0;
            end
            3'b100: begin
                o_Red  = 0;
                o_Blue = 0;
            end
        endcase
    end
endmodule

module glayScale_filter (
    input  logic [3:0] Red,
    input  logic [3:0] Blue,
    input  logic [3:0] Green,
    output logic [3:0] o_Red,
    output logic [3:0] o_Blue,
    output logic [3:0] o_Green
);
    logic [11:0] gray = (77 * Red) + (150 * Green) + (29 * Blue);
    assign o_Red   = gray[11:8];
    assign o_Blue  = gray[11:8];
    assign o_Green = gray[11:8];
endmodule
