`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aaron Mendoza
// 
// Create Date: 09/24/2020 12:45:54 PM
// Design Name: 
// Module Name: fulladder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fulladder(
    input a,
    input b,
    input cin,
    output cout,
    output sout
    );
    
wire s1, c1, c2;

halfadder HA1(
    .a(a),
    .b(b),
    .c(c1),
    .s(s1)
    );
    
halfadder HA2(
    .a(cin),
    .b(s1),
    .c(c2),
    .s(sout)
    );
    
assign cout = c1 ^ c2;
    
endmodule
