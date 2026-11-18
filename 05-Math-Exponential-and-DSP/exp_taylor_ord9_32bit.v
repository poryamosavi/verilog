module exp_taylor_ord9_32bit(input clk, rst, input [31:0] x, output reg [31:0] y);
  wire [63:0] x2=(x*x)>>8;
  always @(posedge clk or posedge rst) if(rst) y<=0; else y<=(32'd256)+x+(x2[31:0]>>1)+(32'd9);
endmodule
