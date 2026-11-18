module counter_48bit(input clk, rst, en, load, up, input [47:0] d, output reg [47:0] cnt);
  always @(posedge clk or posedge rst) if(rst) cnt<=0; else if(load) cnt<=d; else if(en) cnt<=up?(cnt+1):(cnt-1);
endmodule
