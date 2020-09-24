`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aaron Mendoza
// 
// Create Date: 09/24/2020 12:18:45 PM
// Design Name: 
// Module Name: halfadder_test
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


module halfadder_test();
    reg a1;
    reg b1;
    wire c1;
    wire s1;


halfadder dut(
    .a(a1),
    .b(b1),
    .c(c1),
    .s(s1)
    );
    
initial begin
a1=0;b1=0;#10;
a1=0;b1=1;#10;
a1=1;b1=0;#10;
a1=1;b1=1;#10;
$finish;
end
    
endmodule
