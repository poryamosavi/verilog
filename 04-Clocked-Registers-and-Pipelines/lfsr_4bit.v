module lfsr_4bit(input clk, rst, en, output reg [3:0] s);
  always @(posedge clk or posedge rst) if(rst) s<=4'h1; else if(en) s<={s[2:0], s[3]^s};
endmodule
