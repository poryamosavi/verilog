module shifter_16bit(input [15:0] d, input [4:0] sh, input dir, output [15:0] q);
  assign q=dir?(d>>sh):(d<<sh);
endmodule
