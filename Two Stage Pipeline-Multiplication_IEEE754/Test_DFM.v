`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/22 15:15:36
// Design Name: 
// Module Name: Test_DFM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//***双精度浮点数的第63位为1则负，为0则正；第62-52位为指数位；剩余第51-0位为significand
//***63-60;59-56;55-52;51-48;47-44;43-40;39-36;35-32;31-28;27-24;23-20;19-16;15-12;11-8;7-4;3-0
//*** 1     2     3     4     5     6     7     8     9     10    11     12    13    14  15  16

module Test_DFM();
reg [63:0] ina1;
reg [63:0] inb1;
reg [63:0] ina2;
reg [63:0] inb2;

reg clk;
reg reset_n;
reg round_cfg1;
reg round_cfg2;

wire [63:0] out1;
wire [63:0] out2;

wire [1:0]defectornon_signal1;
wire [1:0]defectornon_signal2;

//wire symbol;
//wire [11:0] exponent_reg1;

DouFloatMul myDouFloatMul1(ina1,inb1,clk,reset_n,round_cfg1,out1,defectornon_signal1);
DouFloatMul myDouFloatMul2(ina2,inb2,clk,reset_n,round_cfg2,out2,defectornon_signal2);


always #50 clk = ~clk;
initial
  begin
   //reset_n = 1;
   reset_n = 0;
   clk = 0;
   ina1 = 64'h4008_0000_0000_0000;  //+2^1*(1.1)_2=3
   inb1 = 64'hC008_0000_0000_0000;  //-2^1*(1.1)_2=-3   计算得到-9  -1001=-2^3*(1.001)_2  64'hC022_0000_0000_0000
   round_cfg1 = 0;
   #100
   reset_n = 1;
   #120
   round_cfg2 = 1;
   ina2 = 64'hBFF8_0000_0000_0000;  
   inb2 = 64'hBFF0_0000_0000_0000;  // inb2 =-1  结果为-1.5  64'h3FF8_0000_0000_0000
   #100
   round_cfg1 = 1;
   ina1 = 64'hBFF8_0000_0000_0000; 
   inb1 = 64'h3FF0_0000_0000_0000;  //inb1=+1  结果为+1.5  64'hBFF8_0000_0000_0000
   
   #60 
   round_cfg2 = 1;
   ina2 = 64'h0000_0000_0000_0000;  //
   inb2 = 64'h0000_0000_0000_0000;  // 结果溢出
  // #20 reset_n = 1;
   #80
   round_cfg1 = 1;
   ina1 = 64'hBFF8_0000_0000_0000;  //
   inb1 = 64'hBFF0_0000_0000_0000;  //2^0*(1.1)_2=1.5  计算得到1.5  64'h3FF8_0000_0000_0000
   #80
   round_cfg2 = 0;
   ina2 = 64'hBFF8_0000_0000_0000;  //-2^0*(1.1)_2=-1.5
   inb2 = 64'hBFF8_0000_0000_0000;  //-2^0*(1.1)_2=-1.5  计算得到2.25 10.01_2 = 2^1*(1.001)_2  64'h4002_0000_0000_0000
   #80
   round_cfg1 = 0;
   ina1 = 64'h7FFF_FFFF_FFFF_FFFF; 
   inb1 = 64'h7FFF_FFFF_FFFF_FFFF;  
   #80
   round_cfg2 = 1;
   ina2 = 64'h7FFF_FFFF_FFFF_FFFF;  
   inb2 = 64'h7FFF_FFFF_FFFF_FFFF;
  end
endmodule
