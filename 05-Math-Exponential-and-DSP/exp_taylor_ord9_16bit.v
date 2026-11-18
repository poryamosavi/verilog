module exp_taylor_ord9_16bit(input clk, rst, input [15:0] x, output reg [15:0] y);
  wire [31:0] x2=(x*x)>>8;
  always @(posedge clk or posedge rst) if(rst) y<=0; else y<=(16'd256)+x+(x2[15:0]>>1)+(16'd9);
endmodule
