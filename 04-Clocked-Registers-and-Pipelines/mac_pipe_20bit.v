module mac_pipe_20bit(input clk, rst, en, input [19:0] a, b, output reg [39:0] acc);
  reg [39:0] p;
  always @(posedge clk or posedge rst) if(rst) begin p<=0; acc<=0; end else if(en) begin p<=a*b; acc<=acc+p; end
endmodule
