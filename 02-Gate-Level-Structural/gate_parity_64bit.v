module gate_parity_64bit(input [63:0] d, output pe, po);
  xor(pe, ^d, 1'b0); not(po, pe);
endmodule
