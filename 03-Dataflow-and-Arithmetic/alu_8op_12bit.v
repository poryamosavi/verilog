module alu_8op_12bit(input [11:0] a, b, input [2:0] op, output [11:0] y, output z);
  assign y=(op==0)?(a+b):(op==1)?(a-b):(op==2)?(a&b):(op==3)?(a|b):(op==4)?(a^b):(op==5)?(~a):(op==6)?(a<<1):(a>>1);
  assign z=(y==0);
endmodule
