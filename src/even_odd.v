`timescale 1ns / 1ps                                    
module design_even_odd   ( input a,input b,input c,input x,     //x=0 for even parity
    output parity_bit,output parity_gen,output reg parity_ch1,  //x-1 for odd parity
    output reg parity_ch2);
    assign parity_bit = a^b^c;  
    assign parity_gen = a^b^c^parity_bit;
always @(*) begin      
    //even parity                                        //Execute this block whenever ANY input used inside this block changes
    if( 1'b0 == x ) begin                   //decides whether it is even parity or odd parity
         parity_ch1= parity_gen^0;          //parity checker 1
         parity_ch2= parity_gen^1;          //parity checker 2
    end
    else begin
    //odd parity
         parity_ch1= ~(parity_gen^0);
         parity_ch2= ~(parity_gen^1);
    end   
end    
endmodule