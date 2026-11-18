module lfsr_16bit(input clk, rst, en, output reg [15:0] s);
  always @(posedge clk or posedge rst) if(rst) s<=16'h1; else if(en) s<={s[14:0], s[15]^s};
endmodule
