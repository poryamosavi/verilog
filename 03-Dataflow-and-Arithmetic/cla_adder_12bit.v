module cla_adder_12bit(input [11:0] a, b, input cin, output [11:0] s, output cout);
  wire [11:0] p=a^b, g=a&b; wire [12:0] c; assign c=cin; genvar i;
  generate for(i=0;i<12;i=i+1) begin : cla assign c[i+1]=g[i]|(p[i]&c[i]); assign s[i]=p[i]^c[i]; end endgenerate
  assign cout=c[12];
endmodule
