module gray_conv_4bit(input [3:0] d, input dec, output [3:0] q);
  wire [3:0] bin; assign bin[3]=d[3]; genvar i;
  generate for(i=2;i>=0;i=i-1) begin : g2b assign bin[i]=bin[i+1]^d[i]; end endgenerate
  assign q=dec?bin:(d^(d>>1));
endmodule
