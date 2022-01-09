`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/17 11:43:12
// Design Name: 
// Module Name: butterfly
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

// 如果是如下的蝴蝶
// indata1  -----·----------·----> indata1'
//                \        /    
//                 \      /    
//                  \    /  
//                   \  / 
//                    \/
//                    /\
//                   /  \
//                  /    \
//                 /      \
//                /        \
// indata2  -----·----------·----> indata2'
//            Wn      -1
// indata1'_实部 = indata1_实部 + indata2_实部*Wn_实部 - indata2_虚部*Wn_虚部
// indata1'_虚部 = indata1_虚部 + indata2_实部*Wn_虚部 + indata2_虚部*Wn_实部
// indata2'_实部 = indata1_实部 - indata2_实部*Wn_实部 + indata2_虚部*Wn_虚部
// indata2'_虚部 = indata1_虚部 - indata2_实部*Wn_虚部 - indata2_虚部*Wn_实部

// 陈述关于signed变量的几个事实
// 1、两个signed变量bit相等，带上同样多的符号位，则乘积结果的符号位为两个变量的符号位数之和，可以通过结果符号位进一步研判是否进位。
// 2、两个signed变量相乘，其非符号位相乘的结果位数是两个变量的非符号位之和。结果位数的剩余都是符号位。见第5条说明
// 3、两个signed变量相加，其结果符号位数为两个变量符号位之和。
// 4、对wn的实部和虚部采用符号位首位，其余位由小于1的数字右移7位。
// 5、两个signed变量，1个4位(符号位1位)，1个5位(符号位2位)，结果输出设定9位，则结果的符号位必定为3位。
// 6、不等位符号位的两个signed变量相加，其结果的符号位不定，只取决于符号位
// 7、11100，如果两位符号位，则有11100-->11011-->11100=-4;如果一位符号位，则有11100-->11011-->10100=-4.

// 几个优化符号位的手段
// -1+(-1) = -2  以二进制补码为例，1111+1111 = 1110
// -7+(-7) = -14 以二进制补码为例，1001+1001 = 10010

module butterfly(
 input clk,
 input rstn,
 input signed [19:0] indata1_real, 
 input signed [19:0] indata1_imag,
 input signed [19:0] indata2_real,
 input signed [19:0] indata2_imag,
 input signed [15:0] wn_real,       // 约定只有一位符号位
 input signed [15:0] wn_imag,
 input regular_signal,             // 避免后续出现竞争
 output signed [19:0] oudata1_real,// 输出只有一位符号位
 output signed [19:0] oudata1_imag,
 output signed [19:0] oudata2_real,
 output signed [19:0] oudata2_imag,
 output over_signal);              //用于避免后续出现竞争
 
 // en信号的右移位寄存器，便于规范流水线
 reg [4:0] regular_register;
 assign over_signal = regular_register[2];
 always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
	   regular_register <= 5'b0;
	   end
	else begin
	   regular_register <= {regular_register[3:0],regular_signal};
	   end
	end
 // 以下存储indata2和Wn相乘的两个实数部分和虚数部分，-----------以下四个变量都是1位符号位
 reg signed [35:0] indata2_wn_real1; //两个实部相乘
 reg signed [35:0] indata2_wn_real2; //两个虚部相乘，相乘虽然有负号，但无所谓
 reg signed [35:0] indata2_wn_imag1; //indata2实部和Wn虚部
 reg signed [35:0] indata2_wn_imag2; //indata2虚部和Wn实部
 reg signed [35:0] indata1_real_tmp;
 reg signed [35:0] indata1_imag_tmp;
 
 always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
	   indata2_wn_real1 <= 36'd0;indata2_wn_real2 <= 36'd0;
	   indata2_wn_imag1 <= 36'd0;indata2_wn_imag2 <= 36'd0;
	   indata1_real_tmp <= 36'd0;indata1_imag_tmp <= 36'd0;
	  end
	else if(regular_signal) begin
	   indata2_wn_real1 <= indata2_real*wn_real; // rr  
	   indata2_wn_real2 <= indata2_imag*wn_imag; // ii
	   indata2_wn_imag1 <= indata2_real*wn_imag; // ri
	   indata2_wn_imag2 <= indata2_imag*wn_real; // ir
	   indata1_real_tmp <= {{3{indata1_real[19]}},indata1_real[19:0],13'd0}; // 28'b00_000_0000_0000_0000_0001_0000_000
	   indata1_imag_tmp <= {{3{indata1_imag[19]}},indata1_imag[19:0],13'd0}; // 28'b10_000_0000_0000_0000_0001_0000_000
	  end
 end
 // 以下存储实部-虚部对应相乘的结果的相加减项
 reg signed [35:0] indata2_rrii; //此处以indata1'的实部和虚部作为变量存在的依据
 reg signed [35:0] indata2_riir;
 //很显然需要做的预备工作是扩展indata1实部和虚部的位数
 reg signed [35:0] indata1_real_tmp1;
 reg signed [35:0] indata1_imag_tmp1;

  always @(posedge clk or negedge rstn) begin
   if (!rstn) begin
      indata2_rrii <= 36'd0;
	  indata2_riir <= 36'd0;
	  indata1_imag_tmp1 <= 36'd0;
	  indata1_real_tmp1 <= 36'd0;
	  end
   else if(regular_register[0]) begin
      indata2_rrii <= indata2_wn_real1 - indata2_wn_real2;
	  indata2_riir <= indata2_wn_imag1 + indata2_wn_imag2;
	  indata1_real_tmp1 <= indata1_real_tmp;
	  indata1_imag_tmp1 <= indata1_imag_tmp;
      end
  end
 // 以下存储最终结果
 reg signed [35:0] oudata1_real_tmp; 
 reg signed [35:0] oudata1_imag_tmp;
 reg signed [35:0] oudata2_real_tmp;
 reg signed [35:0] oudata2_imag_tmp;
 
 always @(posedge clk or negedge rstn) begin
  if (!rstn) begin
     oudata1_real_tmp <= 36'd0;
	 oudata1_imag_tmp <= 36'd0;
	 oudata2_real_tmp <= 36'd0;
	 oudata2_imag_tmp <= 36'd0;
     end
   else if(regular_register[1]) begin
     oudata1_real_tmp <= indata1_real_tmp1 + indata2_rrii;
	 oudata1_imag_tmp <= indata1_imag_tmp1 + indata2_riir;
	 oudata2_real_tmp <= indata1_real_tmp1 - indata2_rrii;
	 oudata2_imag_tmp <= indata1_imag_tmp1 - indata2_riir;
     end
 end
 // 以下截断并生成仅有一位符号位的输出结果，后7位必然不要
 // 8'b1111_1111 = 255 7'b0111_1111 = 127 6'b0011_1111 = 63 5'b0001_1111 = 31 
 // 4'b0000_1111 = 15  3'b0000_0111 = 7 2'b0000_0011 = 3 1'b0000_0001 = 1
 /* assign oudata1_real = (oudata1_real_tmp[28:26]==3'b000 || oudata1_real_tmp[28:26]==3'b111) ? {oudata1_real_tmp[28],oudata1_real_tmp[25:7]} : 
                        ((oudata1_real_tmp[28:27]==2'b00&&oudata1_real_tmp[26]!=0)||(oudata1_real_tmp[28:27]==2'b11&&oudata1_real_tmp[26]!=1)) ? {oudata1_real_tmp[28],oudata1_real_tmp[26:8]} : oudata1_real_tmp[28:9];
  assign oudata2_real = (oudata2_real_tmp[28:26]==3'b000 || oudata2_real_tmp[28:26]==3'b111) ? {oudata2_real_tmp[28],oudata2_real_tmp[25:7]} : 
                        ((oudata2_real_tmp[28:27]==2'b00&&oudata2_real_tmp[26]!=0)||(oudata2_real_tmp[28:27]==2'b11&&oudata2_real_tmp[26]!=1)) ? {oudata2_real_tmp[28],oudata2_real_tmp[26:8]} : oudata2_real_tmp[28:9];
  assign oudata1_imag = (oudata1_imag_tmp[28:26]==3'b000 || oudata1_imag_tmp[28:26]==3'b111) ? {oudata1_imag_tmp[28],oudata1_imag_tmp[25:7]} :
                        ((oudata1_imag_tmp[28:27]==2'b00&&oudata1_imag_tmp[26]!=0)||(oudata1_imag_tmp[28:27]==2'b11&&oudata1_imag_tmp[26]!=1)) ? {oudata1_imag_tmp[28],oudata1_imag_tmp[26:8]} : oudata1_imag_tmp[28:9];
  assign oudata2_imag = (oudata2_imag_tmp[28:26]==3'b000 || oudata2_imag_tmp[28:26]==3'b111) ? {oudata2_imag_tmp[28],oudata2_imag_tmp[25:7]} : 
                        ((oudata2_imag_tmp[28:27]==2'b00&&oudata2_imag_tmp[26]!=0)||(oudata2_imag_tmp[28:27]==2'b11&&oudata2_imag_tmp[26]!=1)) ? {oudata2_imag_tmp[28],oudata2_imag_tmp[26:8]} : oudata2_imag_tmp[28:9];
 */
  assign oudata1_real = {oudata1_real_tmp[35],oudata1_real_tmp[13+18:13]};
  assign oudata1_imag = {oudata1_imag_tmp[35],oudata1_imag_tmp[13+18:13]};
  assign oudata2_real = {oudata2_real_tmp[35],oudata2_real_tmp[13+18:13]};
  assign oudata2_imag = {oudata2_imag_tmp[35],oudata2_imag_tmp[13+18:13]};
endmodule