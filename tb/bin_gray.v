`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2026 13:40:46
// Design Name: 
// Module Name: tb_bin_grey
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
module tb_bin_grey();
reg [3:0]a;
wire[3:0]b;
bin_to_grey dO(a,b);//invoking the design module into the testbranch
initial begin
$monitor("Time=%0t | a=%b | b=%b",$time,a,b);
//$monitor is used to print the corresponding values of the variables
#0 ; a=0;
#10; a=4'b0000;
#10; a=4'b0001;
#10; a=4'b0010;
#10; a=4'b0011;
#10; a=4'b0100;
#10; a=4'b0101;
#10; a=4'b0110;
#10; a=4'b0111;
#10  $finish;
end
endmodule
