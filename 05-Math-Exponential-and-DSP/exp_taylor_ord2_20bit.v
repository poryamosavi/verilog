module exp_taylor_ord2_20bit(input clk, rst, input [19:0] x, output reg [19:0] y);
  wire [39:0] x2=(x*x)>>8;
  always @(posedge clk or posedge rst) if(rst) y<=0; else y<=(20'd256)+x+(x2[19:0]>>1)+(20'd2);
endmodule
