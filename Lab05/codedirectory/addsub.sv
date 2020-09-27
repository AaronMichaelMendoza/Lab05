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
    
wire [1:0]B;
wire [1:0]c;

assign B[0] = b[0] ^ m;
assign B[1] = b[1] ^ m; 
    
fulladder FA1(
    .a(a[0]),
    .b(B[0]),
    .cin(m),
    .cout(c[0]),
    .sout(s[0])
    );
    
fulladder FA2(
    .a(a[1]),
    .b(B[1]),
    .cin(c[0]),
    .cout(c[1]),
    .sout(s[1])
    );

assign cout = c[1] ^ m;

endmodule
