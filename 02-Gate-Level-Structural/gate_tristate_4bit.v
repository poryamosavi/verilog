module gate_tristate_4bit(input [3:0] d, input en, output [3:0] y);
  genvar i; generate for(i=0;i<4;i=i+1) begin : tri_g bufif1(y[i], d[i], en); end endgenerate
endmodule
