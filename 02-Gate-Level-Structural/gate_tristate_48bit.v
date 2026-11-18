module gate_tristate_48bit(input [47:0] d, input en, output [47:0] y);
  genvar i; generate for(i=0;i<48;i=i+1) begin : tri_g bufif1(y[i], d[i], en); end endgenerate
endmodule
