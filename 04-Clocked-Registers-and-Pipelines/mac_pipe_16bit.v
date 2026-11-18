module mac_pipe_16bit(input clk, rst, en, input [15:0] a, b, output reg [31:0] acc);
  reg [31:0] p;
  always @(posedge clk or posedge rst) if(rst) begin p<=0; acc<=0; end else if(en) begin p<=a*b; acc<=acc+p; end
endmodule
