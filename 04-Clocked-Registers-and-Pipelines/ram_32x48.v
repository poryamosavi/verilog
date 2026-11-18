module ram_32x48(input clk, we, input [4:0] wa, ra, input [47:0] wd, output reg [47:0] rd);
  reg [47:0] mem [0:31];
  always @(posedge clk) begin if(we) mem[wa]<=wd; rd<=mem[ra]; end
endmodule
