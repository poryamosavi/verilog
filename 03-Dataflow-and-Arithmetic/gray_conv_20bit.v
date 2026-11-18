module gray_conv_20bit(input [19:0] d, input dec, output [19:0] q);
  wire [19:0] bin; assign bin[19]=d[19]; genvar i;
  generate for(i=18;i>=0;i=i-1) begin : g2b assign bin[i]=bin[i+1]^d[i]; end endgenerate
  assign q=dec?bin:(d^(d>>1));
endmodule
