module gate_tristate_12bit(input [11:0] d, input en, output [11:0] y);
  genvar i; generate for(i=0;i<12;i=i+1) begin : tri_g bufif1(y[i], d[i], en); end endgenerate
endmodule
