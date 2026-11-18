module ram_32x64(input clk, we, input [4:0] wa, ra, input [63:0] wd, output reg [63:0] rd);
  reg [63:0] mem [0:31];
  always @(posedge clk) begin if(we) mem[wa]<=wd; rd<=mem[ra]; end
endmodule
