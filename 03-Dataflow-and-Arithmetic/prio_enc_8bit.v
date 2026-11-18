module prio_enc_8bit(input [7:0] req, output reg [5:0] code, output valid);
  integer k; assign valid=|req;
  always @(*) begin code=0; for(k=0;k<8;k=k+1) if(req[k]) code=k[5:0]; end
endmodule
