`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:11:39 05/01/2024 
// Design Name: 
// Module Name:    RespondSpeed 
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
module RespondSpeed(input [3:0] Q, output Fast, Medium, Slow);
	assign Slow = Q[3];
	assign Medium = Q[2];
	assign Fast = ~ (Slow | Medium);
endmodule
