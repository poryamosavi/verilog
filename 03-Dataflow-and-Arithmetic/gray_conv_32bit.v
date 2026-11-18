module gray_conv_32bit(input [31:0] d, input dec, output [31:0] q);
  wire [31:0] bin; assign bin[31]=d[31]; genvar i;
  generate for(i=30;i>=0;i=i-1) begin : g2b assign bin[i]=bin[i+1]^d[i]; end endgenerate
  assign q=dec?bin:(d^(d>>1));
endmodule
