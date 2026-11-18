module shifter_64bit(input [63:0] d, input [4:0] sh, input dir, output [63:0] q);
  assign q=dir?(d>>sh):(d<<sh);
endmodule
