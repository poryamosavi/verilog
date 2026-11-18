module sub_alu_16(input [15:0] a, b, input op, output [15:0] y); assign y=op?(a-b):(a+b); endmodule
module sub_reg_16(input clk, rst, en, input [15:0] d, output reg [15:0] q); always @(posedge clk or posedge rst) if(rst) q<=0; else if(en) q<=d; endmodule
module soc_top_16_16bit(input clk, rst, en, op, input [15:0] ia, ib, output [15:0] oq);
  wire [15:0] aw, rw;
  sub_alu_16 u1(.a(ia),.b(ib),.op(op),.y(aw));
  sub_reg_16 u2(.clk(clk),.rst(rst),.en(en),.d(aw),.q(rw));
  assign oq=rw;
endmodule
