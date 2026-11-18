module gate_tristate_24bit(input [23:0] d, input en, output [23:0] y);
  genvar i; generate for(i=0;i<24;i=i+1) begin : tri_g bufif1(y[i], d[i], en); end endgenerate
endmodule
