module cla_adder_48bit(input [47:0] a, b, input cin, output [47:0] s, output cout);
  wire [47:0] p=a^b, g=a&b; wire [48:0] c; assign c=cin; genvar i;
  generate for(i=0;i<48;i=i+1) begin : cla assign c[i+1]=g[i]|(p[i]&c[i]); assign s[i]=p[i]^c[i]; end endgenerate
  assign cout=c[48];
endmodule
