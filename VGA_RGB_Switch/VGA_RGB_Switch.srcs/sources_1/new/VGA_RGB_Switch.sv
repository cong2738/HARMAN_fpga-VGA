`timescale 1ns / 1ps

module VGA_RGB_switch (
    input  logic [3:0] sw_red,
    input  logic [3:0] sw_green,
    input  logic [3:0] sw_blue,
    input  logic       DE,
    output logic [3:0] red,
    output logic [3:0] green,
    output logic [3:0] blue
);
    assign red   = DE ? sw_red : 4'b0;
    assign green = DE ? sw_green : 4'b0;
    assign blue  = DE ? sw_blue : 4'b0;
endmodule
