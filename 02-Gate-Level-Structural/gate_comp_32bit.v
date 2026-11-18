module gate_comp_32bit(input [31:0] a, b, output eq, gt, lt);
  wire [31:0] x; genvar i;
  generate for(i=0;i<32;i=i+1) begin : eqg xnor(x[i], a[i], b[i]); end endgenerate
  assign eq=&x; assign gt=(a>b); assign lt=(a<b);
endmodule
