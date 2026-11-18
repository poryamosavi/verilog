module cla_adder_64bit(input [63:0] a, b, input cin, output [63:0] s, output cout);
  wire [63:0] p=a^b, g=a&b; wire [64:0] c; assign c=cin; genvar i;
  generate for(i=0;i<64;i=i+1) begin : cla assign c[i+1]=g[i]|(p[i]&c[i]); assign s[i]=p[i]^c[i]; end endgenerate
  assign cout=c[64];
endmodule
