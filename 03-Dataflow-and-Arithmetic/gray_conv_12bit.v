module gray_conv_12bit(input [11:0] d, input dec, output [11:0] q);
  wire [11:0] bin; assign bin[11]=d[11]; genvar i;
  generate for(i=10;i>=0;i=i-1) begin : g2b assign bin[i]=bin[i+1]^d[i]; end endgenerate
  assign q=dec?bin:(d^(d>>1));
endmodule
