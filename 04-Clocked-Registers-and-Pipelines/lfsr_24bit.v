module lfsr_24bit(input clk, rst, en, output reg [23:0] s);
  always @(posedge clk or posedge rst) if(rst) s<=24'h1; else if(en) s<={s[22:0], s[23]^s};
endmodule
