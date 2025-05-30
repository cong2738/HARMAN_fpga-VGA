`timescale 1ns / 1ps

module MemoryControler #(
    parameter ADDRMAX = 640 * 480
) (
    input  logic                       clk,
    input  logic                       reset,
    input  logic                       pclk,
    input  logic                       hs,
    input  logic                       vs,
    input  logic [                7:0] data,
    output logic [               15:0] o_data,
    output logic [$clog2(ADDRMAX)-1:0] o_addr,
    output logic                       done,
    output logic                       WE
);
    bit pclk_R, pclk_F;
    bit hs_R, hs_F;
    bit vs_R, vs_F;
    edge_detector u_PCLKedge_detector (
        .clk  (clk),
        .sig  (pclk),
        .sig_R(pclk_R),
        .sig_F(pclk_F)
    );
    edge_detector HSedge_detector (
        .clk  (clk),
        .sig  (hs),
        .sig_R(hs_R),
        .sig_F(hs_F)
    );
    edge_detector VSedge_detector (
        .clk  (clk),
        .sig  (vs),
        .sig_R(vs_R),
        .sig_F(vs_F)
    );

    typedef enum logic [3:0] {
        START,
        IDLE,
        DATA_CL0,
        DATA_CL1,
        HS_WAIT,
        VS_WAIT
    } state_e;
    typedef enum logic [2:0] {
        H_DATA,
        L_DATA
    } data_stage_e;

    state_e state, next;
    data_stage_e data_stage, data_stage_next;
    logic [15:0] temp_data, temp_data_next;
    logic [$clog2(ADDRMAX)-1:0] addr_reg, addr_next;
    logic done_reg, done_next;

    assign o_data = temp_data;
    assign o_addr = addr_reg;
    assign done   = done_reg;

    always_ff @(posedge clk, posedge reset) begin : state_logic
        if (reset) begin
            state      <= START;
            data_stage <= H_DATA;
            addr_reg   <= 0;
            temp_data  <= 0;
            done_reg   <= 0;
        end else begin
            state      <= next;
            data_stage <= data_stage_next;
            addr_reg   <= addr_next;
            temp_data  <= temp_data_next;
            done_reg   <= done_next;
        end
    end
    always_comb begin : next_logic
        next            = state;
        data_stage_next = data_stage;
        addr_next       = addr_reg;
        temp_data_next  = temp_data;
        done_next       = done_reg;
        WE              = 1;
        case (state)
            START: begin
                WE = 0;
                if (vs_F) begin
                    next = IDLE;
                end
            end
            IDLE: begin
                data_stage_next = H_DATA;
                addr_next = 0;
                done_next = 0;
                WE = 0;
                if (hs_R) begin
                    next = DATA_CL0;
                end
            end
            DATA_CL0: begin
                done_next = 0;
                if (pclk_R) begin
                    next = DATA_CL1;
                    case (data_stage)
                        H_DATA: begin
                            temp_data_next[15:8] = data;
                            data_stage_next      = L_DATA;
                        end
                        L_DATA: begin
                            temp_data_next[7:0] = data;
                            addr_next           = addr_reg + 1;
                            data_stage_next     = H_DATA;
                        end
                    endcase
                end
            end
            DATA_CL1: begin
                done_next = 1;
                if (hs_F) begin
                    next = HS_WAIT;
                end else if (pclk_F) begin
                    next = DATA_CL0;
                end
            end
            HS_WAIT: begin
                done_next = 0;
                if (vs_R) begin
                    next = VS_WAIT;
                end else if (hs_R) begin
                    next = DATA_CL0;
                end
            end
            VS_WAIT: begin
                done_next = 0;
                if (vs_F) begin
                    next = IDLE;
                end
            end
        endcase
    end
endmodule
