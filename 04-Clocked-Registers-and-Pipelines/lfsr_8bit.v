module lfsr_8bit(input clk, rst, en, output reg [7:0] s);
  always @(posedge clk or posedge rst) if(rst) s<=8'h1; else if(en) s<={s[6:0], s[7]^s};
endmodule
