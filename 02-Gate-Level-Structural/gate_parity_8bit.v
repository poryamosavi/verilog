module gate_parity_8bit(input [7:0] d, output pe, po);
  xor(pe, ^d, 1'b0); not(po, pe);
endmodule
