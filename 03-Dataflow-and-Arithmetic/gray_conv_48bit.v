module gray_conv_48bit(input [47:0] d, input dec, output [47:0] q);
  wire [47:0] bin; assign bin[47]=d[47]; genvar i;
  generate for(i=46;i>=0;i=i-1) begin : g2b assign bin[i]=bin[i+1]^d[i]; end endgenerate
  assign q=dec?bin:(d^(d>>1));
endmodule
