module shifter_8bit(input [7:0] d, input [4:0] sh, input dir, output [7:0] q);
  assign q=dir?(d>>sh):(d<<sh);
endmodule
