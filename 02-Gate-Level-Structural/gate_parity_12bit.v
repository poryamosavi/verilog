module gate_parity_12bit(input [11:0] d, output pe, po);
  xor(pe, ^d, 1'b0); not(po, pe);
endmodule
