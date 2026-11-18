module cla_adder_8bit(input [7:0] a, b, input cin, output [7:0] s, output cout);
  wire [7:0] p=a^b, g=a&b; wire [8:0] c; assign c=cin; genvar i;
  generate for(i=0;i<8;i=i+1) begin : cla assign c[i+1]=g[i]|(p[i]&c[i]); assign s[i]=p[i]^c[i]; end endgenerate
  assign cout=c[8];
endmodule
