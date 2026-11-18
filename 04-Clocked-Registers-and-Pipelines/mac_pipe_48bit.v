module mac_pipe_48bit(input clk, rst, en, input [47:0] a, b, output reg [95:0] acc);
  reg [95:0] p;
  always @(posedge clk or posedge rst) if(rst) begin p<=0; acc<=0; end else if(en) begin p<=a*b; acc<=acc+p; end
endmodule
