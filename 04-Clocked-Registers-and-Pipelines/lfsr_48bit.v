module lfsr_48bit(input clk, rst, en, output reg [47:0] s);
  always @(posedge clk or posedge rst) if(rst) s<=48'h1; else if(en) s<={s[46:0], s[47]^s};
endmodule
