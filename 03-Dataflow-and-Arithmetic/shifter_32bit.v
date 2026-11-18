module shifter_32bit(input [31:0] d, input [4:0] sh, input dir, output [31:0] q);
  assign q=dir?(d>>sh):(d<<sh);
endmodule
