module cmos_aoi21_01(input a, b, c, output y);
  supply1 vdd; supply0 gnd; wire wp, wn;
  pmos p1(wp, vdd, a); pmos p2(wp, vdd, b); pmos p3(y, wp, c);
  nmos n1(y, wn, a); nmos n2(wn, gnd, b); nmos n3(y, gnd, c);
endmodule
