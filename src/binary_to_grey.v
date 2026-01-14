`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2026 13:36:13
// Design Name: 
// Module Name: bin_to_grey
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
////////////////////// ////////////////////////////////////////////////////////////
module bin_to_grey(
    input wire [3:0]a,
    output wire [3:0]b
    );
    // doing XOR operation in [3:0]a and assigning to output [3:0]b
    assign b[3] = a[3];
    assign b[2] = a[3]^a[2];
    assign b[1] = a[2]^a[1];
    assign b[0] = a[1]^a[0];
endmodule
