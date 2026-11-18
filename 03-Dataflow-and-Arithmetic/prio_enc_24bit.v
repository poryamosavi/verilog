module prio_enc_24bit(input [23:0] req, output reg [5:0] code, output valid);
  integer k; assign valid=|req;
  always @(*) begin code=0; for(k=0;k<24;k=k+1) if(req[k]) code=k[5:0]; end
endmodule
