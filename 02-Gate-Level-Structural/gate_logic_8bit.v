module gate_logic_8bit(input [7:0] a, b, output [7:0] ya, yo, yx);
  genvar i; generate for(i=0;i<8;i=i+1) begin : lg
    and(ya[i], a[i], b[i]); or(yo[i], a[i], b[i]); xor(yx[i], a[i], b[i]);
  end endgenerate
endmodule
