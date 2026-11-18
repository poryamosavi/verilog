module gate_parity_48bit(input [47:0] d, output pe, po);
  xor(pe, ^d, 1'b0); not(po, pe);
endmodule
