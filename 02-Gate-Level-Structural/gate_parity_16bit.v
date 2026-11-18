module gate_parity_16bit(input [15:0] d, output pe, po);
  xor(pe, ^d, 1'b0); not(po, pe);
endmodule
