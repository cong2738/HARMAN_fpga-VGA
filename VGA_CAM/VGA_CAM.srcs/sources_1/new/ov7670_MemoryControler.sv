`timescale 1ns / 1ps

module ov7670_MemoryControler (
    input  logic        reset,
    input  logic        pclk,
    input  logic        href,
    input  logic        vsync,
    input  logic [ 7:0] ov7670_data,
    output logic [15:0] wData,
    output logic [16:0] wAddr,
    output logic        we
);
    logic [ 9:0] h_counter;
    logic [ 7:0] v_counter;
    logic [15:0] color_data;  // rgb565

    assign wAddr = 320 * v_counter + h_counter[9:1];
    assign wData = color_data;

    always_ff @(posedge pclk, posedge reset) begin : h_sequence
        if (reset) begin
            h_counter <= 0;
            we        <= 0;
        end else begin
            if (!href) begin
                h_counter <= 0;
                we        <= 0;
            end else begin
                h_counter <= h_counter + 1;
                if (!h_counter[0]) begin  // 짝수
                    color_data[15:8] <= ov7670_data;
                    we               <= 0;
                end else begin  // 홀수
                    color_data[7:0] <= ov7670_data;
                    we              <= 1;
                end
            end
        end
    end

    always_ff @(posedge pclk, posedge reset) begin : v_sequence
        if (reset) begin
            v_counter <= 0;
        end else begin
            if (vsync) begin
                v_counter <= 0;
            end else begin
                if (h_counter == 640) begin
                    v_counter <= v_counter + 1;
                end
            end
        end
    end

endmodule
