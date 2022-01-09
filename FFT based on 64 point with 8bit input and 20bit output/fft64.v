`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/18 16:21:42
// Design Name: 
// Module Name: fft64
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
// 顶层例化
// 分析级数 64点FFT计算
// input --.>--->o inner1 --.>---->o ...
// log2(64) = 6,总共需要6级W，将其标记为m=0、 1、 2、3、4、5
// 每一级都有若干的组，组数目记为n，    n=32、16、8、4、2、1
module fft64(
 input clk,
 input rstn,
 input input_signal,
 input signed [7:0] x_real_0,  input signed [7:0] x_imag_0, 
 input signed [7:0] x_real_1,  input signed [7:0] x_imag_1, 
 input signed [7:0] x_real_2,  input signed [7:0] x_imag_2, 
 input signed [7:0] x_real_3,  input signed [7:0] x_imag_3, 
 input signed [7:0] x_real_4,  input signed [7:0] x_imag_4, 
 input signed [7:0] x_real_5,  input signed [7:0] x_imag_5, 
 input signed [7:0] x_real_6,  input signed [7:0] x_imag_6, 
 input signed [7:0] x_real_7,  input signed [7:0] x_imag_7, 
 input signed [7:0] x_real_8,  input signed [7:0] x_imag_8, 
 input signed [7:0] x_real_9,  input signed [7:0] x_imag_9, 
 input signed [7:0] x_real_10,  input signed [7:0] x_imag_10, 
 input signed [7:0] x_real_11,  input signed [7:0] x_imag_11, 
 input signed [7:0] x_real_12,  input signed [7:0] x_imag_12, 
 input signed [7:0] x_real_13,  input signed [7:0] x_imag_13, 
 input signed [7:0] x_real_14,  input signed [7:0] x_imag_14, 
 input signed [7:0] x_real_15,  input signed [7:0] x_imag_15, 
 input signed [7:0] x_real_16,  input signed [7:0] x_imag_16, 
 input signed [7:0] x_real_17,  input signed [7:0] x_imag_17, 
 input signed [7:0] x_real_18,  input signed [7:0] x_imag_18, 
 input signed [7:0] x_real_19,  input signed [7:0] x_imag_19, 
 input signed [7:0] x_real_20,  input signed [7:0] x_imag_20, 
 input signed [7:0] x_real_21,  input signed [7:0] x_imag_21, 
 input signed [7:0] x_real_22,  input signed [7:0] x_imag_22, 
 input signed [7:0] x_real_23,  input signed [7:0] x_imag_23, 
 input signed [7:0] x_real_24,  input signed [7:0] x_imag_24, 
 input signed [7:0] x_real_25,  input signed [7:0] x_imag_25, 
 input signed [7:0] x_real_26,  input signed [7:0] x_imag_26, 
 input signed [7:0] x_real_27,  input signed [7:0] x_imag_27, 
 input signed [7:0] x_real_28,  input signed [7:0] x_imag_28, 
 input signed [7:0] x_real_29,  input signed [7:0] x_imag_29, 
 input signed [7:0] x_real_30,  input signed [7:0] x_imag_30, 
 input signed [7:0] x_real_31,  input signed [7:0] x_imag_31, 
 input signed [7:0] x_real_32,  input signed [7:0] x_imag_32, 
 input signed [7:0] x_real_33,  input signed [7:0] x_imag_33, 
 input signed [7:0] x_real_34,  input signed [7:0] x_imag_34, 
 input signed [7:0] x_real_35,  input signed [7:0] x_imag_35, 
 input signed [7:0] x_real_36,  input signed [7:0] x_imag_36, 
 input signed [7:0] x_real_37,  input signed [7:0] x_imag_37, 
 input signed [7:0] x_real_38,  input signed [7:0] x_imag_38, 
 input signed [7:0] x_real_39,  input signed [7:0] x_imag_39, 
 input signed [7:0] x_real_40,  input signed [7:0] x_imag_40, 
 input signed [7:0] x_real_41,  input signed [7:0] x_imag_41, 
 input signed [7:0] x_real_42,  input signed [7:0] x_imag_42, 
 input signed [7:0] x_real_43,  input signed [7:0] x_imag_43, 
 input signed [7:0] x_real_44,  input signed [7:0] x_imag_44, 
 input signed [7:0] x_real_45,  input signed [7:0] x_imag_45, 
 input signed [7:0] x_real_46,  input signed [7:0] x_imag_46, 
 input signed [7:0] x_real_47,  input signed [7:0] x_imag_47, 
 input signed [7:0] x_real_48,  input signed [7:0] x_imag_48, 
 input signed [7:0] x_real_49,  input signed [7:0] x_imag_49, 
 input signed [7:0] x_real_50,  input signed [7:0] x_imag_50, 
 input signed [7:0] x_real_51,  input signed [7:0] x_imag_51, 
 input signed [7:0] x_real_52,  input signed [7:0] x_imag_52, 
 input signed [7:0] x_real_53,  input signed [7:0] x_imag_53, 
 input signed [7:0] x_real_54,  input signed [7:0] x_imag_54, 
 input signed [7:0] x_real_55,  input signed [7:0] x_imag_55, 
 input signed [7:0] x_real_56,  input signed [7:0] x_imag_56, 
 input signed [7:0] x_real_57,  input signed [7:0] x_imag_57, 
 input signed [7:0] x_real_58,  input signed [7:0] x_imag_58, 
 input signed [7:0] x_real_59,  input signed [7:0] x_imag_59, 
 input signed [7:0] x_real_60,  input signed [7:0] x_imag_60, 
 input signed [7:0] x_real_61,  input signed [7:0] x_imag_61, 
 input signed [7:0] x_real_62,  input signed [7:0] x_imag_62, 
 input signed [7:0] x_real_63,  input signed [7:0] x_imag_63, 

 output signed [19:0] y_real_0,  output signed [19:0] y_imag_0, 
 output signed [19:0] y_real_1,  output signed [19:0] y_imag_1, 
 output signed [19:0] y_real_2,  output signed [19:0] y_imag_2, 
 output signed [19:0] y_real_3,  output signed [19:0] y_imag_3, 
 output signed [19:0] y_real_4,  output signed [19:0] y_imag_4, 
 output signed [19:0] y_real_5,  output signed [19:0] y_imag_5, 
 output signed [19:0] y_real_6,  output signed [19:0] y_imag_6, 
 output signed [19:0] y_real_7,  output signed [19:0] y_imag_7, 
 output signed [19:0] y_real_8,  output signed [19:0] y_imag_8, 
 output signed [19:0] y_real_9,  output signed [19:0] y_imag_9, 
 output signed [19:0] y_real_10,  output signed [19:0] y_imag_10, 
 output signed [19:0] y_real_11,  output signed [19:0] y_imag_11, 
 output signed [19:0] y_real_12,  output signed [19:0] y_imag_12, 
 output signed [19:0] y_real_13,  output signed [19:0] y_imag_13, 
 output signed [19:0] y_real_14,  output signed [19:0] y_imag_14, 
 output signed [19:0] y_real_15,  output signed [19:0] y_imag_15, 
 output signed [19:0] y_real_16,  output signed [19:0] y_imag_16, 
 output signed [19:0] y_real_17,  output signed [19:0] y_imag_17, 
 output signed [19:0] y_real_18,  output signed [19:0] y_imag_18, 
 output signed [19:0] y_real_19,  output signed [19:0] y_imag_19, 
 output signed [19:0] y_real_20,  output signed [19:0] y_imag_20, 
 output signed [19:0] y_real_21,  output signed [19:0] y_imag_21, 
 output signed [19:0] y_real_22,  output signed [19:0] y_imag_22, 
 output signed [19:0] y_real_23,  output signed [19:0] y_imag_23, 
 output signed [19:0] y_real_24,  output signed [19:0] y_imag_24, 
 output signed [19:0] y_real_25,  output signed [19:0] y_imag_25, 
 output signed [19:0] y_real_26,  output signed [19:0] y_imag_26, 
 output signed [19:0] y_real_27,  output signed [19:0] y_imag_27, 
 output signed [19:0] y_real_28,  output signed [19:0] y_imag_28, 
 output signed [19:0] y_real_29,  output signed [19:0] y_imag_29, 
 output signed [19:0] y_real_30,  output signed [19:0] y_imag_30, 
 output signed [19:0] y_real_31,  output signed [19:0] y_imag_31, 
 output signed [19:0] y_real_32,  output signed [19:0] y_imag_32, 
 output signed [19:0] y_real_33,  output signed [19:0] y_imag_33, 
 output signed [19:0] y_real_34,  output signed [19:0] y_imag_34, 
 output signed [19:0] y_real_35,  output signed [19:0] y_imag_35, 
 output signed [19:0] y_real_36,  output signed [19:0] y_imag_36, 
 output signed [19:0] y_real_37,  output signed [19:0] y_imag_37, 
 output signed [19:0] y_real_38,  output signed [19:0] y_imag_38, 
 output signed [19:0] y_real_39,  output signed [19:0] y_imag_39, 
 output signed [19:0] y_real_40,  output signed [19:0] y_imag_40, 
 output signed [19:0] y_real_41,  output signed [19:0] y_imag_41, 
 output signed [19:0] y_real_42,  output signed [19:0] y_imag_42, 
 output signed [19:0] y_real_43,  output signed [19:0] y_imag_43, 
 output signed [19:0] y_real_44,  output signed [19:0] y_imag_44, 
 output signed [19:0] y_real_45,  output signed [19:0] y_imag_45, 
 output signed [19:0] y_real_46,  output signed [19:0] y_imag_46, 
 output signed [19:0] y_real_47,  output signed [19:0] y_imag_47, 
 output signed [19:0] y_real_48,  output signed [19:0] y_imag_48, 
 output signed [19:0] y_real_49,  output signed [19:0] y_imag_49, 
 output signed [19:0] y_real_50,  output signed [19:0] y_imag_50, 
 output signed [19:0] y_real_51,  output signed [19:0] y_imag_51, 
 output signed [19:0] y_real_52,  output signed [19:0] y_imag_52, 
 output signed [19:0] y_real_53,  output signed [19:0] y_imag_53, 
 output signed [19:0] y_real_54,  output signed [19:0] y_imag_54, 
 output signed [19:0] y_real_55,  output signed [19:0] y_imag_55, 
 output signed [19:0] y_real_56,  output signed [19:0] y_imag_56, 
 output signed [19:0] y_real_57,  output signed [19:0] y_imag_57, 
 output signed [19:0] y_real_58,  output signed [19:0] y_imag_58, 
 output signed [19:0] y_real_59,  output signed [19:0] y_imag_59, 
 output signed [19:0] y_real_60,  output signed [19:0] y_imag_60, 
 output signed [19:0] y_real_61,  output signed [19:0] y_imag_61, 
 output signed [19:0] y_real_62,  output signed [19:0] y_imag_62, 
 output signed [19:0] y_real_63,  output signed [19:0] y_imag_63,
 output output_signal
 );
 // 以下存放6级过程和最后输出结果，共6:0的7层
 wire signed [19:0] x_real_all [6:0][63:0];
 wire signed [19:0] x_imag_all [6:0][63:0];
 // 以下由matlab生成  符号位的扩展  //以下的写法是允许的，已在butterfly_test中尝试
 assign x_real_all [ 0 ][ 0 ] = {{12{x_real_0 [ 7 ]}},x_real_0 };   assign x_imag_all [ 0 ][ 0 ] = {{12{x_imag_0 [ 7 ]}},x_imag_0 };  
 assign x_real_all [ 0 ][ 1 ] = {{12{x_real_32 [ 7 ]}},x_real_32 };   assign x_imag_all [ 0 ][ 1 ] = {{12{x_imag_32 [ 7 ]}},x_imag_32 };  
 assign x_real_all [ 0 ][ 2 ] = {{12{x_real_16 [ 7 ]}},x_real_16 };   assign x_imag_all [ 0 ][ 2 ] = {{12{x_imag_16 [ 7 ]}},x_imag_16 };  
 assign x_real_all [ 0 ][ 3 ] = {{12{x_real_48 [ 7 ]}},x_real_48 };   assign x_imag_all [ 0 ][ 3 ] = {{12{x_imag_48 [ 7 ]}},x_imag_48 };  
 assign x_real_all [ 0 ][ 4 ] = {{12{x_real_8 [ 7 ]}},x_real_8 };   assign x_imag_all [ 0 ][ 4 ] = {{12{x_imag_8 [ 7 ]}},x_imag_8 };  
 assign x_real_all [ 0 ][ 5 ] = {{12{x_real_40 [ 7 ]}},x_real_40 };   assign x_imag_all [ 0 ][ 5 ] = {{12{x_imag_40 [ 7 ]}},x_imag_40 };  
 assign x_real_all [ 0 ][ 6 ] = {{12{x_real_24 [ 7 ]}},x_real_24 };   assign x_imag_all [ 0 ][ 6 ] = {{12{x_imag_24 [ 7 ]}},x_imag_24 };  
 assign x_real_all [ 0 ][ 7 ] = {{12{x_real_56 [ 7 ]}},x_real_56 };   assign x_imag_all [ 0 ][ 7 ] = {{12{x_imag_56 [ 7 ]}},x_imag_56 };  
 assign x_real_all [ 0 ][ 8 ] = {{12{x_real_4 [ 7 ]}},x_real_4 };   assign x_imag_all [ 0 ][ 8 ] = {{12{x_imag_4 [ 7 ]}},x_imag_4 };  
 assign x_real_all [ 0 ][ 9 ] = {{12{x_real_36 [ 7 ]}},x_real_36 };   assign x_imag_all [ 0 ][ 9 ] = {{12{x_imag_36 [ 7 ]}},x_imag_36 };  
 assign x_real_all [ 0 ][ 10 ] = {{12{x_real_20 [ 7 ]}},x_real_20 };   assign x_imag_all [ 0 ][ 10 ] = {{12{x_imag_20 [ 7 ]}},x_imag_20 };  
 assign x_real_all [ 0 ][ 11 ] = {{12{x_real_52 [ 7 ]}},x_real_52 };   assign x_imag_all [ 0 ][ 11 ] = {{12{x_imag_52 [ 7 ]}},x_imag_52 };  
 assign x_real_all [ 0 ][ 12 ] = {{12{x_real_12 [ 7 ]}},x_real_12 };   assign x_imag_all [ 0 ][ 12 ] = {{12{x_imag_12 [ 7 ]}},x_imag_12 };  
 assign x_real_all [ 0 ][ 13 ] = {{12{x_real_44 [ 7 ]}},x_real_44 };   assign x_imag_all [ 0 ][ 13 ] = {{12{x_imag_44 [ 7 ]}},x_imag_44 };  
 assign x_real_all [ 0 ][ 14 ] = {{12{x_real_28 [ 7 ]}},x_real_28 };   assign x_imag_all [ 0 ][ 14 ] = {{12{x_imag_28 [ 7 ]}},x_imag_28 };  
 assign x_real_all [ 0 ][ 15 ] = {{12{x_real_60 [ 7 ]}},x_real_60 };   assign x_imag_all [ 0 ][ 15 ] = {{12{x_imag_60 [ 7 ]}},x_imag_60 };  
 assign x_real_all [ 0 ][ 16 ] = {{12{x_real_2 [ 7 ]}},x_real_2 };   assign x_imag_all [ 0 ][ 16 ] = {{12{x_imag_2 [ 7 ]}},x_imag_2 };  
 assign x_real_all [ 0 ][ 17 ] = {{12{x_real_34 [ 7 ]}},x_real_34 };   assign x_imag_all [ 0 ][ 17 ] = {{12{x_imag_34 [ 7 ]}},x_imag_34 };  
 assign x_real_all [ 0 ][ 18 ] = {{12{x_real_18 [ 7 ]}},x_real_18 };   assign x_imag_all [ 0 ][ 18 ] = {{12{x_imag_18 [ 7 ]}},x_imag_18 };  
 assign x_real_all [ 0 ][ 19 ] = {{12{x_real_50 [ 7 ]}},x_real_50 };   assign x_imag_all [ 0 ][ 19 ] = {{12{x_imag_50 [ 7 ]}},x_imag_50 };  
 assign x_real_all [ 0 ][ 20 ] = {{12{x_real_10 [ 7 ]}},x_real_10 };   assign x_imag_all [ 0 ][ 20 ] = {{12{x_imag_10 [ 7 ]}},x_imag_10 };  
 assign x_real_all [ 0 ][ 21 ] = {{12{x_real_42 [ 7 ]}},x_real_42 };   assign x_imag_all [ 0 ][ 21 ] = {{12{x_imag_42 [ 7 ]}},x_imag_42 };  
 assign x_real_all [ 0 ][ 22 ] = {{12{x_real_26 [ 7 ]}},x_real_26 };   assign x_imag_all [ 0 ][ 22 ] = {{12{x_imag_26 [ 7 ]}},x_imag_26 };  
 assign x_real_all [ 0 ][ 23 ] = {{12{x_real_58 [ 7 ]}},x_real_58 };   assign x_imag_all [ 0 ][ 23 ] = {{12{x_imag_58 [ 7 ]}},x_imag_58 };  
 assign x_real_all [ 0 ][ 24 ] = {{12{x_real_6 [ 7 ]}},x_real_6 };   assign x_imag_all [ 0 ][ 24 ] = {{12{x_imag_6 [ 7 ]}},x_imag_6 };  
 assign x_real_all [ 0 ][ 25 ] = {{12{x_real_38 [ 7 ]}},x_real_38 };   assign x_imag_all [ 0 ][ 25 ] = {{12{x_imag_38 [ 7 ]}},x_imag_38 };  
 assign x_real_all [ 0 ][ 26 ] = {{12{x_real_22 [ 7 ]}},x_real_22 };   assign x_imag_all [ 0 ][ 26 ] = {{12{x_imag_22 [ 7 ]}},x_imag_22 };  
 assign x_real_all [ 0 ][ 27 ] = {{12{x_real_54 [ 7 ]}},x_real_54 };   assign x_imag_all [ 0 ][ 27 ] = {{12{x_imag_54 [ 7 ]}},x_imag_54 };  
 assign x_real_all [ 0 ][ 28 ] = {{12{x_real_14 [ 7 ]}},x_real_14 };   assign x_imag_all [ 0 ][ 28 ] = {{12{x_imag_14 [ 7 ]}},x_imag_14 };  
 assign x_real_all [ 0 ][ 29 ] = {{12{x_real_46 [ 7 ]}},x_real_46 };   assign x_imag_all [ 0 ][ 29 ] = {{12{x_imag_46 [ 7 ]}},x_imag_46 };  
 assign x_real_all [ 0 ][ 30 ] = {{12{x_real_30 [ 7 ]}},x_real_30 };   assign x_imag_all [ 0 ][ 30 ] = {{12{x_imag_30 [ 7 ]}},x_imag_30 };  
 assign x_real_all [ 0 ][ 31 ] = {{12{x_real_62 [ 7 ]}},x_real_62 };   assign x_imag_all [ 0 ][ 31 ] = {{12{x_imag_62 [ 7 ]}},x_imag_62 };  
 assign x_real_all [ 0 ][ 32 ] = {{12{x_real_1 [ 7 ]}},x_real_1 };   assign x_imag_all [ 0 ][ 32 ] = {{12{x_imag_1 [ 7 ]}},x_imag_1 };  
 assign x_real_all [ 0 ][ 33 ] = {{12{x_real_33 [ 7 ]}},x_real_33 };   assign x_imag_all [ 0 ][ 33 ] = {{12{x_imag_33 [ 7 ]}},x_imag_33 };  
 assign x_real_all [ 0 ][ 34 ] = {{12{x_real_17 [ 7 ]}},x_real_17 };   assign x_imag_all [ 0 ][ 34 ] = {{12{x_imag_17 [ 7 ]}},x_imag_17 };  
 assign x_real_all [ 0 ][ 35 ] = {{12{x_real_49 [ 7 ]}},x_real_49 };   assign x_imag_all [ 0 ][ 35 ] = {{12{x_imag_49 [ 7 ]}},x_imag_49 };  
 assign x_real_all [ 0 ][ 36 ] = {{12{x_real_9 [ 7 ]}},x_real_9 };   assign x_imag_all [ 0 ][ 36 ] = {{12{x_imag_9 [ 7 ]}},x_imag_9 };  
 assign x_real_all [ 0 ][ 37 ] = {{12{x_real_41 [ 7 ]}},x_real_41 };   assign x_imag_all [ 0 ][ 37 ] = {{12{x_imag_41 [ 7 ]}},x_imag_41 };  
 assign x_real_all [ 0 ][ 38 ] = {{12{x_real_25 [ 7 ]}},x_real_25 };   assign x_imag_all [ 0 ][ 38 ] = {{12{x_imag_25 [ 7 ]}},x_imag_25 };  
 assign x_real_all [ 0 ][ 39 ] = {{12{x_real_57 [ 7 ]}},x_real_57 };   assign x_imag_all [ 0 ][ 39 ] = {{12{x_imag_57 [ 7 ]}},x_imag_57 };  
 assign x_real_all [ 0 ][ 40 ] = {{12{x_real_5 [ 7 ]}},x_real_5 };   assign x_imag_all [ 0 ][ 40 ] = {{12{x_imag_5 [ 7 ]}},x_imag_5 };  
 assign x_real_all [ 0 ][ 41 ] = {{12{x_real_37 [ 7 ]}},x_real_37 };   assign x_imag_all [ 0 ][ 41 ] = {{12{x_imag_37 [ 7 ]}},x_imag_37 };  
 assign x_real_all [ 0 ][ 42 ] = {{12{x_real_21 [ 7 ]}},x_real_21 };   assign x_imag_all [ 0 ][ 42 ] = {{12{x_imag_21 [ 7 ]}},x_imag_21 };  
 assign x_real_all [ 0 ][ 43 ] = {{12{x_real_53 [ 7 ]}},x_real_53 };   assign x_imag_all [ 0 ][ 43 ] = {{12{x_imag_53 [ 7 ]}},x_imag_53 };  
 assign x_real_all [ 0 ][ 44 ] = {{12{x_real_13 [ 7 ]}},x_real_13 };   assign x_imag_all [ 0 ][ 44 ] = {{12{x_imag_13 [ 7 ]}},x_imag_13 };  
 assign x_real_all [ 0 ][ 45 ] = {{12{x_real_45 [ 7 ]}},x_real_45 };   assign x_imag_all [ 0 ][ 45 ] = {{12{x_imag_45 [ 7 ]}},x_imag_45 };  
 assign x_real_all [ 0 ][ 46 ] = {{12{x_real_29 [ 7 ]}},x_real_29 };   assign x_imag_all [ 0 ][ 46 ] = {{12{x_imag_29 [ 7 ]}},x_imag_29 };  
 assign x_real_all [ 0 ][ 47 ] = {{12{x_real_61 [ 7 ]}},x_real_61 };   assign x_imag_all [ 0 ][ 47 ] = {{12{x_imag_61 [ 7 ]}},x_imag_61 };  
 assign x_real_all [ 0 ][ 48 ] = {{12{x_real_3 [ 7 ]}},x_real_3 };   assign x_imag_all [ 0 ][ 48 ] = {{12{x_imag_3 [ 7 ]}},x_imag_3 };  
 assign x_real_all [ 0 ][ 49 ] = {{12{x_real_35 [ 7 ]}},x_real_35 };   assign x_imag_all [ 0 ][ 49 ] = {{12{x_imag_35 [ 7 ]}},x_imag_35 };  
 assign x_real_all [ 0 ][ 50 ] = {{12{x_real_19 [ 7 ]}},x_real_19 };   assign x_imag_all [ 0 ][ 50 ] = {{12{x_imag_19 [ 7 ]}},x_imag_19 };  
 assign x_real_all [ 0 ][ 51 ] = {{12{x_real_51 [ 7 ]}},x_real_51 };   assign x_imag_all [ 0 ][ 51 ] = {{12{x_imag_51 [ 7 ]}},x_imag_51 };  
 assign x_real_all [ 0 ][ 52 ] = {{12{x_real_11 [ 7 ]}},x_real_11 };   assign x_imag_all [ 0 ][ 52 ] = {{12{x_imag_11 [ 7 ]}},x_imag_11 };  
 assign x_real_all [ 0 ][ 53 ] = {{12{x_real_43 [ 7 ]}},x_real_43 };   assign x_imag_all [ 0 ][ 53 ] = {{12{x_imag_43 [ 7 ]}},x_imag_43 };  
 assign x_real_all [ 0 ][ 54 ] = {{12{x_real_27 [ 7 ]}},x_real_27 };   assign x_imag_all [ 0 ][ 54 ] = {{12{x_imag_27 [ 7 ]}},x_imag_27 };  
 assign x_real_all [ 0 ][ 55 ] = {{12{x_real_59 [ 7 ]}},x_real_59 };   assign x_imag_all [ 0 ][ 55 ] = {{12{x_imag_59 [ 7 ]}},x_imag_59 };  
 assign x_real_all [ 0 ][ 56 ] = {{12{x_real_7 [ 7 ]}},x_real_7 };   assign x_imag_all [ 0 ][ 56 ] = {{12{x_imag_7 [ 7 ]}},x_imag_7 };  
 assign x_real_all [ 0 ][ 57 ] = {{12{x_real_39 [ 7 ]}},x_real_39 };   assign x_imag_all [ 0 ][ 57 ] = {{12{x_imag_39 [ 7 ]}},x_imag_39 };  
 assign x_real_all [ 0 ][ 58 ] = {{12{x_real_23 [ 7 ]}},x_real_23 };   assign x_imag_all [ 0 ][ 58 ] = {{12{x_imag_23 [ 7 ]}},x_imag_23 };  
 assign x_real_all [ 0 ][ 59 ] = {{12{x_real_55 [ 7 ]}},x_real_55 };   assign x_imag_all [ 0 ][ 59 ] = {{12{x_imag_55 [ 7 ]}},x_imag_55 };  
 assign x_real_all [ 0 ][ 60 ] = {{12{x_real_15 [ 7 ]}},x_real_15 };   assign x_imag_all [ 0 ][ 60 ] = {{12{x_imag_15 [ 7 ]}},x_imag_15 };  
 assign x_real_all [ 0 ][ 61 ] = {{12{x_real_47 [ 7 ]}},x_real_47 };   assign x_imag_all [ 0 ][ 61 ] = {{12{x_imag_47 [ 7 ]}},x_imag_47 };  
 assign x_real_all [ 0 ][ 62 ] = {{12{x_real_31 [ 7 ]}},x_real_31 };   assign x_imag_all [ 0 ][ 62 ] = {{12{x_imag_31 [ 7 ]}},x_imag_31 };  
 assign x_real_all [ 0 ][ 63 ] = {{12{x_real_63 [ 7 ]}},x_real_63 };   assign x_imag_all [ 0 ][ 63 ] = {{12{x_imag_63 [ 7 ]}},x_imag_63 };    
 // 以下存放因子
 wire signed [15:0] fac_real [31:0];
 wire signed [15:0] fac_imag [31:0];
 // 以下由matlab生成
 assign fac_real[ 0 ]=16'h2000 ; assign fac_imag[ 0 ]=16'h0000 ;
 assign fac_real[ 1 ]=16'h1FD8 ; assign fac_imag[ 1 ]=16'hFCDD ;
 assign fac_real[ 2 ]=16'h1F62 ; assign fac_imag[ 2 ]=16'hF9C1 ;
 assign fac_real[ 3 ]=16'h1E9F ; assign fac_imag[ 3 ]=16'hF6B5 ;
 assign fac_real[ 4 ]=16'h1D90 ; assign fac_imag[ 4 ]=16'hF3C1 ;
 assign fac_real[ 5 ]=16'h1C38 ; assign fac_imag[ 5 ]=16'hF0EA ;
 assign fac_real[ 6 ]=16'h1A9B ; assign fac_imag[ 6 ]=16'hEE38 ;
 assign fac_real[ 7 ]=16'h18BC ; assign fac_imag[ 7 ]=16'hEBB3 ;
 assign fac_real[ 8 ]=16'h16A0 ; assign fac_imag[ 8 ]=16'hE95F ;
 assign fac_real[ 9 ]=16'h144C ; assign fac_imag[ 9 ]=16'hE743 ;
 assign fac_real[ 10 ]=16'h11C7 ; assign fac_imag[ 10 ]=16'hE564 ;
 assign fac_real[ 11 ]=16'h0F15 ; assign fac_imag[ 11 ]=16'hE3C7 ;
 assign fac_real[ 12 ]=16'h0C3E ; assign fac_imag[ 12 ]=16'hE26F ;
 assign fac_real[ 13 ]=16'h094A ; assign fac_imag[ 13 ]=16'hE160 ;
 assign fac_real[ 14 ]=16'h063E ; assign fac_imag[ 14 ]=16'hE09D ;
 assign fac_real[ 15 ]=16'h0322 ; assign fac_imag[ 15 ]=16'hE027 ;
 assign fac_real[ 16 ]=16'h0000 ; assign fac_imag[ 16 ]=16'hE000 ;
 assign fac_real[ 17 ]=16'hFCDD ; assign fac_imag[ 17 ]=16'hE027 ;
 assign fac_real[ 18 ]=16'hF9C1 ; assign fac_imag[ 18 ]=16'hE09D ;
 assign fac_real[ 19 ]=16'hF6B5 ; assign fac_imag[ 19 ]=16'hE160 ;
 assign fac_real[ 20 ]=16'hF3C1 ; assign fac_imag[ 20 ]=16'hE26F ;
 assign fac_real[ 21 ]=16'hF0EA ; assign fac_imag[ 21 ]=16'hE3C7 ;
 assign fac_real[ 22 ]=16'hEE38 ; assign fac_imag[ 22 ]=16'hE564 ;
 assign fac_real[ 23 ]=16'hEBB3 ; assign fac_imag[ 23 ]=16'hE743 ;
 assign fac_real[ 24 ]=16'hE95F ; assign fac_imag[ 24 ]=16'hE95F ;
 assign fac_real[ 25 ]=16'hE743 ; assign fac_imag[ 25 ]=16'hEBB3 ;
 assign fac_real[ 26 ]=16'hE564 ; assign fac_imag[ 26 ]=16'hEE38 ;
 assign fac_real[ 27 ]=16'hE3C7 ; assign fac_imag[ 27 ]=16'hF0EA ;
 assign fac_real[ 28 ]=16'hE26F ; assign fac_imag[ 28 ]=16'hF3C1 ;
 assign fac_real[ 29 ]=16'hE160 ; assign fac_imag[ 29 ]=16'hF6B5 ;
 assign fac_real[ 30 ]=16'hE09D ; assign fac_imag[ 30 ]=16'hF9C1 ;
 assign fac_real[ 31 ]=16'hE027 ; assign fac_imag[ 31 ]=16'hFCDD ;

 // 流水部分
 // 引用模块为：butterfly my(clk,rstn,indata1_real,indata1_imag,indata2_real,indata2_imag,wn_real,wn_imag,oudata1_real,oudata1_imag,oudata2_real,oudata2_imag); 
 // 第0级——邻近两两相互作用
// 补充说明各级次的r
// w=0时，按照顺序是w 2^1 0
// w=1时，按照顺序是w 2^2 0 1  (0 16)    /64
// w=2时，按照顺序是w 2^3 0 1 2 3  (0 8 16 24)
// w=3时，按照顺序是w 2^4 0 1 2 3 4 5 6 7 (0 4 8 12 16 20 24 28)
// w=4时，按照顺序是w 2^5 0 1...15 (0 2 4 6 ... 30)
// w=5时，按照顺序是w 2^6 0 1...31 (0 1 2 3 ... 31)
// 唯一的难点在于如何寻找规律
 wire   signal_box [223:0];  //预备前32个单元置input_signal 7*32=224
// assign signal_box [31:0] = {32{input_signal}};
// wire [223:0] signal_box;
//assign signal_box[31:0] = {32{input_signal}};

 assign signal_box[ 0 ] = input_signal;
 assign signal_box[ 1 ] = input_signal;
 assign signal_box[ 2 ] = input_signal;
 assign signal_box[ 3 ] = input_signal;
 assign signal_box[ 4 ] = input_signal;
 assign signal_box[ 5 ] = input_signal;
 assign signal_box[ 6 ] = input_signal;
 assign signal_box[ 7 ] = input_signal;
 assign signal_box[ 8 ] = input_signal;
 assign signal_box[ 9 ] = input_signal;
 assign signal_box[ 10 ] = input_signal;
 assign signal_box[ 11 ] = input_signal;
 assign signal_box[ 12 ] = input_signal;
 assign signal_box[ 13 ] = input_signal;
 assign signal_box[ 14 ] = input_signal;
 assign signal_box[ 15 ] = input_signal;
 assign signal_box[ 16 ] = input_signal;
 assign signal_box[ 17 ] = input_signal;
 assign signal_box[ 18 ] = input_signal;
 assign signal_box[ 19 ] = input_signal;
 assign signal_box[ 20 ] = input_signal;
 assign signal_box[ 21 ] = input_signal;
 assign signal_box[ 22 ] = input_signal;
 assign signal_box[ 23 ] = input_signal;
 assign signal_box[ 24 ] = input_signal;
 assign signal_box[ 25 ] = input_signal;
 assign signal_box[ 26 ] = input_signal;
 assign signal_box[ 27 ] = input_signal;
 assign signal_box[ 28 ] = input_signal;
 assign signal_box[ 29 ] = input_signal;
 assign signal_box[ 30 ] = input_signal;
 assign signal_box[ 31 ] = input_signal;
 // 关于级次和regular_signal信号的更新问题  2020/12/21
 // 0-31 32-63 64-95 96-127 128-159 160-191 192-223
 
// wire [5:0] value [5:0] [31:0];
/* 
 genvar               m, k;
    generate
    //3 stage
    for(m=0; m<=5; m=m+1) begin: stage       // 原来m<=2
        for (k=0; k<=31; k=k+1) begin: unit    // 原来k<=3
          
		 //wire [5:0] value;
       //  assign  value = k[m:0] < (1<<m) ?(k[6:m] << (m+1)) + k[m:0] :               
       //                              (k[6:m] << (m+1)) + (k[m:0]-(1<<m));
       //    assign value [m][k] = k[m:0] < (1<<m) ? (k[6:m] << (m+1)) + k[m:0] :               
       //                                            (k[6:m] << (m+1)) + (k[m:0]-(1<<m));

	   
            butterfly      my(
               .clk        (clk                 ) ,
               .rstn       (rstn                ) ,
                       //是否再组内？组编号+组内编号：下组编号+新组内编号
               .indata1_real    (x_real_all[ m ] [k[m:0] < (1<<m) ?
                           (k[6:m] << (m+1)) + k[m:0] :               //原来是[3:m]
                           (k[6:m] << (m+1)) + (k[m:0]-(1<<m))] ),
               .indata1_imag    (x_imag_all[ m ] [k[m:0] < (1<<m) ?
                           (k[6:m] << (m+1)) + k[m:0] :
                           (k[6:m] << (m+1)) + (k[m:0]-(1<<m))] ),
               .indata2_real    (x_real_all[ m ] [(k[m:0] < (1<<m) ?
                           (k[6:m] << (m+1)) + k[m:0] :
                           (k[6:m] << (m+1)) + (k[m:0]-(1<<m))) + (1<<m) ]),                 //增加蝶形单元两个输入端口间距离
               .indata2_imag    (x_imag_all[ m ] [(k[m:0] < (1<<m) ?
                           (k[6:m] << (m+1)) + k[m:0] :
                           (k[6:m] << (m+1)) + (k[m:0]-(1<<m))) + (1<<m) ]),

               //.wn_real(fac_real[k[m:0]<(1<<m)?
               //            k[m:0] : k[m:0]-(1<<m) ]),
			   //.wn_real(fac_real[(((k[m:0] < (1<<m) ?
               //                    (k[6:m] << (m+1)) + k[m:0] :               //原来是[3:m]
               //                    (k[6:m] << (m+1)) + (k[m:0]-(1<<m)))[m-1:0]) << (5-m))])
			   .wn_real(fac_real[value[m][k][m-1:0] << (5-m)]),
			   .wn_imag(fac_imag[value[m][k][m-1:0] << (5-m)]),
               //.wn_imag(fac_imag[k[m:0]<(1<<m)?
               //             k[m:0] : k[m:0]-(1<<m) ]),
			   //.wn_imag(fac_imag[(((k[m:0] < (1<<m) ?
               //                    (k[6:m] << (m+1)) + k[m:0] :               //原来是[3:m]
               //                    (k[6:m] << (m+1)) + (k[m:0]-(1<<m)))[m-1:0]) << (5-m))])	
								   
               .regular_signal     (signal_box[m*32 + k] ) ,  
               //output data
               .oudata1_real    (x_real_all[ m+1 ][k[m:0] < (1<<m) ?
                           (k[6:m] << (m+1)) + k[m:0] :
                           (k[6:m] << (m+1)) + (k[m:0]-(1<<m))] ),
               .oudata1_imag    (x_imag_all[ m+1 ][(k[m:0]) < (1<<m) ?
                           (k[6:m] << (m+1)) + k[m:0] :
                           (k[6:m] << (m+1)) + (k[m:0]-(1<<m))] ),
               .oudata2_real    (x_real_all[ m+1 ][(k[m:0] < (1<<m) ?
                           (k[6:m] << (m+1)) + k[m:0] :
                           (k[6:m] << (m+1)) + (k[m:0]-(1<<m))) + (1<<m) ]),
               .oudata2_imag    (x_imag_all[ m+1 ][((k[m:0]) < (1<<m) ?
                           (k[6:m] << (m+1)) + k[m:0] :
                           (k[6:m] << (m+1)) + (k[m:0]-(1<<m))) + (1<<m) ]),
			   .over_signal      (signal_box[ (m+1)*32 + k ]  )
               );
            end
        end
    endgenerate
*/
// 阶段1
butterfly my0_0(clk,rstn,x_real_all[0][0],x_imag_all[0][0],x_real_all[0][1],x_imag_all[0][1],fac_real[0],fac_imag[0],signal_box[0],x_real_all[1][0],x_imag_all[1][0],x_real_all[1][1],x_imag_all[1][1],signal_box[32+0]); 
butterfly my0_1(clk,rstn,x_real_all[0][2],x_imag_all[0][2],x_real_all[0][3],x_imag_all[0][3],fac_real[0],fac_imag[0],signal_box[1],x_real_all[1][2],x_imag_all[1][2],x_real_all[1][3],x_imag_all[1][3],signal_box[32+1]); 
butterfly my0_2(clk,rstn,x_real_all[0][4],x_imag_all[0][4],x_real_all[0][5],x_imag_all[0][5],fac_real[0],fac_imag[0],signal_box[2],x_real_all[1][4],x_imag_all[1][4],x_real_all[1][5],x_imag_all[1][5],signal_box[32+2]); 
butterfly my0_3(clk,rstn,x_real_all[0][6],x_imag_all[0][6],x_real_all[0][7],x_imag_all[0][7],fac_real[0],fac_imag[0],signal_box[3],x_real_all[1][6],x_imag_all[1][6],x_real_all[1][7],x_imag_all[1][7],signal_box[32+3]); 
butterfly my0_4(clk,rstn,x_real_all[0][8],x_imag_all[0][8],x_real_all[0][9],x_imag_all[0][9],fac_real[0],fac_imag[0],signal_box[4],x_real_all[1][8],x_imag_all[1][8],x_real_all[1][9],x_imag_all[1][9],signal_box[32+4]); 
butterfly my0_5(clk,rstn,x_real_all[0][10],x_imag_all[0][10],x_real_all[0][11],x_imag_all[0][11],fac_real[0],fac_imag[0],signal_box[5],x_real_all[1][10],x_imag_all[1][10],x_real_all[1][11],x_imag_all[1][11],signal_box[32+5]); 
butterfly my0_6(clk,rstn,x_real_all[0][12],x_imag_all[0][12],x_real_all[0][13],x_imag_all[0][13],fac_real[0],fac_imag[0],signal_box[6],x_real_all[1][12],x_imag_all[1][12],x_real_all[1][13],x_imag_all[1][13],signal_box[32+6]); 
butterfly my0_7(clk,rstn,x_real_all[0][14],x_imag_all[0][14],x_real_all[0][15],x_imag_all[0][15],fac_real[0],fac_imag[0],signal_box[7],x_real_all[1][14],x_imag_all[1][14],x_real_all[1][15],x_imag_all[1][15],signal_box[32+7]); 
butterfly my0_8(clk,rstn,x_real_all[0][16],x_imag_all[0][16],x_real_all[0][17],x_imag_all[0][17],fac_real[0],fac_imag[0],signal_box[8],x_real_all[1][16],x_imag_all[1][16],x_real_all[1][17],x_imag_all[1][17],signal_box[32+8]); 
butterfly my0_9(clk,rstn,x_real_all[0][18],x_imag_all[0][18],x_real_all[0][19],x_imag_all[0][19],fac_real[0],fac_imag[0],signal_box[9],x_real_all[1][18],x_imag_all[1][18],x_real_all[1][19],x_imag_all[1][19],signal_box[32+9]); 
butterfly my0_10(clk,rstn,x_real_all[0][20],x_imag_all[0][20],x_real_all[0][21],x_imag_all[0][21],fac_real[0],fac_imag[0],signal_box[10],x_real_all[1][20],x_imag_all[1][20],x_real_all[1][21],x_imag_all[1][21],signal_box[32+10]); 
butterfly my0_11(clk,rstn,x_real_all[0][22],x_imag_all[0][22],x_real_all[0][23],x_imag_all[0][23],fac_real[0],fac_imag[0],signal_box[11],x_real_all[1][22],x_imag_all[1][22],x_real_all[1][23],x_imag_all[1][23],signal_box[32+11]); 
butterfly my0_12(clk,rstn,x_real_all[0][24],x_imag_all[0][24],x_real_all[0][25],x_imag_all[0][25],fac_real[0],fac_imag[0],signal_box[12],x_real_all[1][24],x_imag_all[1][24],x_real_all[1][25],x_imag_all[1][25],signal_box[32+12]); 
butterfly my0_13(clk,rstn,x_real_all[0][26],x_imag_all[0][26],x_real_all[0][27],x_imag_all[0][27],fac_real[0],fac_imag[0],signal_box[13],x_real_all[1][26],x_imag_all[1][26],x_real_all[1][27],x_imag_all[1][27],signal_box[32+13]); 
butterfly my0_14(clk,rstn,x_real_all[0][28],x_imag_all[0][28],x_real_all[0][29],x_imag_all[0][29],fac_real[0],fac_imag[0],signal_box[14],x_real_all[1][28],x_imag_all[1][28],x_real_all[1][29],x_imag_all[1][29],signal_box[32+14]); 
butterfly my0_15(clk,rstn,x_real_all[0][30],x_imag_all[0][30],x_real_all[0][31],x_imag_all[0][31],fac_real[0],fac_imag[0],signal_box[15],x_real_all[1][30],x_imag_all[1][30],x_real_all[1][31],x_imag_all[1][31],signal_box[32+15]); 
butterfly my0_16(clk,rstn,x_real_all[0][32],x_imag_all[0][32],x_real_all[0][33],x_imag_all[0][33],fac_real[0],fac_imag[0],signal_box[16],x_real_all[1][32],x_imag_all[1][32],x_real_all[1][33],x_imag_all[1][33],signal_box[32+16]); 
butterfly my0_17(clk,rstn,x_real_all[0][34],x_imag_all[0][34],x_real_all[0][35],x_imag_all[0][35],fac_real[0],fac_imag[0],signal_box[17],x_real_all[1][34],x_imag_all[1][34],x_real_all[1][35],x_imag_all[1][35],signal_box[32+17]); 
butterfly my0_18(clk,rstn,x_real_all[0][36],x_imag_all[0][36],x_real_all[0][37],x_imag_all[0][37],fac_real[0],fac_imag[0],signal_box[18],x_real_all[1][36],x_imag_all[1][36],x_real_all[1][37],x_imag_all[1][37],signal_box[32+18]); 
butterfly my0_19(clk,rstn,x_real_all[0][38],x_imag_all[0][38],x_real_all[0][39],x_imag_all[0][39],fac_real[0],fac_imag[0],signal_box[19],x_real_all[1][38],x_imag_all[1][38],x_real_all[1][39],x_imag_all[1][39],signal_box[32+19]); 
butterfly my0_20(clk,rstn,x_real_all[0][40],x_imag_all[0][40],x_real_all[0][41],x_imag_all[0][41],fac_real[0],fac_imag[0],signal_box[20],x_real_all[1][40],x_imag_all[1][40],x_real_all[1][41],x_imag_all[1][41],signal_box[32+20]); 
butterfly my0_21(clk,rstn,x_real_all[0][42],x_imag_all[0][42],x_real_all[0][43],x_imag_all[0][43],fac_real[0],fac_imag[0],signal_box[21],x_real_all[1][42],x_imag_all[1][42],x_real_all[1][43],x_imag_all[1][43],signal_box[32+21]); 
butterfly my0_22(clk,rstn,x_real_all[0][44],x_imag_all[0][44],x_real_all[0][45],x_imag_all[0][45],fac_real[0],fac_imag[0],signal_box[22],x_real_all[1][44],x_imag_all[1][44],x_real_all[1][45],x_imag_all[1][45],signal_box[32+22]); 
butterfly my0_23(clk,rstn,x_real_all[0][46],x_imag_all[0][46],x_real_all[0][47],x_imag_all[0][47],fac_real[0],fac_imag[0],signal_box[23],x_real_all[1][46],x_imag_all[1][46],x_real_all[1][47],x_imag_all[1][47],signal_box[32+23]); 
butterfly my0_24(clk,rstn,x_real_all[0][48],x_imag_all[0][48],x_real_all[0][49],x_imag_all[0][49],fac_real[0],fac_imag[0],signal_box[24],x_real_all[1][48],x_imag_all[1][48],x_real_all[1][49],x_imag_all[1][49],signal_box[32+24]); 
butterfly my0_25(clk,rstn,x_real_all[0][50],x_imag_all[0][50],x_real_all[0][51],x_imag_all[0][51],fac_real[0],fac_imag[0],signal_box[25],x_real_all[1][50],x_imag_all[1][50],x_real_all[1][51],x_imag_all[1][51],signal_box[32+25]); 
butterfly my0_26(clk,rstn,x_real_all[0][52],x_imag_all[0][52],x_real_all[0][53],x_imag_all[0][53],fac_real[0],fac_imag[0],signal_box[26],x_real_all[1][52],x_imag_all[1][52],x_real_all[1][53],x_imag_all[1][53],signal_box[32+26]); 
butterfly my0_27(clk,rstn,x_real_all[0][54],x_imag_all[0][54],x_real_all[0][55],x_imag_all[0][55],fac_real[0],fac_imag[0],signal_box[27],x_real_all[1][54],x_imag_all[1][54],x_real_all[1][55],x_imag_all[1][55],signal_box[32+27]); 
butterfly my0_28(clk,rstn,x_real_all[0][56],x_imag_all[0][56],x_real_all[0][57],x_imag_all[0][57],fac_real[0],fac_imag[0],signal_box[28],x_real_all[1][56],x_imag_all[1][56],x_real_all[1][57],x_imag_all[1][57],signal_box[32+28]); 
butterfly my0_29(clk,rstn,x_real_all[0][58],x_imag_all[0][58],x_real_all[0][59],x_imag_all[0][59],fac_real[0],fac_imag[0],signal_box[29],x_real_all[1][58],x_imag_all[1][58],x_real_all[1][59],x_imag_all[1][59],signal_box[32+29]); 
butterfly my0_30(clk,rstn,x_real_all[0][60],x_imag_all[0][60],x_real_all[0][61],x_imag_all[0][61],fac_real[0],fac_imag[0],signal_box[30],x_real_all[1][60],x_imag_all[1][60],x_real_all[1][61],x_imag_all[1][61],signal_box[32+30]); 
butterfly my0_31(clk,rstn,x_real_all[0][62],x_imag_all[0][62],x_real_all[0][63],x_imag_all[0][63],fac_real[0],fac_imag[0],signal_box[31],x_real_all[1][62],x_imag_all[1][62],x_real_all[1][63],x_imag_all[1][63],signal_box[32+31]); 

//阶段2
butterfly my1_0(clk,rstn,x_real_all[1][0],x_imag_all[1][0],x_real_all[1][2],x_imag_all[1][2],fac_real[0],fac_imag[0],signal_box[32+0],x_real_all[2][0],x_imag_all[2][0],x_real_all[2][2],x_imag_all[2][2],signal_box[2*32+0]); 
butterfly my1_1(clk,rstn,x_real_all[1][1],x_imag_all[1][1],x_real_all[1][3],x_imag_all[1][3],fac_real[16],fac_imag[16],signal_box[32+1],x_real_all[2][1],x_imag_all[2][1],x_real_all[2][3],x_imag_all[2][3],signal_box[2*32+1]); 
butterfly my1_2(clk,rstn,x_real_all[1][4],x_imag_all[1][4],x_real_all[1][6],x_imag_all[1][6],fac_real[0],fac_imag[0],signal_box[32+2],x_real_all[2][4],x_imag_all[2][4],x_real_all[2][6],x_imag_all[2][6],signal_box[2*32+2]); 
butterfly my1_3(clk,rstn,x_real_all[1][5],x_imag_all[1][5],x_real_all[1][7],x_imag_all[1][7],fac_real[16],fac_imag[16],signal_box[32+3],x_real_all[2][5],x_imag_all[2][5],x_real_all[2][7],x_imag_all[2][7],signal_box[2*32+3]); 
butterfly my1_4(clk,rstn,x_real_all[1][8],x_imag_all[1][8],x_real_all[1][10],x_imag_all[1][10],fac_real[0],fac_imag[0],signal_box[32+4],x_real_all[2][8],x_imag_all[2][8],x_real_all[2][10],x_imag_all[2][10],signal_box[2*32+4]); 
butterfly my1_5(clk,rstn,x_real_all[1][9],x_imag_all[1][9],x_real_all[1][11],x_imag_all[1][11],fac_real[16],fac_imag[16],signal_box[32+5],x_real_all[2][9],x_imag_all[2][9],x_real_all[2][11],x_imag_all[2][11],signal_box[2*32+5]); 
butterfly my1_6(clk,rstn,x_real_all[1][12],x_imag_all[1][12],x_real_all[1][14],x_imag_all[1][14],fac_real[0],fac_imag[0],signal_box[32+6],x_real_all[2][12],x_imag_all[2][12],x_real_all[2][14],x_imag_all[2][14],signal_box[2*32+6]); 
butterfly my1_7(clk,rstn,x_real_all[1][13],x_imag_all[1][13],x_real_all[1][15],x_imag_all[1][15],fac_real[16],fac_imag[16],signal_box[32+7],x_real_all[2][13],x_imag_all[2][13],x_real_all[2][15],x_imag_all[2][15],signal_box[2*32+7]); 
butterfly my1_8(clk,rstn,x_real_all[1][16],x_imag_all[1][16],x_real_all[1][18],x_imag_all[1][18],fac_real[0],fac_imag[0],signal_box[32+8],x_real_all[2][16],x_imag_all[2][16],x_real_all[2][18],x_imag_all[2][18],signal_box[2*32+8]); 
butterfly my1_9(clk,rstn,x_real_all[1][17],x_imag_all[1][17],x_real_all[1][19],x_imag_all[1][19],fac_real[16],fac_imag[16],signal_box[32+9],x_real_all[2][17],x_imag_all[2][17],x_real_all[2][19],x_imag_all[2][19],signal_box[2*32+9]); 
butterfly my1_10(clk,rstn,x_real_all[1][20],x_imag_all[1][20],x_real_all[1][22],x_imag_all[1][22],fac_real[0],fac_imag[0],signal_box[32+10],x_real_all[2][20],x_imag_all[2][20],x_real_all[2][22],x_imag_all[2][22],signal_box[2*32+10]); 
butterfly my1_11(clk,rstn,x_real_all[1][21],x_imag_all[1][21],x_real_all[1][23],x_imag_all[1][23],fac_real[16],fac_imag[16],signal_box[32+11],x_real_all[2][21],x_imag_all[2][21],x_real_all[2][23],x_imag_all[2][23],signal_box[2*32+11]); 
butterfly my1_12(clk,rstn,x_real_all[1][24],x_imag_all[1][24],x_real_all[1][26],x_imag_all[1][26],fac_real[0],fac_imag[0],signal_box[32+12],x_real_all[2][24],x_imag_all[2][24],x_real_all[2][26],x_imag_all[2][26],signal_box[2*32+12]); 
butterfly my1_13(clk,rstn,x_real_all[1][25],x_imag_all[1][25],x_real_all[1][27],x_imag_all[1][27],fac_real[16],fac_imag[16],signal_box[32+13],x_real_all[2][25],x_imag_all[2][25],x_real_all[2][27],x_imag_all[2][27],signal_box[2*32+13]); 
butterfly my1_14(clk,rstn,x_real_all[1][28],x_imag_all[1][28],x_real_all[1][30],x_imag_all[1][30],fac_real[0],fac_imag[0],signal_box[32+14],x_real_all[2][28],x_imag_all[2][28],x_real_all[2][30],x_imag_all[2][30],signal_box[2*32+14]); 
butterfly my1_15(clk,rstn,x_real_all[1][29],x_imag_all[1][29],x_real_all[1][31],x_imag_all[1][31],fac_real[16],fac_imag[16],signal_box[32+15],x_real_all[2][29],x_imag_all[2][29],x_real_all[2][31],x_imag_all[2][31],signal_box[2*32+15]); 
butterfly my1_16(clk,rstn,x_real_all[1][32],x_imag_all[1][32],x_real_all[1][34],x_imag_all[1][34],fac_real[0],fac_imag[0],signal_box[32+16],x_real_all[2][32],x_imag_all[2][32],x_real_all[2][34],x_imag_all[2][34],signal_box[2*32+16]); 
butterfly my1_17(clk,rstn,x_real_all[1][33],x_imag_all[1][33],x_real_all[1][35],x_imag_all[1][35],fac_real[16],fac_imag[16],signal_box[32+17],x_real_all[2][33],x_imag_all[2][33],x_real_all[2][35],x_imag_all[2][35],signal_box[2*32+17]); 
butterfly my1_18(clk,rstn,x_real_all[1][36],x_imag_all[1][36],x_real_all[1][38],x_imag_all[1][38],fac_real[0],fac_imag[0],signal_box[32+18],x_real_all[2][36],x_imag_all[2][36],x_real_all[2][38],x_imag_all[2][38],signal_box[2*32+18]); 
butterfly my1_19(clk,rstn,x_real_all[1][37],x_imag_all[1][37],x_real_all[1][39],x_imag_all[1][39],fac_real[16],fac_imag[16],signal_box[32+19],x_real_all[2][37],x_imag_all[2][37],x_real_all[2][39],x_imag_all[2][39],signal_box[2*32+19]); 
butterfly my1_20(clk,rstn,x_real_all[1][40],x_imag_all[1][40],x_real_all[1][42],x_imag_all[1][42],fac_real[0],fac_imag[0],signal_box[32+20],x_real_all[2][40],x_imag_all[2][40],x_real_all[2][42],x_imag_all[2][42],signal_box[2*32+20]); 
butterfly my1_21(clk,rstn,x_real_all[1][41],x_imag_all[1][41],x_real_all[1][43],x_imag_all[1][43],fac_real[16],fac_imag[16],signal_box[32+21],x_real_all[2][41],x_imag_all[2][41],x_real_all[2][43],x_imag_all[2][43],signal_box[2*32+21]); 
butterfly my1_22(clk,rstn,x_real_all[1][44],x_imag_all[1][44],x_real_all[1][46],x_imag_all[1][46],fac_real[0],fac_imag[0],signal_box[32+22],x_real_all[2][44],x_imag_all[2][44],x_real_all[2][46],x_imag_all[2][46],signal_box[2*32+22]); 
butterfly my1_23(clk,rstn,x_real_all[1][45],x_imag_all[1][45],x_real_all[1][47],x_imag_all[1][47],fac_real[16],fac_imag[16],signal_box[32+23],x_real_all[2][45],x_imag_all[2][45],x_real_all[2][47],x_imag_all[2][47],signal_box[2*32+23]); 
butterfly my1_24(clk,rstn,x_real_all[1][48],x_imag_all[1][48],x_real_all[1][50],x_imag_all[1][50],fac_real[0],fac_imag[0],signal_box[32+24],x_real_all[2][48],x_imag_all[2][48],x_real_all[2][50],x_imag_all[2][50],signal_box[2*32+24]); 
butterfly my1_25(clk,rstn,x_real_all[1][49],x_imag_all[1][49],x_real_all[1][51],x_imag_all[1][51],fac_real[16],fac_imag[16],signal_box[32+25],x_real_all[2][49],x_imag_all[2][49],x_real_all[2][51],x_imag_all[2][51],signal_box[2*32+25]); 
butterfly my1_26(clk,rstn,x_real_all[1][52],x_imag_all[1][52],x_real_all[1][54],x_imag_all[1][54],fac_real[0],fac_imag[0],signal_box[32+26],x_real_all[2][52],x_imag_all[2][52],x_real_all[2][54],x_imag_all[2][54],signal_box[2*32+26]); 
butterfly my1_27(clk,rstn,x_real_all[1][53],x_imag_all[1][53],x_real_all[1][55],x_imag_all[1][55],fac_real[16],fac_imag[16],signal_box[32+27],x_real_all[2][53],x_imag_all[2][53],x_real_all[2][55],x_imag_all[2][55],signal_box[2*32+27]); 
butterfly my1_28(clk,rstn,x_real_all[1][56],x_imag_all[1][56],x_real_all[1][58],x_imag_all[1][58],fac_real[0],fac_imag[0],signal_box[32+28],x_real_all[2][56],x_imag_all[2][56],x_real_all[2][58],x_imag_all[2][58],signal_box[2*32+28]); 
butterfly my1_29(clk,rstn,x_real_all[1][57],x_imag_all[1][57],x_real_all[1][59],x_imag_all[1][59],fac_real[16],fac_imag[16],signal_box[32+29],x_real_all[2][57],x_imag_all[2][57],x_real_all[2][59],x_imag_all[2][59],signal_box[2*32+29]); 
butterfly my1_30(clk,rstn,x_real_all[1][60],x_imag_all[1][60],x_real_all[1][62],x_imag_all[1][62],fac_real[0],fac_imag[0],signal_box[32+30],x_real_all[2][60],x_imag_all[2][60],x_real_all[2][62],x_imag_all[2][62],signal_box[2*32+30]); 
butterfly my1_31(clk,rstn,x_real_all[1][61],x_imag_all[1][61],x_real_all[1][63],x_imag_all[1][63],fac_real[16],fac_imag[16],signal_box[32+31],x_real_all[2][61],x_imag_all[2][61],x_real_all[2][63],x_imag_all[2][63],signal_box[2*32+31]); 

//阶段3
butterfly my2_0(clk,rstn,x_real_all[2][0],x_imag_all[2][0],x_real_all[2][4],x_imag_all[2][4],fac_real[0],fac_imag[0],signal_box[2*32+0],x_real_all[3][0],x_imag_all[3][0],x_real_all[3][4],x_imag_all[3][4],signal_box[3*32+0]); 
butterfly my2_1(clk,rstn,x_real_all[2][1],x_imag_all[2][1],x_real_all[2][5],x_imag_all[2][5],fac_real[8],fac_imag[8],signal_box[2*32+1],x_real_all[3][1],x_imag_all[3][1],x_real_all[3][5],x_imag_all[3][5],signal_box[3*32+1]); 
butterfly my2_2(clk,rstn,x_real_all[2][2],x_imag_all[2][2],x_real_all[2][6],x_imag_all[2][6],fac_real[16],fac_imag[16],signal_box[2*32+2],x_real_all[3][2],x_imag_all[3][2],x_real_all[3][6],x_imag_all[3][6],signal_box[3*32+2]); 
butterfly my2_3(clk,rstn,x_real_all[2][3],x_imag_all[2][3],x_real_all[2][7],x_imag_all[2][7],fac_real[24],fac_imag[24],signal_box[2*32+3],x_real_all[3][3],x_imag_all[3][3],x_real_all[3][7],x_imag_all[3][7],signal_box[3*32+3]); 
butterfly my2_4(clk,rstn,x_real_all[2][8],x_imag_all[2][8],x_real_all[2][12],x_imag_all[2][12],fac_real[0],fac_imag[0],signal_box[2*32+4],x_real_all[3][8],x_imag_all[3][8],x_real_all[3][12],x_imag_all[3][12],signal_box[3*32+4]); 
butterfly my2_5(clk,rstn,x_real_all[2][9],x_imag_all[2][9],x_real_all[2][13],x_imag_all[2][13],fac_real[8],fac_imag[8],signal_box[2*32+5],x_real_all[3][9],x_imag_all[3][9],x_real_all[3][13],x_imag_all[3][13],signal_box[3*32+5]); 
butterfly my2_6(clk,rstn,x_real_all[2][10],x_imag_all[2][10],x_real_all[2][14],x_imag_all[2][14],fac_real[16],fac_imag[16],signal_box[2*32+6],x_real_all[3][10],x_imag_all[3][10],x_real_all[3][14],x_imag_all[3][14],signal_box[3*32+6]); 
butterfly my2_7(clk,rstn,x_real_all[2][11],x_imag_all[2][11],x_real_all[2][15],x_imag_all[2][15],fac_real[24],fac_imag[24],signal_box[2*32+7],x_real_all[3][11],x_imag_all[3][11],x_real_all[3][15],x_imag_all[3][15],signal_box[3*32+7]); 
butterfly my2_8(clk,rstn,x_real_all[2][16],x_imag_all[2][16],x_real_all[2][20],x_imag_all[2][20],fac_real[0],fac_imag[0],signal_box[2*32+8],x_real_all[3][16],x_imag_all[3][16],x_real_all[3][20],x_imag_all[3][20],signal_box[3*32+8]); 
butterfly my2_9(clk,rstn,x_real_all[2][17],x_imag_all[2][17],x_real_all[2][21],x_imag_all[2][21],fac_real[8],fac_imag[8],signal_box[2*32+9],x_real_all[3][17],x_imag_all[3][17],x_real_all[3][21],x_imag_all[3][21],signal_box[3*32+9]); 
butterfly my2_10(clk,rstn,x_real_all[2][18],x_imag_all[2][18],x_real_all[2][22],x_imag_all[2][22],fac_real[16],fac_imag[16],signal_box[2*32+10],x_real_all[3][18],x_imag_all[3][18],x_real_all[3][22],x_imag_all[3][22],signal_box[3*32+10]); 
butterfly my2_11(clk,rstn,x_real_all[2][19],x_imag_all[2][19],x_real_all[2][23],x_imag_all[2][23],fac_real[24],fac_imag[24],signal_box[2*32+11],x_real_all[3][19],x_imag_all[3][19],x_real_all[3][23],x_imag_all[3][23],signal_box[3*32+11]); 
butterfly my2_12(clk,rstn,x_real_all[2][24],x_imag_all[2][24],x_real_all[2][28],x_imag_all[2][28],fac_real[0],fac_imag[0],signal_box[2*32+12],x_real_all[3][24],x_imag_all[3][24],x_real_all[3][28],x_imag_all[3][28],signal_box[3*32+12]); 
butterfly my2_13(clk,rstn,x_real_all[2][25],x_imag_all[2][25],x_real_all[2][29],x_imag_all[2][29],fac_real[8],fac_imag[8],signal_box[2*32+13],x_real_all[3][25],x_imag_all[3][25],x_real_all[3][29],x_imag_all[3][29],signal_box[3*32+13]); 
butterfly my2_14(clk,rstn,x_real_all[2][26],x_imag_all[2][26],x_real_all[2][30],x_imag_all[2][30],fac_real[16],fac_imag[16],signal_box[2*32+14],x_real_all[3][26],x_imag_all[3][26],x_real_all[3][30],x_imag_all[3][30],signal_box[3*32+14]); 
butterfly my2_15(clk,rstn,x_real_all[2][27],x_imag_all[2][27],x_real_all[2][31],x_imag_all[2][31],fac_real[24],fac_imag[24],signal_box[2*32+15],x_real_all[3][27],x_imag_all[3][27],x_real_all[3][31],x_imag_all[3][31],signal_box[3*32+15]); 
butterfly my2_16(clk,rstn,x_real_all[2][32],x_imag_all[2][32],x_real_all[2][36],x_imag_all[2][36],fac_real[0],fac_imag[0],signal_box[2*32+16],x_real_all[3][32],x_imag_all[3][32],x_real_all[3][36],x_imag_all[3][36],signal_box[3*32+16]); 
butterfly my2_17(clk,rstn,x_real_all[2][33],x_imag_all[2][33],x_real_all[2][37],x_imag_all[2][37],fac_real[8],fac_imag[8],signal_box[2*32+17],x_real_all[3][33],x_imag_all[3][33],x_real_all[3][37],x_imag_all[3][37],signal_box[3*32+17]); 
butterfly my2_18(clk,rstn,x_real_all[2][34],x_imag_all[2][34],x_real_all[2][38],x_imag_all[2][38],fac_real[16],fac_imag[16],signal_box[2*32+18],x_real_all[3][34],x_imag_all[3][34],x_real_all[3][38],x_imag_all[3][38],signal_box[3*32+18]); 
butterfly my2_19(clk,rstn,x_real_all[2][35],x_imag_all[2][35],x_real_all[2][39],x_imag_all[2][39],fac_real[24],fac_imag[24],signal_box[2*32+19],x_real_all[3][35],x_imag_all[3][35],x_real_all[3][39],x_imag_all[3][39],signal_box[3*32+19]); 
butterfly my2_20(clk,rstn,x_real_all[2][40],x_imag_all[2][40],x_real_all[2][44],x_imag_all[2][44],fac_real[0],fac_imag[0],signal_box[2*32+20],x_real_all[3][40],x_imag_all[3][40],x_real_all[3][44],x_imag_all[3][44],signal_box[3*32+20]); 
butterfly my2_21(clk,rstn,x_real_all[2][41],x_imag_all[2][41],x_real_all[2][45],x_imag_all[2][45],fac_real[8],fac_imag[8],signal_box[2*32+21],x_real_all[3][41],x_imag_all[3][41],x_real_all[3][45],x_imag_all[3][45],signal_box[3*32+21]); 
butterfly my2_22(clk,rstn,x_real_all[2][42],x_imag_all[2][42],x_real_all[2][46],x_imag_all[2][46],fac_real[16],fac_imag[16],signal_box[2*32+22],x_real_all[3][42],x_imag_all[3][42],x_real_all[3][46],x_imag_all[3][46],signal_box[3*32+22]); 
butterfly my2_23(clk,rstn,x_real_all[2][43],x_imag_all[2][43],x_real_all[2][47],x_imag_all[2][47],fac_real[24],fac_imag[24],signal_box[2*32+23],x_real_all[3][43],x_imag_all[3][43],x_real_all[3][47],x_imag_all[3][47],signal_box[3*32+23]); 
butterfly my2_24(clk,rstn,x_real_all[2][48],x_imag_all[2][48],x_real_all[2][52],x_imag_all[2][52],fac_real[0],fac_imag[0],signal_box[2*32+24],x_real_all[3][48],x_imag_all[3][48],x_real_all[3][52],x_imag_all[3][52],signal_box[3*32+24]); 
butterfly my2_25(clk,rstn,x_real_all[2][49],x_imag_all[2][49],x_real_all[2][53],x_imag_all[2][53],fac_real[8],fac_imag[8],signal_box[2*32+25],x_real_all[3][49],x_imag_all[3][49],x_real_all[3][53],x_imag_all[3][53],signal_box[3*32+25]); 
butterfly my2_26(clk,rstn,x_real_all[2][50],x_imag_all[2][50],x_real_all[2][54],x_imag_all[2][54],fac_real[16],fac_imag[16],signal_box[2*32+26],x_real_all[3][50],x_imag_all[3][50],x_real_all[3][54],x_imag_all[3][54],signal_box[3*32+26]); 
butterfly my2_27(clk,rstn,x_real_all[2][51],x_imag_all[2][51],x_real_all[2][55],x_imag_all[2][55],fac_real[24],fac_imag[24],signal_box[2*32+27],x_real_all[3][51],x_imag_all[3][51],x_real_all[3][55],x_imag_all[3][55],signal_box[3*32+27]); 
butterfly my2_28(clk,rstn,x_real_all[2][56],x_imag_all[2][56],x_real_all[2][60],x_imag_all[2][60],fac_real[0],fac_imag[0],signal_box[2*32+28],x_real_all[3][56],x_imag_all[3][56],x_real_all[3][60],x_imag_all[3][60],signal_box[3*32+28]); 
butterfly my2_29(clk,rstn,x_real_all[2][57],x_imag_all[2][57],x_real_all[2][61],x_imag_all[2][61],fac_real[8],fac_imag[8],signal_box[2*32+29],x_real_all[3][57],x_imag_all[3][57],x_real_all[3][61],x_imag_all[3][61],signal_box[3*32+29]); 
butterfly my2_30(clk,rstn,x_real_all[2][58],x_imag_all[2][58],x_real_all[2][62],x_imag_all[2][62],fac_real[16],fac_imag[16],signal_box[2*32+30],x_real_all[3][58],x_imag_all[3][58],x_real_all[3][62],x_imag_all[3][62],signal_box[3*32+30]); 
butterfly my2_31(clk,rstn,x_real_all[2][59],x_imag_all[2][59],x_real_all[2][63],x_imag_all[2][63],fac_real[24],fac_imag[24],signal_box[2*32+31],x_real_all[3][59],x_imag_all[3][59],x_real_all[3][63],x_imag_all[3][63],signal_box[3*32+31]); 

//阶段4
butterfly my3_0(clk,rstn,x_real_all[3][0],x_imag_all[3][0],x_real_all[3][8],x_imag_all[3][8],fac_real[0],fac_imag[0],signal_box[3*32+0],x_real_all[4][0],x_imag_all[4][0],x_real_all[4][8],x_imag_all[4][8],signal_box[4*32+0]); 
butterfly my3_1(clk,rstn,x_real_all[3][1],x_imag_all[3][1],x_real_all[3][9],x_imag_all[3][9],fac_real[4],fac_imag[4],signal_box[3*32+1],x_real_all[4][1],x_imag_all[4][1],x_real_all[4][9],x_imag_all[4][9],signal_box[4*32+1]); 
butterfly my3_2(clk,rstn,x_real_all[3][2],x_imag_all[3][2],x_real_all[3][10],x_imag_all[3][10],fac_real[8],fac_imag[8],signal_box[3*32+2],x_real_all[4][2],x_imag_all[4][2],x_real_all[4][10],x_imag_all[4][10],signal_box[4*32+2]); 
butterfly my3_3(clk,rstn,x_real_all[3][3],x_imag_all[3][3],x_real_all[3][11],x_imag_all[3][11],fac_real[12],fac_imag[12],signal_box[3*32+3],x_real_all[4][3],x_imag_all[4][3],x_real_all[4][11],x_imag_all[4][11],signal_box[4*32+3]); 
butterfly my3_4(clk,rstn,x_real_all[3][4],x_imag_all[3][4],x_real_all[3][12],x_imag_all[3][12],fac_real[16],fac_imag[16],signal_box[3*32+4],x_real_all[4][4],x_imag_all[4][4],x_real_all[4][12],x_imag_all[4][12],signal_box[4*32+4]); 
butterfly my3_5(clk,rstn,x_real_all[3][5],x_imag_all[3][5],x_real_all[3][13],x_imag_all[3][13],fac_real[20],fac_imag[20],signal_box[3*32+5],x_real_all[4][5],x_imag_all[4][5],x_real_all[4][13],x_imag_all[4][13],signal_box[4*32+5]); 
butterfly my3_6(clk,rstn,x_real_all[3][6],x_imag_all[3][6],x_real_all[3][14],x_imag_all[3][14],fac_real[24],fac_imag[24],signal_box[3*32+6],x_real_all[4][6],x_imag_all[4][6],x_real_all[4][14],x_imag_all[4][14],signal_box[4*32+6]); 
butterfly my3_7(clk,rstn,x_real_all[3][7],x_imag_all[3][7],x_real_all[3][15],x_imag_all[3][15],fac_real[28],fac_imag[28],signal_box[3*32+7],x_real_all[4][7],x_imag_all[4][7],x_real_all[4][15],x_imag_all[4][15],signal_box[4*32+7]); 
butterfly my3_8(clk,rstn,x_real_all[3][16],x_imag_all[3][16],x_real_all[3][24],x_imag_all[3][24],fac_real[0],fac_imag[0],signal_box[3*32+8],x_real_all[4][16],x_imag_all[4][16],x_real_all[4][24],x_imag_all[4][24],signal_box[4*32+8]); 
butterfly my3_9(clk,rstn,x_real_all[3][17],x_imag_all[3][17],x_real_all[3][25],x_imag_all[3][25],fac_real[4],fac_imag[4],signal_box[3*32+9],x_real_all[4][17],x_imag_all[4][17],x_real_all[4][25],x_imag_all[4][25],signal_box[4*32+9]); 
butterfly my3_10(clk,rstn,x_real_all[3][18],x_imag_all[3][18],x_real_all[3][26],x_imag_all[3][26],fac_real[8],fac_imag[8],signal_box[3*32+10],x_real_all[4][18],x_imag_all[4][18],x_real_all[4][26],x_imag_all[4][26],signal_box[4*32+10]); 
butterfly my3_11(clk,rstn,x_real_all[3][19],x_imag_all[3][19],x_real_all[3][27],x_imag_all[3][27],fac_real[12],fac_imag[12],signal_box[3*32+11],x_real_all[4][19],x_imag_all[4][19],x_real_all[4][27],x_imag_all[4][27],signal_box[4*32+11]); 
butterfly my3_12(clk,rstn,x_real_all[3][20],x_imag_all[3][20],x_real_all[3][28],x_imag_all[3][28],fac_real[16],fac_imag[16],signal_box[3*32+12],x_real_all[4][20],x_imag_all[4][20],x_real_all[4][28],x_imag_all[4][28],signal_box[4*32+12]); 
butterfly my3_13(clk,rstn,x_real_all[3][21],x_imag_all[3][21],x_real_all[3][29],x_imag_all[3][29],fac_real[20],fac_imag[20],signal_box[3*32+13],x_real_all[4][21],x_imag_all[4][21],x_real_all[4][29],x_imag_all[4][29],signal_box[4*32+13]); 
butterfly my3_14(clk,rstn,x_real_all[3][22],x_imag_all[3][22],x_real_all[3][30],x_imag_all[3][30],fac_real[24],fac_imag[24],signal_box[3*32+14],x_real_all[4][22],x_imag_all[4][22],x_real_all[4][30],x_imag_all[4][30],signal_box[4*32+14]); 
butterfly my3_15(clk,rstn,x_real_all[3][23],x_imag_all[3][23],x_real_all[3][31],x_imag_all[3][31],fac_real[28],fac_imag[28],signal_box[3*32+15],x_real_all[4][23],x_imag_all[4][23],x_real_all[4][31],x_imag_all[4][31],signal_box[4*32+15]); 
butterfly my3_16(clk,rstn,x_real_all[3][32],x_imag_all[3][32],x_real_all[3][40],x_imag_all[3][40],fac_real[0],fac_imag[0],signal_box[3*32+16],x_real_all[4][32],x_imag_all[4][32],x_real_all[4][40],x_imag_all[4][40],signal_box[4*32+16]); 
butterfly my3_17(clk,rstn,x_real_all[3][33],x_imag_all[3][33],x_real_all[3][41],x_imag_all[3][41],fac_real[4],fac_imag[4],signal_box[3*32+17],x_real_all[4][33],x_imag_all[4][33],x_real_all[4][41],x_imag_all[4][41],signal_box[4*32+17]); 
butterfly my3_18(clk,rstn,x_real_all[3][34],x_imag_all[3][34],x_real_all[3][42],x_imag_all[3][42],fac_real[8],fac_imag[8],signal_box[3*32+18],x_real_all[4][34],x_imag_all[4][34],x_real_all[4][42],x_imag_all[4][42],signal_box[4*32+18]); 
butterfly my3_19(clk,rstn,x_real_all[3][35],x_imag_all[3][35],x_real_all[3][43],x_imag_all[3][43],fac_real[12],fac_imag[12],signal_box[3*32+19],x_real_all[4][35],x_imag_all[4][35],x_real_all[4][43],x_imag_all[4][43],signal_box[4*32+19]); 
butterfly my3_20(clk,rstn,x_real_all[3][36],x_imag_all[3][36],x_real_all[3][44],x_imag_all[3][44],fac_real[16],fac_imag[16],signal_box[3*32+20],x_real_all[4][36],x_imag_all[4][36],x_real_all[4][44],x_imag_all[4][44],signal_box[4*32+20]); 
butterfly my3_21(clk,rstn,x_real_all[3][37],x_imag_all[3][37],x_real_all[3][45],x_imag_all[3][45],fac_real[20],fac_imag[20],signal_box[3*32+21],x_real_all[4][37],x_imag_all[4][37],x_real_all[4][45],x_imag_all[4][45],signal_box[4*32+21]); 
butterfly my3_22(clk,rstn,x_real_all[3][38],x_imag_all[3][38],x_real_all[3][46],x_imag_all[3][46],fac_real[24],fac_imag[24],signal_box[3*32+22],x_real_all[4][38],x_imag_all[4][38],x_real_all[4][46],x_imag_all[4][46],signal_box[4*32+22]); 
butterfly my3_23(clk,rstn,x_real_all[3][39],x_imag_all[3][39],x_real_all[3][47],x_imag_all[3][47],fac_real[28],fac_imag[28],signal_box[3*32+23],x_real_all[4][39],x_imag_all[4][39],x_real_all[4][47],x_imag_all[4][47],signal_box[4*32+23]); 
butterfly my3_24(clk,rstn,x_real_all[3][48],x_imag_all[3][48],x_real_all[3][56],x_imag_all[3][56],fac_real[0],fac_imag[0],signal_box[3*32+24],x_real_all[4][48],x_imag_all[4][48],x_real_all[4][56],x_imag_all[4][56],signal_box[4*32+24]); 
butterfly my3_25(clk,rstn,x_real_all[3][49],x_imag_all[3][49],x_real_all[3][57],x_imag_all[3][57],fac_real[4],fac_imag[4],signal_box[3*32+25],x_real_all[4][49],x_imag_all[4][49],x_real_all[4][57],x_imag_all[4][57],signal_box[4*32+25]); 
butterfly my3_26(clk,rstn,x_real_all[3][50],x_imag_all[3][50],x_real_all[3][58],x_imag_all[3][58],fac_real[8],fac_imag[8],signal_box[3*32+26],x_real_all[4][50],x_imag_all[4][50],x_real_all[4][58],x_imag_all[4][58],signal_box[4*32+26]); 
butterfly my3_27(clk,rstn,x_real_all[3][51],x_imag_all[3][51],x_real_all[3][59],x_imag_all[3][59],fac_real[12],fac_imag[12],signal_box[3*32+27],x_real_all[4][51],x_imag_all[4][51],x_real_all[4][59],x_imag_all[4][59],signal_box[4*32+27]); 
butterfly my3_28(clk,rstn,x_real_all[3][52],x_imag_all[3][52],x_real_all[3][60],x_imag_all[3][60],fac_real[16],fac_imag[16],signal_box[3*32+28],x_real_all[4][52],x_imag_all[4][52],x_real_all[4][60],x_imag_all[4][60],signal_box[4*32+28]); 
butterfly my3_29(clk,rstn,x_real_all[3][53],x_imag_all[3][53],x_real_all[3][61],x_imag_all[3][61],fac_real[20],fac_imag[20],signal_box[3*32+29],x_real_all[4][53],x_imag_all[4][53],x_real_all[4][61],x_imag_all[4][61],signal_box[4*32+29]); 
butterfly my3_30(clk,rstn,x_real_all[3][54],x_imag_all[3][54],x_real_all[3][62],x_imag_all[3][62],fac_real[24],fac_imag[24],signal_box[3*32+30],x_real_all[4][54],x_imag_all[4][54],x_real_all[4][62],x_imag_all[4][62],signal_box[4*32+30]); 
butterfly my3_31(clk,rstn,x_real_all[3][55],x_imag_all[3][55],x_real_all[3][63],x_imag_all[3][63],fac_real[28],fac_imag[28],signal_box[3*32+31],x_real_all[4][55],x_imag_all[4][55],x_real_all[4][63],x_imag_all[4][63],signal_box[4*32+31]); 

//阶段5
butterfly my4_0(clk,rstn,x_real_all[4][0],x_imag_all[4][0],x_real_all[4][16],x_imag_all[4][16],fac_real[0],fac_imag[0],signal_box[4*32+0],x_real_all[5][0],x_imag_all[5][0],x_real_all[5][16],x_imag_all[5][16],signal_box[5*32+0]); 
butterfly my4_1(clk,rstn,x_real_all[4][1],x_imag_all[4][1],x_real_all[4][17],x_imag_all[4][17],fac_real[2],fac_imag[2],signal_box[4*32+1],x_real_all[5][1],x_imag_all[5][1],x_real_all[5][17],x_imag_all[5][17],signal_box[5*32+1]); 
butterfly my4_2(clk,rstn,x_real_all[4][2],x_imag_all[4][2],x_real_all[4][18],x_imag_all[4][18],fac_real[4],fac_imag[4],signal_box[4*32+2],x_real_all[5][2],x_imag_all[5][2],x_real_all[5][18],x_imag_all[5][18],signal_box[5*32+2]); 
butterfly my4_3(clk,rstn,x_real_all[4][3],x_imag_all[4][3],x_real_all[4][19],x_imag_all[4][19],fac_real[6],fac_imag[6],signal_box[4*32+3],x_real_all[5][3],x_imag_all[5][3],x_real_all[5][19],x_imag_all[5][19],signal_box[5*32+3]); 
butterfly my4_4(clk,rstn,x_real_all[4][4],x_imag_all[4][4],x_real_all[4][20],x_imag_all[4][20],fac_real[8],fac_imag[8],signal_box[4*32+4],x_real_all[5][4],x_imag_all[5][4],x_real_all[5][20],x_imag_all[5][20],signal_box[5*32+4]); 
butterfly my4_5(clk,rstn,x_real_all[4][5],x_imag_all[4][5],x_real_all[4][21],x_imag_all[4][21],fac_real[10],fac_imag[10],signal_box[4*32+5],x_real_all[5][5],x_imag_all[5][5],x_real_all[5][21],x_imag_all[5][21],signal_box[5*32+5]); 
butterfly my4_6(clk,rstn,x_real_all[4][6],x_imag_all[4][6],x_real_all[4][22],x_imag_all[4][22],fac_real[12],fac_imag[12],signal_box[4*32+6],x_real_all[5][6],x_imag_all[5][6],x_real_all[5][22],x_imag_all[5][22],signal_box[5*32+6]); 
butterfly my4_7(clk,rstn,x_real_all[4][7],x_imag_all[4][7],x_real_all[4][23],x_imag_all[4][23],fac_real[14],fac_imag[14],signal_box[4*32+7],x_real_all[5][7],x_imag_all[5][7],x_real_all[5][23],x_imag_all[5][23],signal_box[5*32+7]); 
butterfly my4_8(clk,rstn,x_real_all[4][8],x_imag_all[4][8],x_real_all[4][24],x_imag_all[4][24],fac_real[16],fac_imag[16],signal_box[4*32+8],x_real_all[5][8],x_imag_all[5][8],x_real_all[5][24],x_imag_all[5][24],signal_box[5*32+8]); 
butterfly my4_9(clk,rstn,x_real_all[4][9],x_imag_all[4][9],x_real_all[4][25],x_imag_all[4][25],fac_real[18],fac_imag[18],signal_box[4*32+9],x_real_all[5][9],x_imag_all[5][9],x_real_all[5][25],x_imag_all[5][25],signal_box[5*32+9]); 
butterfly my4_10(clk,rstn,x_real_all[4][10],x_imag_all[4][10],x_real_all[4][26],x_imag_all[4][26],fac_real[20],fac_imag[20],signal_box[4*32+10],x_real_all[5][10],x_imag_all[5][10],x_real_all[5][26],x_imag_all[5][26],signal_box[5*32+10]); 
butterfly my4_11(clk,rstn,x_real_all[4][11],x_imag_all[4][11],x_real_all[4][27],x_imag_all[4][27],fac_real[22],fac_imag[22],signal_box[4*32+11],x_real_all[5][11],x_imag_all[5][11],x_real_all[5][27],x_imag_all[5][27],signal_box[5*32+11]); 
butterfly my4_12(clk,rstn,x_real_all[4][12],x_imag_all[4][12],x_real_all[4][28],x_imag_all[4][28],fac_real[24],fac_imag[24],signal_box[4*32+12],x_real_all[5][12],x_imag_all[5][12],x_real_all[5][28],x_imag_all[5][28],signal_box[5*32+12]); 
butterfly my4_13(clk,rstn,x_real_all[4][13],x_imag_all[4][13],x_real_all[4][29],x_imag_all[4][29],fac_real[26],fac_imag[26],signal_box[4*32+13],x_real_all[5][13],x_imag_all[5][13],x_real_all[5][29],x_imag_all[5][29],signal_box[5*32+13]); 
butterfly my4_14(clk,rstn,x_real_all[4][14],x_imag_all[4][14],x_real_all[4][30],x_imag_all[4][30],fac_real[28],fac_imag[28],signal_box[4*32+14],x_real_all[5][14],x_imag_all[5][14],x_real_all[5][30],x_imag_all[5][30],signal_box[5*32+14]); 
butterfly my4_15(clk,rstn,x_real_all[4][15],x_imag_all[4][15],x_real_all[4][31],x_imag_all[4][31],fac_real[30],fac_imag[30],signal_box[4*32+15],x_real_all[5][15],x_imag_all[5][15],x_real_all[5][31],x_imag_all[5][31],signal_box[5*32+15]); 
butterfly my4_32(clk,rstn,x_real_all[4][32],x_imag_all[4][32],x_real_all[4][48],x_imag_all[4][48],fac_real[0],fac_imag[0],signal_box[4*32+16],x_real_all[5][32],x_imag_all[5][32],x_real_all[5][48],x_imag_all[5][48],signal_box[5*32+16]); 
butterfly my4_33(clk,rstn,x_real_all[4][33],x_imag_all[4][33],x_real_all[4][49],x_imag_all[4][49],fac_real[2],fac_imag[2],signal_box[4*32+17],x_real_all[5][33],x_imag_all[5][33],x_real_all[5][49],x_imag_all[5][49],signal_box[5*32+17]); 
butterfly my4_34(clk,rstn,x_real_all[4][34],x_imag_all[4][34],x_real_all[4][50],x_imag_all[4][50],fac_real[4],fac_imag[4],signal_box[4*32+18],x_real_all[5][34],x_imag_all[5][34],x_real_all[5][50],x_imag_all[5][50],signal_box[5*32+18]); 
butterfly my4_35(clk,rstn,x_real_all[4][35],x_imag_all[4][35],x_real_all[4][51],x_imag_all[4][51],fac_real[6],fac_imag[6],signal_box[4*32+19],x_real_all[5][35],x_imag_all[5][35],x_real_all[5][51],x_imag_all[5][51],signal_box[5*32+19]); 
butterfly my4_36(clk,rstn,x_real_all[4][36],x_imag_all[4][36],x_real_all[4][52],x_imag_all[4][52],fac_real[8],fac_imag[8],signal_box[4*32+20],x_real_all[5][36],x_imag_all[5][36],x_real_all[5][52],x_imag_all[5][52],signal_box[5*32+20]); 
butterfly my4_37(clk,rstn,x_real_all[4][37],x_imag_all[4][37],x_real_all[4][53],x_imag_all[4][53],fac_real[10],fac_imag[10],signal_box[4*32+21],x_real_all[5][37],x_imag_all[5][37],x_real_all[5][53],x_imag_all[5][53],signal_box[5*32+21]); 
butterfly my4_38(clk,rstn,x_real_all[4][38],x_imag_all[4][38],x_real_all[4][54],x_imag_all[4][54],fac_real[12],fac_imag[12],signal_box[4*32+22],x_real_all[5][38],x_imag_all[5][38],x_real_all[5][54],x_imag_all[5][54],signal_box[5*32+22]); 
butterfly my4_39(clk,rstn,x_real_all[4][39],x_imag_all[4][39],x_real_all[4][55],x_imag_all[4][55],fac_real[14],fac_imag[14],signal_box[4*32+23],x_real_all[5][39],x_imag_all[5][39],x_real_all[5][55],x_imag_all[5][55],signal_box[5*32+23]); 
butterfly my4_40(clk,rstn,x_real_all[4][40],x_imag_all[4][40],x_real_all[4][56],x_imag_all[4][56],fac_real[16],fac_imag[16],signal_box[4*32+24],x_real_all[5][40],x_imag_all[5][40],x_real_all[5][56],x_imag_all[5][56],signal_box[5*32+24]); 
butterfly my4_41(clk,rstn,x_real_all[4][41],x_imag_all[4][41],x_real_all[4][57],x_imag_all[4][57],fac_real[18],fac_imag[18],signal_box[4*32+25],x_real_all[5][41],x_imag_all[5][41],x_real_all[5][57],x_imag_all[5][57],signal_box[5*32+25]); 
butterfly my4_42(clk,rstn,x_real_all[4][42],x_imag_all[4][42],x_real_all[4][58],x_imag_all[4][58],fac_real[20],fac_imag[20],signal_box[4*32+26],x_real_all[5][42],x_imag_all[5][42],x_real_all[5][58],x_imag_all[5][58],signal_box[5*32+26]); 
butterfly my4_43(clk,rstn,x_real_all[4][43],x_imag_all[4][43],x_real_all[4][59],x_imag_all[4][59],fac_real[22],fac_imag[22],signal_box[4*32+27],x_real_all[5][43],x_imag_all[5][43],x_real_all[5][59],x_imag_all[5][59],signal_box[5*32+27]); 
butterfly my4_44(clk,rstn,x_real_all[4][44],x_imag_all[4][44],x_real_all[4][60],x_imag_all[4][60],fac_real[24],fac_imag[24],signal_box[4*32+28],x_real_all[5][44],x_imag_all[5][44],x_real_all[5][60],x_imag_all[5][60],signal_box[5*32+28]); 
butterfly my4_45(clk,rstn,x_real_all[4][45],x_imag_all[4][45],x_real_all[4][61],x_imag_all[4][61],fac_real[26],fac_imag[26],signal_box[4*32+29],x_real_all[5][45],x_imag_all[5][45],x_real_all[5][61],x_imag_all[5][61],signal_box[5*32+29]); 
butterfly my4_46(clk,rstn,x_real_all[4][46],x_imag_all[4][46],x_real_all[4][62],x_imag_all[4][62],fac_real[28],fac_imag[28],signal_box[4*32+30],x_real_all[5][46],x_imag_all[5][46],x_real_all[5][62],x_imag_all[5][62],signal_box[5*32+30]); 
butterfly my4_47(clk,rstn,x_real_all[4][47],x_imag_all[4][47],x_real_all[4][63],x_imag_all[4][63],fac_real[30],fac_imag[30],signal_box[4*32+31],x_real_all[5][47],x_imag_all[5][47],x_real_all[5][63],x_imag_all[5][63],signal_box[5*32+31]); 

//阶段6
butterfly my5_0(clk,rstn,x_real_all[5][0],x_imag_all[5][0],x_real_all[5][32],x_imag_all[5][32],fac_real[0],fac_imag[0],signal_box[5*32+0],x_real_all[6][0],x_imag_all[6][0],x_real_all[6][32],x_imag_all[6][32],signal_box[6*32+0]); 
butterfly my5_1(clk,rstn,x_real_all[5][1],x_imag_all[5][1],x_real_all[5][33],x_imag_all[5][33],fac_real[1],fac_imag[1],signal_box[5*32+1],x_real_all[6][1],x_imag_all[6][1],x_real_all[6][33],x_imag_all[6][33],signal_box[6*32+1]); 
butterfly my5_2(clk,rstn,x_real_all[5][2],x_imag_all[5][2],x_real_all[5][34],x_imag_all[5][34],fac_real[2],fac_imag[2],signal_box[5*32+2],x_real_all[6][2],x_imag_all[6][2],x_real_all[6][34],x_imag_all[6][34],signal_box[6*32+2]); 
butterfly my5_3(clk,rstn,x_real_all[5][3],x_imag_all[5][3],x_real_all[5][35],x_imag_all[5][35],fac_real[3],fac_imag[3],signal_box[5*32+3],x_real_all[6][3],x_imag_all[6][3],x_real_all[6][35],x_imag_all[6][35],signal_box[6*32+3]); 
butterfly my5_4(clk,rstn,x_real_all[5][4],x_imag_all[5][4],x_real_all[5][36],x_imag_all[5][36],fac_real[4],fac_imag[4],signal_box[5*32+4],x_real_all[6][4],x_imag_all[6][4],x_real_all[6][36],x_imag_all[6][36],signal_box[6*32+4]); 
butterfly my5_5(clk,rstn,x_real_all[5][5],x_imag_all[5][5],x_real_all[5][37],x_imag_all[5][37],fac_real[5],fac_imag[5],signal_box[5*32+5],x_real_all[6][5],x_imag_all[6][5],x_real_all[6][37],x_imag_all[6][37],signal_box[6*32+5]); 
butterfly my5_6(clk,rstn,x_real_all[5][6],x_imag_all[5][6],x_real_all[5][38],x_imag_all[5][38],fac_real[6],fac_imag[6],signal_box[5*32+6],x_real_all[6][6],x_imag_all[6][6],x_real_all[6][38],x_imag_all[6][38],signal_box[6*32+6]); 
butterfly my5_7(clk,rstn,x_real_all[5][7],x_imag_all[5][7],x_real_all[5][39],x_imag_all[5][39],fac_real[7],fac_imag[7],signal_box[5*32+7],x_real_all[6][7],x_imag_all[6][7],x_real_all[6][39],x_imag_all[6][39],signal_box[6*32+7]); 
butterfly my5_8(clk,rstn,x_real_all[5][8],x_imag_all[5][8],x_real_all[5][40],x_imag_all[5][40],fac_real[8],fac_imag[8],signal_box[5*32+8],x_real_all[6][8],x_imag_all[6][8],x_real_all[6][40],x_imag_all[6][40],signal_box[6*32+8]); 
butterfly my5_9(clk,rstn,x_real_all[5][9],x_imag_all[5][9],x_real_all[5][41],x_imag_all[5][41],fac_real[9],fac_imag[9],signal_box[5*32+9],x_real_all[6][9],x_imag_all[6][9],x_real_all[6][41],x_imag_all[6][41],signal_box[6*32+9]); 
butterfly my5_10(clk,rstn,x_real_all[5][10],x_imag_all[5][10],x_real_all[5][42],x_imag_all[5][42],fac_real[10],fac_imag[10],signal_box[5*32+10],x_real_all[6][10],x_imag_all[6][10],x_real_all[6][42],x_imag_all[6][42],signal_box[6*32+10]); 
butterfly my5_11(clk,rstn,x_real_all[5][11],x_imag_all[5][11],x_real_all[5][43],x_imag_all[5][43],fac_real[11],fac_imag[11],signal_box[5*32+11],x_real_all[6][11],x_imag_all[6][11],x_real_all[6][43],x_imag_all[6][43],signal_box[6*32+11]); 
butterfly my5_12(clk,rstn,x_real_all[5][12],x_imag_all[5][12],x_real_all[5][44],x_imag_all[5][44],fac_real[12],fac_imag[12],signal_box[5*32+12],x_real_all[6][12],x_imag_all[6][12],x_real_all[6][44],x_imag_all[6][44],signal_box[6*32+12]); 
butterfly my5_13(clk,rstn,x_real_all[5][13],x_imag_all[5][13],x_real_all[5][45],x_imag_all[5][45],fac_real[13],fac_imag[13],signal_box[5*32+13],x_real_all[6][13],x_imag_all[6][13],x_real_all[6][45],x_imag_all[6][45],signal_box[6*32+13]); 
butterfly my5_14(clk,rstn,x_real_all[5][14],x_imag_all[5][14],x_real_all[5][46],x_imag_all[5][46],fac_real[14],fac_imag[14],signal_box[5*32+14],x_real_all[6][14],x_imag_all[6][14],x_real_all[6][46],x_imag_all[6][46],signal_box[6*32+14]); 
butterfly my5_15(clk,rstn,x_real_all[5][15],x_imag_all[5][15],x_real_all[5][47],x_imag_all[5][47],fac_real[15],fac_imag[15],signal_box[5*32+15],x_real_all[6][15],x_imag_all[6][15],x_real_all[6][47],x_imag_all[6][47],signal_box[6*32+15]); 
butterfly my5_16(clk,rstn,x_real_all[5][16],x_imag_all[5][16],x_real_all[5][48],x_imag_all[5][48],fac_real[16],fac_imag[16],signal_box[5*32+16],x_real_all[6][16],x_imag_all[6][16],x_real_all[6][48],x_imag_all[6][48],signal_box[6*32+16]); 
butterfly my5_17(clk,rstn,x_real_all[5][17],x_imag_all[5][17],x_real_all[5][49],x_imag_all[5][49],fac_real[17],fac_imag[17],signal_box[5*32+17],x_real_all[6][17],x_imag_all[6][17],x_real_all[6][49],x_imag_all[6][49],signal_box[6*32+17]); 
butterfly my5_18(clk,rstn,x_real_all[5][18],x_imag_all[5][18],x_real_all[5][50],x_imag_all[5][50],fac_real[18],fac_imag[18],signal_box[5*32+18],x_real_all[6][18],x_imag_all[6][18],x_real_all[6][50],x_imag_all[6][50],signal_box[6*32+18]); 
butterfly my5_19(clk,rstn,x_real_all[5][19],x_imag_all[5][19],x_real_all[5][51],x_imag_all[5][51],fac_real[19],fac_imag[19],signal_box[5*32+19],x_real_all[6][19],x_imag_all[6][19],x_real_all[6][51],x_imag_all[6][51],signal_box[6*32+19]); 
butterfly my5_20(clk,rstn,x_real_all[5][20],x_imag_all[5][20],x_real_all[5][52],x_imag_all[5][52],fac_real[20],fac_imag[20],signal_box[5*32+20],x_real_all[6][20],x_imag_all[6][20],x_real_all[6][52],x_imag_all[6][52],signal_box[6*32+20]); 
butterfly my5_21(clk,rstn,x_real_all[5][21],x_imag_all[5][21],x_real_all[5][53],x_imag_all[5][53],fac_real[21],fac_imag[21],signal_box[5*32+21],x_real_all[6][21],x_imag_all[6][21],x_real_all[6][53],x_imag_all[6][53],signal_box[6*32+21]); 
butterfly my5_22(clk,rstn,x_real_all[5][22],x_imag_all[5][22],x_real_all[5][54],x_imag_all[5][54],fac_real[22],fac_imag[22],signal_box[5*32+22],x_real_all[6][22],x_imag_all[6][22],x_real_all[6][54],x_imag_all[6][54],signal_box[6*32+22]); 
butterfly my5_23(clk,rstn,x_real_all[5][23],x_imag_all[5][23],x_real_all[5][55],x_imag_all[5][55],fac_real[23],fac_imag[23],signal_box[5*32+23],x_real_all[6][23],x_imag_all[6][23],x_real_all[6][55],x_imag_all[6][55],signal_box[6*32+23]); 
butterfly my5_24(clk,rstn,x_real_all[5][24],x_imag_all[5][24],x_real_all[5][56],x_imag_all[5][56],fac_real[24],fac_imag[24],signal_box[5*32+24],x_real_all[6][24],x_imag_all[6][24],x_real_all[6][56],x_imag_all[6][56],signal_box[6*32+24]); 
butterfly my5_25(clk,rstn,x_real_all[5][25],x_imag_all[5][25],x_real_all[5][57],x_imag_all[5][57],fac_real[25],fac_imag[25],signal_box[5*32+25],x_real_all[6][25],x_imag_all[6][25],x_real_all[6][57],x_imag_all[6][57],signal_box[6*32+25]); 
butterfly my5_26(clk,rstn,x_real_all[5][26],x_imag_all[5][26],x_real_all[5][58],x_imag_all[5][58],fac_real[26],fac_imag[26],signal_box[5*32+26],x_real_all[6][26],x_imag_all[6][26],x_real_all[6][58],x_imag_all[6][58],signal_box[6*32+26]); 
butterfly my5_27(clk,rstn,x_real_all[5][27],x_imag_all[5][27],x_real_all[5][59],x_imag_all[5][59],fac_real[27],fac_imag[27],signal_box[5*32+27],x_real_all[6][27],x_imag_all[6][27],x_real_all[6][59],x_imag_all[6][59],signal_box[6*32+27]); 
butterfly my5_28(clk,rstn,x_real_all[5][28],x_imag_all[5][28],x_real_all[5][60],x_imag_all[5][60],fac_real[28],fac_imag[28],signal_box[5*32+28],x_real_all[6][28],x_imag_all[6][28],x_real_all[6][60],x_imag_all[6][60],signal_box[6*32+28]); 
butterfly my5_29(clk,rstn,x_real_all[5][29],x_imag_all[5][29],x_real_all[5][61],x_imag_all[5][61],fac_real[29],fac_imag[29],signal_box[5*32+29],x_real_all[6][29],x_imag_all[6][29],x_real_all[6][61],x_imag_all[6][61],signal_box[6*32+29]); 
butterfly my5_30(clk,rstn,x_real_all[5][30],x_imag_all[5][30],x_real_all[5][62],x_imag_all[5][62],fac_real[30],fac_imag[30],signal_box[5*32+30],x_real_all[6][30],x_imag_all[6][30],x_real_all[6][62],x_imag_all[6][62],signal_box[6*32+30]); 
butterfly my5_31(clk,rstn,x_real_all[5][31],x_imag_all[5][31],x_real_all[5][63],x_imag_all[5][63],fac_real[31],fac_imag[31],signal_box[5*32+31],x_real_all[6][31],x_imag_all[6][31],x_real_all[6][63],x_imag_all[6][63],signal_box[6*32+31]); 

 
 assign output_signal = signal_box[192];
 assign y_real_0 = x_real_all [6] [0];  assign y_imag_0 = x_imag_all [6] [0]; 
 assign y_real_1 = x_real_all [6] [1];  assign y_imag_1 = x_imag_all [6] [1]; 
 assign y_real_2 = x_real_all [6] [2];  assign y_imag_2 = x_imag_all [6] [2]; 
 assign y_real_3 = x_real_all [6] [3];  assign y_imag_3 = x_imag_all [6] [3]; 
 assign y_real_4 = x_real_all [6] [4];  assign y_imag_4 = x_imag_all [6] [4]; 
 assign y_real_5 = x_real_all [6] [5];  assign y_imag_5 = x_imag_all [6] [5]; 
 assign y_real_6 = x_real_all [6] [6];  assign y_imag_6 = x_imag_all [6] [6]; 
 assign y_real_7 = x_real_all [6] [7];  assign y_imag_7 = x_imag_all [6] [7]; 
 assign y_real_8 = x_real_all [6] [8];  assign y_imag_8 = x_imag_all [6] [8]; 
 assign y_real_9 = x_real_all [6] [9];  assign y_imag_9 = x_imag_all [6] [9]; 
 assign y_real_10 = x_real_all [6] [10];  assign y_imag_10 = x_imag_all [6] [10]; 
 assign y_real_11 = x_real_all [6] [11];  assign y_imag_11 = x_imag_all [6] [11]; 
 assign y_real_12 = x_real_all [6] [12];  assign y_imag_12 = x_imag_all [6] [12]; 
 assign y_real_13 = x_real_all [6] [13];  assign y_imag_13 = x_imag_all [6] [13]; 
 assign y_real_14 = x_real_all [6] [14];  assign y_imag_14 = x_imag_all [6] [14]; 
 assign y_real_15 = x_real_all [6] [15];  assign y_imag_15 = x_imag_all [6] [15]; 
 assign y_real_16 = x_real_all [6] [16];  assign y_imag_16 = x_imag_all [6] [16]; 
 assign y_real_17 = x_real_all [6] [17];  assign y_imag_17 = x_imag_all [6] [17]; 
 assign y_real_18 = x_real_all [6] [18];  assign y_imag_18 = x_imag_all [6] [18]; 
 assign y_real_19 = x_real_all [6] [19];  assign y_imag_19 = x_imag_all [6] [19]; 
 assign y_real_20 = x_real_all [6] [20];  assign y_imag_20 = x_imag_all [6] [20]; 
 assign y_real_21 = x_real_all [6] [21];  assign y_imag_21 = x_imag_all [6] [21]; 
 assign y_real_22 = x_real_all [6] [22];  assign y_imag_22 = x_imag_all [6] [22]; 
 assign y_real_23 = x_real_all [6] [23];  assign y_imag_23 = x_imag_all [6] [23]; 
 assign y_real_24 = x_real_all [6] [24];  assign y_imag_24 = x_imag_all [6] [24]; 
 assign y_real_25 = x_real_all [6] [25];  assign y_imag_25 = x_imag_all [6] [25]; 
 assign y_real_26 = x_real_all [6] [26];  assign y_imag_26 = x_imag_all [6] [26]; 
 assign y_real_27 = x_real_all [6] [27];  assign y_imag_27 = x_imag_all [6] [27]; 
 assign y_real_28 = x_real_all [6] [28];  assign y_imag_28 = x_imag_all [6] [28]; 
 assign y_real_29 = x_real_all [6] [29];  assign y_imag_29 = x_imag_all [6] [29]; 
 assign y_real_30 = x_real_all [6] [30];  assign y_imag_30 = x_imag_all [6] [30]; 
 assign y_real_31 = x_real_all [6] [31];  assign y_imag_31 = x_imag_all [6] [31]; 
 assign y_real_32 = x_real_all [6] [32];  assign y_imag_32 = x_imag_all [6] [32]; 
 assign y_real_33 = x_real_all [6] [33];  assign y_imag_33 = x_imag_all [6] [33]; 
 assign y_real_34 = x_real_all [6] [34];  assign y_imag_34 = x_imag_all [6] [34]; 
 assign y_real_35 = x_real_all [6] [35];  assign y_imag_35 = x_imag_all [6] [35]; 
 assign y_real_36 = x_real_all [6] [36];  assign y_imag_36 = x_imag_all [6] [36]; 
 assign y_real_37 = x_real_all [6] [37];  assign y_imag_37 = x_imag_all [6] [37]; 
 assign y_real_38 = x_real_all [6] [38];  assign y_imag_38 = x_imag_all [6] [38]; 
 assign y_real_39 = x_real_all [6] [39];  assign y_imag_39 = x_imag_all [6] [39]; 
 assign y_real_40 = x_real_all [6] [40];  assign y_imag_40 = x_imag_all [6] [40]; 
 assign y_real_41 = x_real_all [6] [41];  assign y_imag_41 = x_imag_all [6] [41]; 
 assign y_real_42 = x_real_all [6] [42];  assign y_imag_42 = x_imag_all [6] [42]; 
 assign y_real_43 = x_real_all [6] [43];  assign y_imag_43 = x_imag_all [6] [43]; 
 assign y_real_44 = x_real_all [6] [44];  assign y_imag_44 = x_imag_all [6] [44]; 
 assign y_real_45 = x_real_all [6] [45];  assign y_imag_45 = x_imag_all [6] [45]; 
 assign y_real_46 = x_real_all [6] [46];  assign y_imag_46 = x_imag_all [6] [46]; 
 assign y_real_47 = x_real_all [6] [47];  assign y_imag_47 = x_imag_all [6] [47]; 
 assign y_real_48 = x_real_all [6] [48];  assign y_imag_48 = x_imag_all [6] [48]; 
 assign y_real_49 = x_real_all [6] [49];  assign y_imag_49 = x_imag_all [6] [49]; 
 assign y_real_50 = x_real_all [6] [50];  assign y_imag_50 = x_imag_all [6] [50]; 
 assign y_real_51 = x_real_all [6] [51];  assign y_imag_51 = x_imag_all [6] [51]; 
 assign y_real_52 = x_real_all [6] [52];  assign y_imag_52 = x_imag_all [6] [52]; 
 assign y_real_53 = x_real_all [6] [53];  assign y_imag_53 = x_imag_all [6] [53]; 
 assign y_real_54 = x_real_all [6] [54];  assign y_imag_54 = x_imag_all [6] [54]; 
 assign y_real_55 = x_real_all [6] [55];  assign y_imag_55 = x_imag_all [6] [55]; 
 assign y_real_56 = x_real_all [6] [56];  assign y_imag_56 = x_imag_all [6] [56]; 
 assign y_real_57 = x_real_all [6] [57];  assign y_imag_57 = x_imag_all [6] [57]; 
 assign y_real_58 = x_real_all [6] [58];  assign y_imag_58 = x_imag_all [6] [58]; 
 assign y_real_59 = x_real_all [6] [59];  assign y_imag_59 = x_imag_all [6] [59]; 
 assign y_real_60 = x_real_all [6] [60];  assign y_imag_60 = x_imag_all [6] [60]; 
 assign y_real_61 = x_real_all [6] [61];  assign y_imag_61 = x_imag_all [6] [61]; 
 assign y_real_62 = x_real_all [6] [62];  assign y_imag_62 = x_imag_all [6] [62]; 
 assign y_real_63 = x_real_all [6] [63];  assign y_imag_63 = x_imag_all [6] [63]; 

endmodule
