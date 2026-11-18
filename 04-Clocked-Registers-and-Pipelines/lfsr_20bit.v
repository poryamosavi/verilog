module lfsr_20bit(input clk, rst, en, output reg [19:0] s);
  always @(posedge clk or posedge rst) if(rst) s<=20'h1; else if(en) s<={s[18:0], s[19]^s};
endmodule
