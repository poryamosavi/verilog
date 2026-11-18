module gate_parity_4bit(input [3:0] d, output pe, po);
  xor(pe, ^d, 1'b0); not(po, pe);
endmodule
