module gate_tristate_32bit(input [31:0] d, input en, output [31:0] y);
  genvar i; generate for(i=0;i<32;i=i+1) begin : tri_g bufif1(y[i], d[i], en); end endgenerate
endmodule
