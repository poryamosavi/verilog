module shifter_4bit(input [3:0] d, input [4:0] sh, input dir, output [3:0] q);
  assign q=dir?(d>>sh):(d<<sh);
endmodule
