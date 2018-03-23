`timescale 1ns / 1ps
module my_debouncertest(input clk, input btn, output out);
reg ff1 = 1'b0, ff2 = 1'b0;
always @(posedge clk) begin
    ff1 <= btn;
    ff2 <= ff1;
end
assign out = ff1 & (~ff2);
endmodule