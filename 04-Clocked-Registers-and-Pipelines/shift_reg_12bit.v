module shift_reg_12bit(input clk, rst, input [1:0] m, input [11:0] d, input sin, output reg [11:0] q);
  always @(posedge clk or posedge rst) if(rst) q<=0; else case(m) 0:q<=q; 1:q<={sin,q[11:1]}; 2:q<={q[10:0],sin}; 3:q<=d; endcase
endmodule
