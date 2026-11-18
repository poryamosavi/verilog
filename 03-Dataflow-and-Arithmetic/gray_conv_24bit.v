module gray_conv_24bit(input [23:0] d, input dec, output [23:0] q);
  wire [23:0] bin; assign bin[23]=d[23]; genvar i;
  generate for(i=22;i>=0;i=i-1) begin : g2b assign bin[i]=bin[i+1]^d[i]; end endgenerate
  assign q=dec?bin:(d^(d>>1));
endmodule
