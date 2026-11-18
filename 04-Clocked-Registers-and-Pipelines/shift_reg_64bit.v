module shift_reg_64bit(input clk, rst, input [1:0] m, input [63:0] d, input sin, output reg [63:0] q);
  always @(posedge clk or posedge rst) if(rst) q<=0; else case(m) 0:q<=q; 1:q<={sin,q[63:1]}; 2:q<={q[62:0],sin}; 3:q<=d; endcase
endmodule
