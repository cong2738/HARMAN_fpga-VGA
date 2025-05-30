`timescale 1ns / 1ps

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