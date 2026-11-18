module gate_adder_12bit(input [11:0] a, b, input cin, output [11:0] sum, output cout);
  wire [12:0] c; assign c=cin; genvar i;
  generate for(i=0;i<12;i=i+1) begin : fa
    wire w1, w2, w3;
    xor(w1, a[i], b[i]); xor(sum[i], w1, c[i]);
    and(w2, a[i], b[i]); and(w3, w1, c[i]); or(c[i+1], w2, w3);
  end endgenerate
  assign cout=c[12];
endmodule
