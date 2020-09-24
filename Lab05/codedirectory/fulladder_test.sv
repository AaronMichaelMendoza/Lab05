`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aaron Mendoza
// 
// Create Date: 09/24/2020 12:52:18 PM
// Design Name: 
// Module Name: fulladder_test
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


module fulladder_test();
    reg a;
    reg b;
    reg cin;
    wire cout;
    wire sout;
    
fulladder dut(
    .a(a),
    .b(b),
    .cin(cin),
    .cout(cout),
    .sout(sout)
    );

initial begin
a = 0; b = 0; cin = 0; #10;
a = 0; b = 0; cin = 1; #10;
a = 0; b = 1; cin = 0; #10;
a = 0; b = 1; cin = 1; #10;
a = 1; b = 0; cin = 0; #10;
a = 1; b = 0; cin = 1; #10;
a = 1; b = 1; cin = 0; #10;
a = 1; b = 1; cin = 1; #10;
$finish;
end

endmodule
