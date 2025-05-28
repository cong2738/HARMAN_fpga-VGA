`timescale 1ns / 1ps

module tb_sw_vga ();
    bit         clk;
    bit         reset;
    logic [3:0] sw_red;
    logic [3:0] sw_green;
    logic [3:0] sw_blue;
    logic       Hsync;
    logic       Vsync;
    logic [3:0] vgaRed;
    logic [3:0] vgaBlue;
    logic [3:0] vgaGreen;

    VGA_Controler u_VGA_Controler (
        .clk     (clk),
        .reset   (reset),
        .sw_red  (sw_red),
        .sw_green(sw_green),
        .sw_blue (sw_blue),
        .Hsync   (Hsync),
        .Vsync   (Vsync),
        .vgaRed  (vgaRed),
        .vgaBlue (vgaBlue),
        .vgaGreen(vgaGreen)
    );

    always #5 clk = ~clk;

    initial begin
        clk   = 0;
        reset = 1;
        #10 reset = 0;
        sw_red   = 0;
        sw_green = 0;
        sw_blue  = 0;

        wait (!Vsync);
        wait (Vsync);
        wait (!Hsync);
        #1000 $finish;
    end
endmodule
