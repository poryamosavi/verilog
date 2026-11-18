module lfsr_64bit(input clk, rst, en, output reg [63:0] s);
  always @(posedge clk or posedge rst) if(rst) s<=64'h1; else if(en) s<={s[62:0], s[63]^s};
endmodule
