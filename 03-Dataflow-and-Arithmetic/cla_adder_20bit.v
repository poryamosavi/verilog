module cla_adder_20bit(input [19:0] a, b, input cin, output [19:0] s, output cout);
  wire [19:0] p=a^b, g=a&b; wire [20:0] c; assign c=cin; genvar i;
  generate for(i=0;i<20;i=i+1) begin : cla assign c[i+1]=g[i]|(p[i]&c[i]); assign s[i]=p[i]^c[i]; end endgenerate
  assign cout=c[20];
endmodule
