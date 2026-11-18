module shift_reg_16bit(input clk, rst, input [1:0] m, input [15:0] d, input sin, output reg [15:0] q);
  always @(posedge clk or posedge rst) if(rst) q<=0; else case(m) 0:q<=q; 1:q<={sin,q[15:1]}; 2:q<={q[14:0],sin}; 3:q<=d; endcase
endmodule
