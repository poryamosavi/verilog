module shifter_12bit(input [11:0] d, input [4:0] sh, input dir, output [11:0] q);
  assign q=dir?(d>>sh):(d<<sh);
endmodule
