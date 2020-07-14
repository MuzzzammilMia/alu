/*
Produced By: Muzzammil Mia
Date started: 12/07/2020 
*/

`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module alu_tb;
    reg [11:0] in;
    wire [3:0]sum;
    
    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  

    alu UUT (.in(in), .sum(sum));
    
     initial
      begin
	    in = 001100000000; // starts execution at t=0
	#20 in = 001100111010; // execution at t = 10 time units
	#20 in = 001100101010; // execution at t = 20 time units 
	#20 in = 001100100011;  //execution at t = 30 time units 
	#20 in = 001100100100;
      end
endmodule
