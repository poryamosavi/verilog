module shifter_24bit(input [23:0] d, input [4:0] sh, input dir, output [23:0] q);
  assign q=dir?(d>>sh):(d<<sh);
endmodule
