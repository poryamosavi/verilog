module lfsr_12bit(input clk, rst, en, output reg [11:0] s);
  always @(posedge clk or posedge rst) if(rst) s<=12'h1; else if(en) s<={s[10:0], s[11]^s};
endmodule
