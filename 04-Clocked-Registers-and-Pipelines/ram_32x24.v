module ram_32x24(input clk, we, input [4:0] wa, ra, input [23:0] wd, output reg [23:0] rd);
  reg [23:0] mem [0:31];
  always @(posedge clk) begin if(we) mem[wa]<=wd; rd<=mem[ra]; end
endmodule
