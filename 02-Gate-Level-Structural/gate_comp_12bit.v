module gate_comp_12bit(input [11:0] a, b, output eq, gt, lt);
  wire [11:0] x; genvar i;
  generate for(i=0;i<12;i=i+1) begin : eqg xnor(x[i], a[i], b[i]); end endgenerate
  assign eq=&x; assign gt=(a>b); assign lt=(a<b);
endmodule
