module cla_adder_16bit(input [15:0] a, b, input cin, output [15:0] s, output cout);
  wire [15:0] p=a^b, g=a&b; wire [16:0] c; assign c=cin; genvar i;
  generate for(i=0;i<16;i=i+1) begin : cla assign c[i+1]=g[i]|(p[i]&c[i]); assign s[i]=p[i]^c[i]; end endgenerate
  assign cout=c[16];
endmodule
