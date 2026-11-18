module cla_adder_24bit(input [23:0] a, b, input cin, output [23:0] s, output cout);
  wire [23:0] p=a^b, g=a&b; wire [24:0] c; assign c=cin; genvar i;
  generate for(i=0;i<24;i=i+1) begin : cla assign c[i+1]=g[i]|(p[i]&c[i]); assign s[i]=p[i]^c[i]; end endgenerate
  assign cout=c[24];
endmodule
