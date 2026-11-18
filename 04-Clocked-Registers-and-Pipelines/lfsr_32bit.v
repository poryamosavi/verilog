module lfsr_32bit(input clk, rst, en, output reg [31:0] s);
  always @(posedge clk or posedge rst) if(rst) s<=32'h1; else if(en) s<={s[30:0], s[31]^s};
endmodule
