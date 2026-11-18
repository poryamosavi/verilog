module ram_32x4(input clk, we, input [4:0] wa, ra, input [3:0] wd, output reg [3:0] rd);
  reg [3:0] mem [0:31];
  always @(posedge clk) begin if(we) mem[wa]<=wd; rd<=mem[ra]; end
endmodule
