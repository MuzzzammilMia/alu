An ALU (Arithmetic Logic Unit) that operations include addition, xor,subtraction and shift right (4 bits.) 
Input 12 bit and 4 bit output. The input is split up into 3 4-bit signals (Opcode,A,B.) 
An exception case is for addition of A=1111,    B = 1111. Where the sum = 1 1110. In this situation the additional 1 is ignored. 
