`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module stimulus();// DECLARING ALL VARIABLES IN TESTBRANCH
reg a,b,c,x;
wire parity_bit;
wire parity_gen;
wire parity_ch1;
wire parity_ch2;
// invoking design branch for testcase
design_even_odd d0( 
    .a(a),
    .b(b),
    .c(c),
    .x(x),
    .parity_bit(parity_bit),
    .parity_gen(parity_gen),
    .parity_ch1(parity_ch1),
    .parity_ch2(parity_ch2)
);
initial begin
$monitor("Time=%0t | a=%b | b=%b | c=%b | Parity_bit=%b | Parity_ch1=%b | Parity_ch2=%b",
         $time, a, b, c, parity_bit, parity_ch1, parity_ch2);       
//$monitor is a function used to Automatically print signal values whenever any of them changes
// FOR EVEN PARITY CHECKER & GENERATOR SO THAT X=0;
#10; a=0 ; b=0 ; c=0 ; x=0;
#10; a=0 ; b=0 ; c=1 ; x=0;
#10; a=0 ; b=1 ; c=0 ; x=0;
#10; a=0 ; b=1 ; c=1 ; x=0;
// FOR ODD PARITY CHECKER & GENERATOR SO THAT X=1;
#10; a=1 ; b=0 ; c=0 ; x=1;
#10; a=1 ; b=0 ; c=1 ; x=1;
#10; a=1 ; b=1 ; c=0 ; x=1;
#10; a=1 ; b=1 ; c=1 ; x=1;
#10 $finish;
end
endmodule

