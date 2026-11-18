module counter_24bit(input clk, rst, en, load, up, input [23:0] d, output reg [23:0] cnt);
  always @(posedge clk or posedge rst) if(rst) cnt<=0; else if(load) cnt<=d; else if(en) cnt<=up?(cnt+1):(cnt-1);
endmodule
