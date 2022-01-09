`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/22 09:29:55
// Design Name: 
// Module Name: DouFloatMul
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

//***本模块综合实现符合IEEE754标准的双精度浮点表示
//***与两个双精度浮点数的乘法计算
//***双精度浮点数的第63位为1则负，为0则正；第62-52位为指数位；剩余第51-0位为significand
//两级流水线
module DouFloatMul
 (input [63:0] ina,
  input [63:0] inb,
  input clk,
  input reset_n,
  input round_cfg,
  output reg [63:0] out,
  output reg [1:0]defectornon_signal);   //0表示没有溢出，1表示上溢，2表示下溢，x表示rstn的输出。
  
  parameter exponent_bias = 11'd1023;
  
//***特殊数字的输入放到第二级流水线进行处理
//***特殊数字包括其中任何一个乘数为0或者为1或者为-1  
//***一级流水部分  
  reg sign_reg1;
  reg  [11:0]exponent_reg1;            //存储指数相加以后的指数值并且多设置一位以检测是否溢出
  wire [52:0]a_signficant_real;        
  wire [52:0]b_signficant_real;
  reg  [105:0]ab_signficant_real;  //赋值为0是为了便于之后对首位和次位的判断
   
  assign a_signficant_real  = {1,ina[51:0]}; //可认为对小数部分右移52位
  assign b_signficant_real  = {1,inb[51:0]}; //可认为对小数部分右移52位
  
//*** 关于上溢和下溢的判断，如果同号容易，异号则取决于幂的绝对值更大
  reg [1:0] double_symbol;  
  reg exponent_abs;   //0则表明两数之间的负幂更大，1则表明两数之间的正幂更大。
  wire [10:0]a_exponent_real;
  wire [10:0]b_exponent_real;
  
  assign a_exponent_real = ina[62]? (ina[62:52] - exponent_bias):(exponent_bias - ina[62:52]);
  assign b_exponent_real = inb[62]? (inb[62:52] - exponent_bias):(exponent_bias - inb[62:52]);
 
  
  //***二级流水线部分变量定义
  reg [54:0]ab_signficant_106_tmp;
  reg [54:0]ab_signficant_106_retmp;
  reg [51:0]ab_signficant_106; 
  reg [12:0]exponent_reg21;
  reg [10:0]exponent_reg22_tmp;
  reg [1:0]defectornon_signal_tmp;
  
  //*** 一级流水线部分
  always @(posedge clk or negedge reset_n)
  begin
      if(!reset_n) begin
	     sign_reg1 <= 1'bx;
		 exponent_reg1 <= 12'hxxx;
		 ab_signficant_real <= 106'h00xx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx;
		 double_symbol <= 2'bxx;
		 exponent_abs <= 1'bx;
		 end
	  else begin
	    if (!((ina[51:0]==0 && ina[63]==0 && ina[62:52]==exponent_bias)||(inb[51:0]==0 && inb[63]==0 && inb[62:52]==exponent_bias)||(ina[51:0]==0 && ina[63]==1 && ina[62:52]==exponent_bias)||(inb[51:0]==0 && inb[63]==1 && inb[62:52]==exponent_bias)))
	     begin
		 sign_reg1 <= ina[63]^inb[63]; //判断正负
		 exponent_reg1 <= ina[62:52]+inb[62:52]-exponent_bias;   
		 ab_signficant_real <= a_signficant_real*b_signficant_real;
		 double_symbol <= {ina[62],inb[62]};
		 if ( ina[62]==1 || inb[62]==0 ) begin
		    exponent_abs <=  (a_exponent_real>b_exponent_real) ? 1 : 0;
		 end
		 else if ( ina[62]==0 || inb[62]==1 ) begin
		    exponent_abs <=  (a_exponent_real>b_exponent_real) ? 0 : 1;
		 end
		 else begin
		    exponent_abs <= 1'bx;
		 end
		 end
        else
	      begin
		    if(ina[51:0]==0 && ina[63]==0 && ina[62:52]==exponent_bias) begin
	         out <= inb;
	         defectornon_signal <= 2'b00;		
            end
            else if(inb[51:0]==0 && inb[63]==0 && inb[62:52]==exponent_bias) begin
	         out <= ina;
	         defectornon_signal <= 2'b00;		
            end
		    else if(ina[51:0]==0 && ina[63]==1 && ina[62:52]==exponent_bias) begin
			  out[62:0] <= inb[62:0];
	          defectornon_signal <= 2'b00;
			 if (inb[63]==1) begin
	             out[63] <= 1'd0;
				 end
			 else if (inb[63]==0) begin
			     out[63] <= 1'd1;
				 end  		
            end
		    else if(inb[51:0]==0 && inb[63]==1 && inb[62:52]==exponent_bias) begin
		     out[62:0] <= ina[62:0];
	         defectornon_signal <= 2'b00;
             if (ina[63]==1) begin
	             out[63] <= 1'd0;
				 end
			 else if (ina[63]==0) begin
			     out[63] <= 1'd1;
				 end			 
            end  
          end		 
       end		 
  end	 
  
  //***指数部分第一次调整，根据首二位确定指数是否+1   
  always @(posedge clk or negedge reset_n)
  begin
   if(!reset_n) 
     begin
	   out <= 64'dx;
	   defectornon_signal <= 2'bxx;
	   end
	   
	else
     begin 
//******  完成指数和底数的调整
   if (!((ina[51:0]==0 && ina[63]==0 && ina[62:52]==exponent_bias)||(inb[51:0]==0 && inb[63]==0 && inb[62:52]==exponent_bias)||(ina[51:0]==0 && ina[63]==1 && ina[62:52]==exponent_bias)||(inb[51:0]==0 && inb[63]==1 && inb[62:52]==exponent_bias)))
	begin
	case(ab_signficant_real[105])
	 1'b1:
	 begin
	      exponent_reg21 = exponent_reg1 + 1'b1;
		  ab_signficant_106_tmp[54:53] = 2'b01;                    
          ab_signficant_106_tmp[52:1] =ab_signficant_real[104:53];  
		  ab_signficant_106_tmp[0] = ab_signficant_real[52];
      end
	 1'b0:
	 begin
	      exponent_reg21 = exponent_reg1;
		  ab_signficant_106_tmp[54:53] = 2'b01; 
          ab_signficant_106_tmp[52:1] = ab_signficant_real[103:52]; 
          ab_signficant_106_tmp[0] = ab_signficant_real[51];
      end
	endcase
	//***round环节
	case(round_cfg)
	1'b0:   //chopping
	begin 
	    ab_signficant_106 = ab_signficant_106_tmp[52:1]; 
	end
	1'b1:   //舍入
	begin
	    case(ab_signficant_106_tmp[0])  //判断被舍去的最高位
		1'b0:ab_signficant_106 = ab_signficant_106_tmp[52:1];
		1'b1:
		begin
		   ab_signficant_106_retmp = ab_signficant_106_tmp[54:1]+1;
		   case(ab_signficant_106_retmp[54])
		   //***第二次调整指数
		    1'b1:
			begin
			 exponent_reg21 = exponent_reg21 + 1'b1;
			 ab_signficant_106 = ab_signficant_106_retmp[53:2];
			end
			1'b0:
            begin
             exponent_reg21 = exponent_reg21;
             ab_signficant_106 = ab_signficant_106_retmp[52:1];
            end			 
  	        endcase
	    end
		endcase
    end
	endcase
	//****判断指数部分是否溢出
	//****该部分为指数部分是否上溢出，也就是指数部分超过IEEE754规定的指数部分最大值
	case(exponent_reg21[12:11])
	   2'b00:begin
	      exponent_reg22_tmp = exponent_reg21[10:0];
		  defectornon_signal_tmp = 2'b00;   //信号为低时，数据有效
		  ab_signficant_106 = ab_signficant_106;
		  end
	   2'b01,2'b10,2'b11:begin      //****
	      exponent_reg22_tmp = 11'dx;
		  ab_signficant_106 = 52'dx;
		  // 1为上溢，2为下溢
		  if (double_symbol == 2'b11) begin
		    defectornon_signal_tmp = 2'b01;   //数据上溢
		  end
		  else if (double_symbol == 2'b00) begin
		         defectornon_signal_tmp = 2'b10; //数据下溢
			end
		  else begin
		      if (exponent_abs == 1) begin  //两数之间正幂更大，则上溢
			      defectornon_signal_tmp = 2'b01;
				  end
			  else begin                    //两数之间负幂更大，则下溢
			      defectornon_signal_tmp = 2'b10;
				  end
			  end
			  end
		endcase
     
//*****赋值
     out[63] <= sign_reg1;
     out[62:52] <= exponent_reg22_tmp;
	 out[51:0] <= ab_signficant_106;
	 defectornon_signal <= defectornon_signal_tmp;
    end
  end
  end
endmodule