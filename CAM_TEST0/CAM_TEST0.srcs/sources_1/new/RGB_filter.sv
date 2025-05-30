`timescale 1ns / 1ps

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