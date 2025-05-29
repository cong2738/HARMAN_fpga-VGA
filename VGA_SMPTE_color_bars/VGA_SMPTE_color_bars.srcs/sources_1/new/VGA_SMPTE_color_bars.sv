`timescale 1ns / 1ps

module VGA_SMPTE_color_bars (
    input  logic [9:0] x_pixel,
    input  logic [9:0] y_pixel,
    input  logic       DE,
    output logic [3:0] red,
    output logic [3:0] green,
    output logic [3:0] blue
);
    localparam COLOR0_W = 92, COLOR1_W = COLOR0_W, H_COLOR2_W = 110;
    localparam COLOR0_H = 360, COLOR1_H = 30, COLOR2_H = 90;

    logic [1:0] vertical_switch = {
        y_pixel < COLOR0_H + COLOR1_H, y_pixel < COLOR0_H
    };
    logic [2:0] color0_num = x_pixel / COLOR0_W;
    logic [2:0] color1_num = x_pixel / COLOR1_W;
    logic [2:0] color2_num = x_pixel / H_COLOR2_W;

    logic [11:0] color;

    assign {red, green, blue} = color;
    always @(*) begin
        color = 12'dz;
        if (DE) begin
            case (vertical_switch)
                2'b11 << 0: begin
                    case (color0_num)
                        0: color = 12'hfff;
                        1: color = 12'hff0;
                        2: color = 12'h0ff;
                        3: color = 12'h0f0;
                        4: color = 12'hf0f;
                        5: color = 12'hf00;
                        default: color = 12'h00f;
                    endcase
                end

                2'b11 << 1: begin
                    case (color1_num)
                        0: color = 12'h00f;
                        1: color = 12'h000;
                        2: color = 12'hf0f;
                        3: color = 12'h000;
                        4: color = 12'h0ff;
                        5: color = 12'h000;
                        default: color = 12'hfff;
                    endcase
                end

                default: begin
                    case (color2_num)
                        0: color = 12'h002;
                        1: color = 12'hfff;
                        2: color = 12'h208;
                        3: color = 12'h100;
                        4: color = 12'h010;
                        default: color = 12'h001;
                    endcase
                end
            endcase
        end
    end
endmodule
