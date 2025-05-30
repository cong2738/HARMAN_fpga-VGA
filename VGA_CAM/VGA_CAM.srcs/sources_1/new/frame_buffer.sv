`timescale 1ns / 1ps

module frame_buffer (
    // write side
    input  logic        wclk,
    input  logic        we,
    input  logic [16:0] wAddr,
    input  logic [15:0] wData,
    // read side
    input  logic [16:0] rAddr,
    output logic [15:0] rData
);
    logic [15:0] VRAM[0:(320*240)-1];
    always_ff @(posedge wclk) begin : write
        if (we) begin
            VRAM[wAddr] = wData;
        end
    end

    assign rData = VRAM[rAddr]; // read
endmodule
