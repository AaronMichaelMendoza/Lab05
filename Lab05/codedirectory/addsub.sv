`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2020 01:22:43 PM
// Design Name: 
// Module Name: addsub
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


module addsub(
    input [1:0]a,
    input [1:0]b,
    input m,
    output cout,
    output [1:0]s
    );
    
wire B0, B1, c1, c2;

assign B0 = b[0] ^ m;
assign B1 = b[1] ^ m; 
    
fulladder FA1(
    .a(a[0]),
    .b(B0),
    .cin(m),
    .cout(c1),
    .sout(s[1])
    );
    
fulladder FA2(
    .a(a[1]),
    .b(B1),
    .cin(c1),
    .cout(c2),
    .sout(s[2])
    );

assign cout = c2 ^ m;

endmodule
