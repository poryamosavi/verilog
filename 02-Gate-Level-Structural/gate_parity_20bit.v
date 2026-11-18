module gate_parity_20bit(input [19:0] d, output pe, po);
  xor(pe, ^d, 1'b0); not(po, pe);
endmodule
