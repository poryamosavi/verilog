module gate_tristate_20bit(input [19:0] d, input en, output [19:0] y);
  genvar i; generate for(i=0;i<20;i=i+1) begin : tri_g bufif1(y[i], d[i], en); end endgenerate
endmodule
