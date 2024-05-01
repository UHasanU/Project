`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:59:25 05/01/2024 
// Design Name: 
// Module Name:    onehz 
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
module onehz(input clk, reset, output clk1hz);
	reg [26:0] counter;
	always @(posedge clk)
		if (reset || clk1hz)
			counter <= 0;
		else
			counter <= counter + 1;
		assign clk1hz = (counter == 99999999);
endmodule
