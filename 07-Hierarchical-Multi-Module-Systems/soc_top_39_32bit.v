module sub_alu_39(input [31:0] a, b, input op, output [31:0] y); assign y=op?(a-b):(a+b); endmodule
module sub_reg_39(input clk, rst, en, input [31:0] d, output reg [31:0] q); always @(posedge clk or posedge rst) if(rst) q<=0; else if(en) q<=d; endmodule
module soc_top_39_32bit(input clk, rst, en, op, input [31:0] ia, ib, output [31:0] oq);
  wire [31:0] aw, rw;
  sub_alu_39 u1(.a(ia),.b(ib),.op(op),.y(aw));
  sub_reg_39 u2(.clk(clk),.rst(rst),.en(en),.d(aw),.q(rw));
  assign oq=rw;
endmodule
