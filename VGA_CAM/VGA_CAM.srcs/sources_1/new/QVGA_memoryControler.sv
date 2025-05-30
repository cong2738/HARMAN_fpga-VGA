`timescale 1ns / 1ps

module QVGA_memoryControler (
    // mem side
    output logic [16:0] rAddr,
    input  logic [15:0] rData,    // RRRRRGGGGGGBBBBB
    // vga side
    input  logic        DE,
    input  logic [ 9:0] x_pixel,
    input  logic [ 9:0] y_pixel,
    // export
    output logic [ 3:0] vgaRed,   //RRRR
    output logic [ 3:0] vgaBlue,  //GGGG
    output logic [ 3:0] vgaGreen  //BBBB
);
    logic display_en = x_pixel < 320 && y_pixel < 240;
    assign rAddr = (display_en) ? x_pixel + 320 * y_pixel : 0;
    assign {vgaRed, vgaGreen, vgaBlue} = (display_en) ?{
        rData[15:12], rData[10:7], rData[4:1]
    } : 0;
endmodule
