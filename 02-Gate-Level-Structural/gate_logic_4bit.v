module gate_logic_4bit(input [3:0] a, b, output [3:0] ya, yo, yx);
  genvar i; generate for(i=0;i<4;i=i+1) begin : lg
    and(ya[i], a[i], b[i]); or(yo[i], a[i], b[i]); xor(yx[i], a[i], b[i]);
  end endgenerate
endmodule
