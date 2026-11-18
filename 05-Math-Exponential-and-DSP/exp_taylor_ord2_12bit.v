module exp_taylor_ord2_12bit(input clk, rst, input [11:0] x, output reg [11:0] y);
  wire [23:0] x2=(x*x)>>8;
  always @(posedge clk or posedge rst) if(rst) y<=0; else y<=(12'd256)+x+(x2[11:0]>>1)+(12'd2);
endmodule
