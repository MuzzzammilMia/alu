/*
Produced By: Muzzammil Mia
Date started: 12/07/2020 
*/

module alu(in, sum);
 input [11:0] in;
 wire [3:0]opcode;
 wire [3:0]a;
 wire [3:0]b;
 wire [7:0]c;
 wire [3:0]d;
 wire [3:0]e;
 wire [7:0]f;
 output reg [3:0] sum;
 

 assign  opcode = in[11:8];  
 assign  a = in[7:4];
 assign  b = in[3:0];
 assign  c[7:0] = {a,b};
 assign  f[7:0] = {a,b};
 assign  d[3:0] = c >> 1;
 assign  e[3:0] = f << 1;

always@*
  case(opcode)
    0:  sum = a || b; // or
    1:  sum = ~(a || b); //nor
    2:  sum = a ^ b; //xor
    3:  sum = a & b;//and
    4:  sum = ~(a & b); //nand
    5:  sum = a + b; //addition
    6:  sum = a - b; //subtraction
    7:  sum = d; //right shift 4
    8:  sum = e; //lleft shift 4
    default: sum = 0;
  endcase
  
endmodule 

