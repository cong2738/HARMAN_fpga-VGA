`timescale 1ns / 1ps

module edge_detector (
    input  bit clk,
    input  bit sig,
    output bit sig_R,
    output bit sig_F
);
    bit d0, d1;
    always_ff @(posedge clk) begin : Edge_Detector
        d0 <= sig;
        d1 <= d0;
    end
    assign sig_R = d0 & ~d1;
    assign sig_F = ~d0 & d1;
endmodule
