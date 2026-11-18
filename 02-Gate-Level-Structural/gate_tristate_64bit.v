module gate_tristate_64bit(input [63:0] d, input en, output [63:0] y);
  genvar i; generate for(i=0;i<64;i=i+1) begin : tri_g bufif1(y[i], d[i], en); end endgenerate
endmodule
