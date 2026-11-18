module cmos_mux_14(input d0, d1, sel, output y);
  supply1 vdd; supply0 gnd; wire sn;
  pmos pi(sn, vdd, sel); nmos ni(sn, gnd, sel);
  cmos c0(y, d0, sn, sel); cmos c1(y, d1, sel, sn);
endmodule
