module cla_adder_32bit(input [31:0] a, b, input cin, output [31:0] s, output cout);
  wire [31:0] p=a^b, g=a&b; wire [32:0] c; assign c=cin; genvar i;
  generate for(i=0;i<32;i=i+1) begin : cla assign c[i+1]=g[i]|(p[i]&c[i]); assign s[i]=p[i]^c[i]; end endgenerate
  assign cout=c[32];
endmodule
