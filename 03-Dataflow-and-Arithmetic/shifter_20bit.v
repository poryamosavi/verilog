module shifter_20bit(input [19:0] d, input [4:0] sh, input dir, output [19:0] q);
  assign q=dir?(d>>sh):(d<<sh);
endmodule
