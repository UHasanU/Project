`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:14:27 05/01/2024 
// Design Name: 
// Module Name:    ReactionTime 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ReactionTime(input clk, reset, start, measure, output LED output [7:0] seg, an);
	wire [3:0] Q2, Q1, Q0;
	wire reset2 = reset | start;
		DelayGen m1(clk, reset, start, LED);
		onekhz m2(clk, reset2, clk1khz);
	assign Error = ~LED & measure;
		dff m3 (clk, reset2, measure, 1'b1, measureQ);
		dff m4 (clk, reset2, Error, 1'b1, ErrorQ);
	assign enable = clk1khz & LED & ~measureQ;
		BCD_3D m5(clk, reset2, enable, ceo, Q2, Q1, Q0);
		ResponseSpeed m6 (Q2, Fast, Medium, Slow);
		DISP7SEG m7 (clk, Q0, Q1, Q2, D3, D4, D5, D6, D7, measureQ, Slow, Medium, Fast, ErrorQ, seg, an);
endmodule
