`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:03:13 05/01/2024 
// Design Name: 
// Module Name:    DelayGen 
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
module DelayGen(input clk, reset, load_rand, output led);
	wire enable, q, zero;
	wire [4:0] rand;
	assign led = zero & ~load_rand;
	assign enable = q & clk1hz & ~led;
	dc_2b(clk, reset, enable, load_rand, rand[1:0], zero);
	dff(clk, reset, load_rand, 1'b1, q);
	lfsr_5bit(clk, reset, rand);
	onehz(clk, reset, clk1hz);
endmodule
