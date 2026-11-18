module gray_conv_8bit(input [7:0] d, input dec, output [7:0] q);
  wire [7:0] bin; assign bin[7]=d[7]; genvar i;
  generate for(i=6;i>=0;i=i-1) begin : g2b assign bin[i]=bin[i+1]^d[i]; end endgenerate
  assign q=dec?bin:(d^(d>>1));
endmodule
