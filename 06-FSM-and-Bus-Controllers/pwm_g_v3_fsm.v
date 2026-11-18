module pwm_g_v3_fsm(input clk, rst, start, input [7:0] din, output reg busy, done, output reg [7:0] dout);
  reg [1:0] st, nxt; reg [2:0] idx;
  always @(posedge clk or posedge rst) if(rst) begin st<=0; idx<=0; dout<=0; end else begin st<=nxt; if(st==1) begin idx<=idx+1; dout<={dout[6:0],din[idx]}; end end
  always @(*) begin busy=0; done=0; nxt=st; case(st) 0:if(start)nxt=1; 1:begin busy=1;if(idx==7)nxt=2;end 2:begin busy=1;nxt=3;end 3:begin done=1;nxt=0;end endcase end
endmodule
