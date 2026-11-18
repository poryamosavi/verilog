module gate_tristate_8bit(input [7:0] d, input en, output [7:0] y);
  genvar i; generate for(i=0;i<8;i=i+1) begin : tri_g bufif1(y[i], d[i], en); end endgenerate
endmodule
