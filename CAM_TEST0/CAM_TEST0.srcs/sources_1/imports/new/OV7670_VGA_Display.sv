`timescale 1ns / 1ps

module OV7670_VGA_Display (
    // global signals
    input  logic       clk,
    input  logic       reset,
    // ov7670 signals
    output logic       ov7670_xclk,    // == mclk
    input  logic       ov7670_pclk,
    input  logic       ov7670_href,
    input  logic       ov7670_v_sync,
    input  logic [7:0] ov7670_data,
    // export signals
    input  logic [3:0] sw_mode,
    output logic       Hsync,
    output logic       Vsync,
    output logic [3:0] vgaRed,
    output logic [3:0] vgaGreen,
    output logic [3:0] vgaBlue
);

    logic        we;
    logic [16:0] wAddr;
    logic [15:0] wData;
    logic [16:0] rAddr;
    logic [15:0] rData;

    logic [ 9:0] x_pixel;
    logic [ 9:0] y_pixel;
    logic        DE;
    logic        w_rclk;
    logic        rclk;
    logic        oe;

    pixel_clk_gen U_OV7670_Clk_Gen (
        .clk  (clk),
        .reset(reset),
        .pclk (ov7670_xclk)
    );


    VGA_Controller U_VGAController (
        .clk    (clk),
        .reset  (reset),
        .rclk   (w_rclk),
        .h_sync (Hsync),
        .v_sync (Vsync),
        .DE     (DE),
        .x_pixel(x_pixel),
        .y_pixel(y_pixel)
    );


    OV7670_MemController U_OV7670_MemController (
        .pclk       (ov7670_pclk),
        .reset      (reset),
        .href       (ov7670_href),
        .v_sync     (ov7670_v_sync),
        .ov7670_data(ov7670_data),
        .we         (we),
        .wAddr      (wAddr),
        .wData      (wData)
    );


    frame_buffer U_Frame_Buffer (
        .wclk (ov7670_pclk),
        .we   (we),
        .wAddr(wAddr),
        .wData(wData),
        .rclk (rclk),
        .oe   (oe),
        .rAddr(rAddr),
        .rData(rData)
    );

    logic [3:0] mem_Red, mem_Green, mem_Blue;
    QVGA_MemController U_QVGA_MemController (
        .clk       (w_rclk),
        .x_pixel   (x_pixel),
        .y_pixel   (y_pixel),
        .DE        (DE),
        .rclk      (rclk),
        .d_en      (oe),
        .rAddr     (rAddr),
        .rData     (rData),
        .red_port  (mem_Red),
        .green_port(mem_Green),
        .blue_port (mem_Blue)
    );

    logic [3:0] grayRed, grayBlue, grayGreen;
    glayScale_filter u_glayScale_filter (
        .Red    (mem_Red),
        .Blue   (mem_Green),
        .Green  (mem_Blue),
        .o_Red  (grayRed),
        .o_Blue (grayBlue),
        .o_Green(grayGreen)
    );

    always_comb begin : modeMux
        vgaRed   = mem_Red;
        vgaGreen = mem_Green;
        vgaBlue  = mem_Blue;
        case (sw_mode)
            1 << 0: begin
                vgaRed   = 0;
                vgaGreen = 0;
            end
            1 << 1: begin
                vgaRed  = 0;
                vgaBlue = 0;
            end
            1 << 2: begin
                vgaGreen = 0;
                vgaBlue  = 0;
            end
            1 << 3: begin
                vgaRed   = grayRed;
                vgaGreen = grayGreen;
                vgaBlue  = grayBlue;
            end

        endcase
    end
endmodule
