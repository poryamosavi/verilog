module alu_8op_16bit(input [15:0] a, b, input [2:0] op, output [15:0] y, output z);
  assign y=(op==0)?(a+b):(op==1)?(a-b):(op==2)?(a&b):(op==3)?(a|b):(op==4)?(a^b):(op==5)?(~a):(op==6)?(a<<1):(a>>1);
  assign z=(y==0);
endmodule
