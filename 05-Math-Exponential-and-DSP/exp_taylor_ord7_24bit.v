module exp_taylor_ord7_24bit(input clk, rst, input [23:0] x, output reg [23:0] y);
  wire [47:0] x2=(x*x)>>8;
  always @(posedge clk or posedge rst) if(rst) y<=0; else y<=(24'd256)+x+(x2[23:0]>>1)+(24'd7);
endmodule
