module gate_tristate_16bit(input [15:0] d, input en, output [15:0] y);
  genvar i; generate for(i=0;i<16;i=i+1) begin : tri_g bufif1(y[i], d[i], en); end endgenerate
endmodule
