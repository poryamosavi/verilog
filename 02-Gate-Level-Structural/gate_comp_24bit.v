module gate_comp_24bit(input [23:0] a, b, output eq, gt, lt);
  wire [23:0] x; genvar i;
  generate for(i=0;i<24;i=i+1) begin : eqg xnor(x[i], a[i], b[i]); end endgenerate
  assign eq=&x; assign gt=(a>b); assign lt=(a<b);
endmodule
