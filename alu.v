/*
Produced By: Muzzammil Mia
Date started: 12/07/2020 
*/

module alu(in, sum);
 input [11:0] in;
 wire  [3:0]opcode;
 wire [3:0]a;
 wire [3:0]b;
 wire [7:0]c;
 wire [3:0]d;
 output reg [3:0] sum;
 

  assign  opcode = in[11:8];  
  assign  a = in[7:4];
  assign  b = in[3:0];
  assign  c[7:0] = {a,b};
  assign  d[3:0] = c >> 4;

always@*
   case(opcode) 
    0:  sum = a ^ b;
    1:  sum = a + b;
    2:  sum = a - b;
    3:  sum = d;
    default: sum = 0;
   endcase
  
endmodule 

