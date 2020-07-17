/*
Produced By: Muzzammil Mia
Date started: 12/07/2020 
*/
`timescale 1 ns/10 ps  

module alu_tb2;
    reg [11:0] in;
    wire [3:0]sum;
    integer i;
    
   
    localparam period = 20;  
    alu UUT (.in(in), .sum(sum));
    
    initial begin
       in = $urandom_range(11);
       for (i=0; i<10; i=i+1)begin
        $display("current loop#%0d",i); 
        #20 in = $urandom_range(0,4095); 
	end 
      end
endmodule
