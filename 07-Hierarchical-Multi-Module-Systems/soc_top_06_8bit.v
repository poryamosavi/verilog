module sub_alu_06(input [7:0] a, b, input op, output [7:0] y); assign y=op?(a-b):(a+b); endmodule
module sub_reg_06(input clk, rst, en, input [7:0] d, output reg [7:0] q); always @(posedge clk or posedge rst) if(rst) q<=0; else if(en) q<=d; endmodule
module soc_top_06_8bit(input clk, rst, en, op, input [7:0] ia, ib, output [7:0] oq);
  wire [7:0] aw, rw;
  sub_alu_06 u1(.a(ia),.b(ib),.op(op),.y(aw));
  sub_reg_06 u2(.clk(clk),.rst(rst),.en(en),.d(aw),.q(rw));
  assign oq=rw;
endmodule
