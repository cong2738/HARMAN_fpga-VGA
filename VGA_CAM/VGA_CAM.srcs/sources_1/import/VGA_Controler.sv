`timescale 1ns / 1ps

module VGA_Controler (
    input  bit         clk,
    input  bit         reset,
    // ov7670
    input  logic       ov7670_pclk,
    input  logic       ov7670_href,
    input  logic       ov7670_vsync,
    input  logic [7:0] ov7670_data,
    output logic       ov7670_mclk,
    // vga
    output logic       Hsync,
    output logic       Vsync,
    output logic [3:0] vgaRed,
    output logic [3:0] vgaGreen,
    output logic [3:0] vgaBlue
);
    logic vga_pclk;
    logic [9:0] x_pixel, y_pixel;
    logic we;
    logic [16:0] wAddr, rAddr;
    logic [15:0] wData, rData;

    assign ov7670_mclk = vga_pclk;

    pixel_clk_generator u_VGA_clk_generator (
        .clk  (clk),
        .reset(reset),
        .pclk (vga_pclk)
    );

    VGA_Decoder u_VGA_Decoder (
        .reset  (reset),
        .pclk   (vga_pclk),
        .h_sync (Hsync),
        .v_sync (Vsync),
        .DE     (DE),
        .x_pixel(x_pixel),
        .y_pixel(y_pixel)
    );

    ov7670_MemoryControler u_ov7670_MemoryControler (
        .reset      (reset),
        .pclk       (ov7670_pclk),
        .href       (ov7670_href),
        .vsync      (ov7670_vsync),
        .ov7670_data(ov7670_data),
        .wData      (wData),
        .wAddr      (wAddr),
        .we         (we)
    );

    frame_buffer u_frame_buffer (
        .wclk (ov7670_pclk),
        .we   (we),
        .wAddr(wAddr),
        .wData(wData),
        .rAddr(rAddr),
        .rData(rData)
    );

    QVGA_memoryControler u_QVGA_memoryControler (
        .rAddr   (rAddr),
        .rData   (rData),
        .DE      (DE),
        .x_pixel (x_pixel),
        .y_pixel (y_pixel),
        .vgaRed  (vgaRed),
        .vgaBlue (vgaBlue),
        .vgaGreen(vgaGreen)
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
