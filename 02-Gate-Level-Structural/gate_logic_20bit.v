module gate_logic_20bit(input [19:0] a, b, output [19:0] ya, yo, yx);
  genvar i; generate for(i=0;i<20;i=i+1) begin : lg
    and(ya[i], a[i], b[i]); or(yo[i], a[i], b[i]); xor(yx[i], a[i], b[i]);
  end endgenerate
endmodule
