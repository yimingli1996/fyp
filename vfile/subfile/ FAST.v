`timescale 1ns / 1ps
module FAST(input CLOCK, output reg SLOW = 0);

    reg [23:0] COUNT= 24'b0 ; 
    always @ (posedge CLOCK) begin
        COUNT <= COUNT + 1;
        SLOW <= (COUNT == 0) ? ~SLOW : SLOW;

