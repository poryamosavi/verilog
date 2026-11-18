module mac_pipe_24bit(input clk, rst, en, input [23:0] a, b, output reg [47:0] acc);
  reg [47:0] p;
  always @(posedge clk or posedge rst) if(rst) begin p<=0; acc<=0; end else if(en) begin p<=a*b; acc<=acc+p; end
endmodule
