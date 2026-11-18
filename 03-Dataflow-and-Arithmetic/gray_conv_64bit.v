module gray_conv_64bit(input [63:0] d, input dec, output [63:0] q);
  wire [63:0] bin; assign bin[63]=d[63]; genvar i;
  generate for(i=62;i>=0;i=i-1) begin : g2b assign bin[i]=bin[i+1]^d[i]; end endgenerate
  assign q=dec?bin:(d^(d>>1));
endmodule
