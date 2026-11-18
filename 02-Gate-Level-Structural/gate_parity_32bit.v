module gate_parity_32bit(input [31:0] d, output pe, po);
  xor(pe, ^d, 1'b0); not(po, pe);
endmodule
