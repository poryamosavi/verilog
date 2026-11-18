`timescale 1ns/1ps
module tb_verify_21;
  reg clk, rst, en, op; reg [15:0] a, b; reg [15:0] q;
  always @(posedge clk or posedge rst) if(rst) q<=0; else if(en) q<=op?(a-b):(a+b);
  always #5 clk=~clk;
  initial begin clk=0; rst=1; en=0; op=0; a=16'd210; b=16'd63; #20 rst=0; en=1; #20 op=1; #20 $display("TB_21=%d", q); $finish; end
endmodule
