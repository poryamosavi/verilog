module shifter_48bit(input [47:0] d, input [4:0] sh, input dir, output [47:0] q);
  assign q=dir?(d>>sh):(d<<sh);
endmodule
