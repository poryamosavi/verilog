module gray_conv_16bit(input [15:0] d, input dec, output [15:0] q);
  wire [15:0] bin; assign bin[15]=d[15]; genvar i;
  generate for(i=14;i>=0;i=i-1) begin : g2b assign bin[i]=bin[i+1]^d[i]; end endgenerate
  assign q=dec?bin:(d^(d>>1));
endmodule
