module shift_reg_24bit(input clk, rst, input [1:0] m, input [23:0] d, input sin, output reg [23:0] q);
  always @(posedge clk or posedge rst) if(rst) q<=0; else case(m) 0:q<=q; 1:q<={sin,q[23:1]}; 2:q<={q[22:0],sin}; 3:q<=d; endcase
endmodule
