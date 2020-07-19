/*Produced By: Muzzammil Mia
Date started: 18/07/2020 
*/

`timescale 1 ns/10 ps 
 
module alu_tb3;
    wire [11:0] in;
    wire [3:0]sum;

    integer i;
    integer j;

    reg [3:0] opcode;
    reg [3:0] a;
    reg [3:0] b;
     

   
    localparam period = 20;  
    alu UUT (.in(in), .sum(sum));
    assign in = {opcode,a,b};
     
    initial begin
        opcode = 4'h0;
        a = 4'h0;
        b = 4'h0;
        #20;
        
        for (i=0; i<9; i=i+1)begin

            $display("current loop#%0d",i);             
            #20 opcode = i;
            for (j=0; j<10; j = j+1)begin
                a = $urandom_range(0,15); 
                b = $urandom_range(0,15);  
            
                $display("opcode%0d   a%0d  b%0d"  ,opcode,a,b); 
            end 
	 end 
    end
endmodule
