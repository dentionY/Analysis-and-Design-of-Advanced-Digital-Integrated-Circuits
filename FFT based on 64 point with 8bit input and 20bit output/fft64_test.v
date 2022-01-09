`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/20 20:42:32
// Design Name: 
// Module Name: fft64_test
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


module fft64_test();
 reg clk;
 reg rstn;
 reg input_signal;
 reg signed [7:0] x_real_0; reg signed [7:0] x_imag_0;
 reg signed [7:0] x_real_1; reg signed [7:0] x_imag_1;
 reg signed [7:0] x_real_2; reg signed [7:0] x_imag_2;
 reg signed [7:0] x_real_3; reg signed [7:0] x_imag_3;
 reg signed [7:0] x_real_4; reg signed [7:0] x_imag_4;
 reg signed [7:0] x_real_5; reg signed [7:0] x_imag_5;
 reg signed [7:0] x_real_6; reg signed [7:0] x_imag_6;
 reg signed [7:0] x_real_7; reg signed [7:0] x_imag_7;
 reg signed [7:0] x_real_8; reg signed [7:0] x_imag_8;
 reg signed [7:0] x_real_9; reg signed [7:0] x_imag_9;
 reg signed [7:0] x_real_10; reg signed [7:0] x_imag_10;
 reg signed [7:0] x_real_11; reg signed [7:0] x_imag_11;
 reg signed [7:0] x_real_12; reg signed [7:0] x_imag_12;
 reg signed [7:0] x_real_13; reg signed [7:0] x_imag_13;
 reg signed [7:0] x_real_14; reg signed [7:0] x_imag_14;
 reg signed [7:0] x_real_15; reg signed [7:0] x_imag_15;
 reg signed [7:0] x_real_16; reg signed [7:0] x_imag_16;
 reg signed [7:0] x_real_17; reg signed [7:0] x_imag_17;
 reg signed [7:0] x_real_18; reg signed [7:0] x_imag_18;
 reg signed [7:0] x_real_19; reg signed [7:0] x_imag_19;
 reg signed [7:0] x_real_20; reg signed [7:0] x_imag_20;
 reg signed [7:0] x_real_21; reg signed [7:0] x_imag_21;
 reg signed [7:0] x_real_22; reg signed [7:0] x_imag_22;
 reg signed [7:0] x_real_23; reg signed [7:0] x_imag_23;
 reg signed [7:0] x_real_24; reg signed [7:0] x_imag_24;
 reg signed [7:0] x_real_25; reg signed [7:0] x_imag_25;
 reg signed [7:0] x_real_26; reg signed [7:0] x_imag_26;
 reg signed [7:0] x_real_27; reg signed [7:0] x_imag_27;
 reg signed [7:0] x_real_28; reg signed [7:0] x_imag_28;
 reg signed [7:0] x_real_29; reg signed [7:0] x_imag_29;
 reg signed [7:0] x_real_30; reg signed [7:0] x_imag_30;
 reg signed [7:0] x_real_31; reg signed [7:0] x_imag_31;
 reg signed [7:0] x_real_32; reg signed [7:0] x_imag_32;
 reg signed [7:0] x_real_33; reg signed [7:0] x_imag_33;
 reg signed [7:0] x_real_34; reg signed [7:0] x_imag_34;
 reg signed [7:0] x_real_35; reg signed [7:0] x_imag_35;
 reg signed [7:0] x_real_36; reg signed [7:0] x_imag_36;
 reg signed [7:0] x_real_37; reg signed [7:0] x_imag_37;
 reg signed [7:0] x_real_38; reg signed [7:0] x_imag_38;
 reg signed [7:0] x_real_39; reg signed [7:0] x_imag_39;
 reg signed [7:0] x_real_40; reg signed [7:0] x_imag_40;
 reg signed [7:0] x_real_41; reg signed [7:0] x_imag_41;
 reg signed [7:0] x_real_42; reg signed [7:0] x_imag_42;
 reg signed [7:0] x_real_43; reg signed [7:0] x_imag_43;
 reg signed [7:0] x_real_44; reg signed [7:0] x_imag_44;
 reg signed [7:0] x_real_45; reg signed [7:0] x_imag_45;
 reg signed [7:0] x_real_46; reg signed [7:0] x_imag_46;
 reg signed [7:0] x_real_47; reg signed [7:0] x_imag_47;
 reg signed [7:0] x_real_48; reg signed [7:0] x_imag_48;
 reg signed [7:0] x_real_49; reg signed [7:0] x_imag_49;
 reg signed [7:0] x_real_50; reg signed [7:0] x_imag_50;
 reg signed [7:0] x_real_51; reg signed [7:0] x_imag_51;
 reg signed [7:0] x_real_52; reg signed [7:0] x_imag_52;
 reg signed [7:0] x_real_53; reg signed [7:0] x_imag_53;
 reg signed [7:0] x_real_54; reg signed [7:0] x_imag_54;
 reg signed [7:0] x_real_55; reg signed [7:0] x_imag_55;
 reg signed [7:0] x_real_56; reg signed [7:0] x_imag_56;
 reg signed [7:0] x_real_57; reg signed [7:0] x_imag_57;
 reg signed [7:0] x_real_58; reg signed [7:0] x_imag_58;
 reg signed [7:0] x_real_59; reg signed [7:0] x_imag_59;
 reg signed [7:0] x_real_60; reg signed [7:0] x_imag_60;
 reg signed [7:0] x_real_61; reg signed [7:0] x_imag_61;
 reg signed [7:0] x_real_62; reg signed [7:0] x_imag_62;
 reg signed [7:0] x_real_63; reg signed [7:0] x_imag_63;

 wire signed [19:0] y_real_0; wire signed [19:0] y_imag_0;
 wire signed [19:0] y_real_1; wire signed [19:0] y_imag_1;
 wire signed [19:0] y_real_2; wire signed [19:0] y_imag_2;
 wire signed [19:0] y_real_3; wire signed [19:0] y_imag_3;
 wire signed [19:0] y_real_4; wire signed [19:0] y_imag_4;
 wire signed [19:0] y_real_5; wire signed [19:0] y_imag_5;
 wire signed [19:0] y_real_6; wire signed [19:0] y_imag_6;
 wire signed [19:0] y_real_7; wire signed [19:0] y_imag_7;
 wire signed [19:0] y_real_8; wire signed [19:0] y_imag_8;
 wire signed [19:0] y_real_9; wire signed [19:0] y_imag_9;
 wire signed [19:0] y_real_10; wire signed [19:0] y_imag_10;
 wire signed [19:0] y_real_11; wire signed [19:0] y_imag_11;
 wire signed [19:0] y_real_12; wire signed [19:0] y_imag_12;
 wire signed [19:0] y_real_13; wire signed [19:0] y_imag_13;
 wire signed [19:0] y_real_14; wire signed [19:0] y_imag_14;
 wire signed [19:0] y_real_15; wire signed [19:0] y_imag_15;
 wire signed [19:0] y_real_16; wire signed [19:0] y_imag_16;
 wire signed [19:0] y_real_17; wire signed [19:0] y_imag_17;
 wire signed [19:0] y_real_18; wire signed [19:0] y_imag_18;
 wire signed [19:0] y_real_19; wire signed [19:0] y_imag_19;
 wire signed [19:0] y_real_20; wire signed [19:0] y_imag_20;
 wire signed [19:0] y_real_21; wire signed [19:0] y_imag_21;
 wire signed [19:0] y_real_22; wire signed [19:0] y_imag_22;
 wire signed [19:0] y_real_23; wire signed [19:0] y_imag_23;
 wire signed [19:0] y_real_24; wire signed [19:0] y_imag_24;
 wire signed [19:0] y_real_25; wire signed [19:0] y_imag_25;
 wire signed [19:0] y_real_26; wire signed [19:0] y_imag_26;
 wire signed [19:0] y_real_27; wire signed [19:0] y_imag_27;
 wire signed [19:0] y_real_28; wire signed [19:0] y_imag_28;
 wire signed [19:0] y_real_29; wire signed [19:0] y_imag_29;
 wire signed [19:0] y_real_30; wire signed [19:0] y_imag_30;
 wire signed [19:0] y_real_31; wire signed [19:0] y_imag_31;
 wire signed [19:0] y_real_32; wire signed [19:0] y_imag_32;
 wire signed [19:0] y_real_33; wire signed [19:0] y_imag_33;
 wire signed [19:0] y_real_34; wire signed [19:0] y_imag_34;
 wire signed [19:0] y_real_35; wire signed [19:0] y_imag_35;
 wire signed [19:0] y_real_36; wire signed [19:0] y_imag_36;
 wire signed [19:0] y_real_37; wire signed [19:0] y_imag_37;
 wire signed [19:0] y_real_38; wire signed [19:0] y_imag_38;
 wire signed [19:0] y_real_39; wire signed [19:0] y_imag_39;
 wire signed [19:0] y_real_40; wire signed [19:0] y_imag_40;
 wire signed [19:0] y_real_41; wire signed [19:0] y_imag_41;
 wire signed [19:0] y_real_42; wire signed [19:0] y_imag_42;
 wire signed [19:0] y_real_43; wire signed [19:0] y_imag_43;
 wire signed [19:0] y_real_44; wire signed [19:0] y_imag_44;
 wire signed [19:0] y_real_45; wire signed [19:0] y_imag_45;
 wire signed [19:0] y_real_46; wire signed [19:0] y_imag_46;
 wire signed [19:0] y_real_47; wire signed [19:0] y_imag_47;
 wire signed [19:0] y_real_48; wire signed [19:0] y_imag_48;
 wire signed [19:0] y_real_49; wire signed [19:0] y_imag_49;
 wire signed [19:0] y_real_50; wire signed [19:0] y_imag_50;
 wire signed [19:0] y_real_51; wire signed [19:0] y_imag_51;
 wire signed [19:0] y_real_52; wire signed [19:0] y_imag_52;
 wire signed [19:0] y_real_53; wire signed [19:0] y_imag_53;
 wire signed [19:0] y_real_54; wire signed [19:0] y_imag_54;
 wire signed [19:0] y_real_55; wire signed [19:0] y_imag_55;
 wire signed [19:0] y_real_56; wire signed [19:0] y_imag_56;
 wire signed [19:0] y_real_57; wire signed [19:0] y_imag_57;
 wire signed [19:0] y_real_58; wire signed [19:0] y_imag_58;
 wire signed [19:0] y_real_59; wire signed [19:0] y_imag_59;
 wire signed [19:0] y_real_60; wire signed [19:0] y_imag_60;
 wire signed [19:0] y_real_61; wire signed [19:0] y_imag_61;
 wire signed [19:0] y_real_62; wire signed [19:0] y_imag_62;
 wire signed [19:0] y_real_63; wire signed [19:0] y_imag_63;
 wire output_signal;

 
 fft64 myfft64(clk,rstn,input_signal,
 x_real_0, x_imag_0, x_real_1, x_imag_1, x_real_2, x_imag_2, x_real_3, x_imag_3,
 x_real_4, x_imag_4, x_real_5, x_imag_5, x_real_6, x_imag_6, x_real_7, x_imag_7,
 x_real_8, x_imag_8, x_real_9, x_imag_9, x_real_10, x_imag_10, x_real_11, x_imag_11,
 x_real_12, x_imag_12, x_real_13, x_imag_13, x_real_14, x_imag_14, x_real_15, x_imag_15,
 x_real_16, x_imag_16, x_real_17, x_imag_17, x_real_18, x_imag_18, x_real_19, x_imag_19,
 x_real_20, x_imag_20, x_real_21, x_imag_21, x_real_22, x_imag_22, x_real_23, x_imag_23,
 x_real_24, x_imag_24, x_real_25, x_imag_25, x_real_26, x_imag_26, x_real_27, x_imag_27,
 x_real_28, x_imag_28, x_real_29, x_imag_29, x_real_30, x_imag_30, x_real_31, x_imag_31,
 x_real_32, x_imag_32, x_real_33, x_imag_33, x_real_34, x_imag_34, x_real_35, x_imag_35,
 x_real_36, x_imag_36, x_real_37, x_imag_37, x_real_38, x_imag_38, x_real_39, x_imag_39,
 x_real_40, x_imag_40, x_real_41, x_imag_41, x_real_42, x_imag_42, x_real_43, x_imag_43,
 x_real_44, x_imag_44, x_real_45, x_imag_45, x_real_46, x_imag_46, x_real_47, x_imag_47,
 x_real_48, x_imag_48, x_real_49, x_imag_49, x_real_50, x_imag_50, x_real_51, x_imag_51,
 x_real_52, x_imag_52, x_real_53, x_imag_53, x_real_54, x_imag_54, x_real_55, x_imag_55,
 x_real_56, x_imag_56, x_real_57, x_imag_57, x_real_58, x_imag_58, x_real_59, x_imag_59,
 x_real_60, x_imag_60, x_real_61, x_imag_61, x_real_62, x_imag_62, x_real_63, x_imag_63,
 y_real_0, y_imag_0, y_real_1, y_imag_1, y_real_2, y_imag_2, y_real_3, y_imag_3,
 y_real_4, y_imag_4, y_real_5, y_imag_5, y_real_6, y_imag_6, y_real_7, y_imag_7,
 y_real_8, y_imag_8, y_real_9, y_imag_9, y_real_10, y_imag_10, y_real_11, y_imag_11,
 y_real_12, y_imag_12, y_real_13, y_imag_13, y_real_14, y_imag_14, y_real_15, y_imag_15,
 y_real_16, y_imag_16, y_real_17, y_imag_17, y_real_18, y_imag_18, y_real_19, y_imag_19,
 y_real_20, y_imag_20, y_real_21, y_imag_21, y_real_22, y_imag_22, y_real_23, y_imag_23,
 y_real_24, y_imag_24, y_real_25, y_imag_25, y_real_26, y_imag_26, y_real_27, y_imag_27,
 y_real_28, y_imag_28, y_real_29, y_imag_29, y_real_30, y_imag_30, y_real_31, y_imag_31,
 y_real_32, y_imag_32, y_real_33, y_imag_33, y_real_34, y_imag_34, y_real_35, y_imag_35,
 y_real_36, y_imag_36, y_real_37, y_imag_37, y_real_38, y_imag_38, y_real_39, y_imag_39,
 y_real_40, y_imag_40, y_real_41, y_imag_41, y_real_42, y_imag_42, y_real_43, y_imag_43,
 y_real_44, y_imag_44, y_real_45, y_imag_45, y_real_46, y_imag_46, y_real_47, y_imag_47,
 y_real_48, y_imag_48, y_real_49, y_imag_49, y_real_50, y_imag_50, y_real_51, y_imag_51,
 y_real_52, y_imag_52, y_real_53, y_imag_53, y_real_54, y_imag_54, y_real_55, y_imag_55,
 y_real_56, y_imag_56, y_real_57, y_imag_57, y_real_58, y_imag_58, y_real_59, y_imag_59,
 y_real_60, y_imag_60, y_real_61, y_imag_61, y_real_62, y_imag_62, y_real_63, y_imag_63,
 output_signal
 );
 
    initial begin
        clk = 0; //50MHz
        rstn = 0 ;
        #15 rstn = 1;
        forever begin
            #15 clk = ~clk; //50MHz
        end
    end
	
 initial begin
   input_signal = 0;
   x_real_0 = 8'd1;    x_imag_0 = 8'd1; 
   x_real_1 = 8'd2;    x_imag_1 = 8'd2; 
   x_real_2 = 8'd3;    x_imag_2 = 8'd1; 
   x_real_3 = 8'd4;    x_imag_3 = 8'd2; 
   x_real_4 = 8'd5;    x_imag_4 = 8'd1; 
   x_real_5 = 8'd1;    x_imag_5 = 8'd2; 
   x_real_6 = 8'd2;    x_imag_6 = 8'd1; 
   x_real_7 = 8'd3;    x_imag_7 = 8'd2; 
   x_real_8 = 8'd4;    x_imag_8 = 8'd1; 
   x_real_9 = 8'd5;    x_imag_9 = 8'd2; 
   x_real_10 = 8'd1;    x_imag_10 = 8'd1; 
   x_real_11 = 8'd2;    x_imag_11 = 8'd2; 
   x_real_12 = 8'd3;    x_imag_12 = 8'd1; 
   x_real_13 = 8'd4;    x_imag_13 = 8'd2; 
   x_real_14 = 8'd5;    x_imag_14 = 8'd1; 
   x_real_15 = 8'd1;    x_imag_15 = 8'd2; 
   x_real_16 = 8'd2;    x_imag_16 = 8'd1; 
   x_real_17 = 8'd3;    x_imag_17 = 8'd2; 
   x_real_18 = 8'd4;    x_imag_18 = 8'd1; 
   x_real_19 = 8'd5;    x_imag_19 = 8'd2; 
   x_real_20 = 8'd1;    x_imag_20 = 8'd1; 
   x_real_21 = 8'd2;    x_imag_21 = 8'd2; 
   x_real_22 = 8'd3;    x_imag_22 = 8'd1; 
   x_real_23 = 8'd4;    x_imag_23 = 8'd2; 
   x_real_24 = 8'd5;    x_imag_24 = 8'd1; 
   x_real_25 = 8'd1;    x_imag_25 = 8'd2; 
   x_real_26 = 8'd2;    x_imag_26 = 8'd1; 
   x_real_27 = 8'd3;    x_imag_27 = 8'd2; 
   x_real_28 = 8'd4;    x_imag_28 = 8'd1; 
   x_real_29 = 8'd5;    x_imag_29 = 8'd2; 
   x_real_30 = 8'd1;    x_imag_30 = 8'd1; 
   x_real_31 = 8'd2;    x_imag_31 = 8'd2; 
   x_real_32 = 8'd3;    x_imag_32 = 8'd1; 
   x_real_33 = 8'd4;    x_imag_33 = 8'd2; 
   x_real_34 = 8'd5;    x_imag_34 = 8'd1; 
   x_real_35 = 8'd1;    x_imag_35 = 8'd2; 
   x_real_36 = 8'd2;    x_imag_36 = 8'd1; 
   x_real_37 = 8'd3;    x_imag_37 = 8'd2; 
   x_real_38 = 8'd4;    x_imag_38 = 8'd1; 
   x_real_39 = 8'd5;    x_imag_39 = 8'd2; 
   x_real_40 = 8'd1;    x_imag_40 = 8'd1; 
   x_real_41 = 8'd2;    x_imag_41 = 8'd2; 
   x_real_42 = 8'd3;    x_imag_42 = 8'd1; 
   x_real_43 = 8'd4;    x_imag_43 = 8'd2; 
   x_real_44 = 8'd5;    x_imag_44 = 8'd1; 
   x_real_45 = 8'd1;    x_imag_45 = 8'd2; 
   x_real_46 = 8'd2;    x_imag_46 = 8'd1; 
   x_real_47 = 8'd3;    x_imag_47 = 8'd2; 
   x_real_48 = 8'd4;    x_imag_48 = 8'd1; 
   x_real_49 = 8'd5;    x_imag_49 = 8'd2; 
   x_real_50 = 8'd1;    x_imag_50 = 8'd1; 
   x_real_51 = 8'd2;    x_imag_51 = 8'd2; 
   x_real_52 = 8'd3;    x_imag_52 = 8'd1; 
   x_real_53 = 8'd4;    x_imag_53 = 8'd2; 
   x_real_54 = 8'd5;    x_imag_54 = 8'd1; 
   x_real_55 = 8'd1;    x_imag_55 = 8'd2; 
   x_real_56 = 8'd2;    x_imag_56 = 8'd1; 
   x_real_57 = 8'd3;    x_imag_57 = 8'd2; 
   x_real_58 = 8'd4;    x_imag_58 = 8'd1; 
   x_real_59 = 8'd5;    x_imag_59 = 8'd2; 
   x_real_60 = 8'd1;    x_imag_60 = 8'd1; 
   x_real_61 = 8'd2;    x_imag_61 = 8'd2; 
   x_real_62 = 8'd3;    x_imag_62 = 8'd1; 
   x_real_63 = 8'd4;    x_imag_63 = 8'd2; 
   @(negedge clk) ;
   input_signal = 1 ;  
  /* forever begin
       @(negedge clk) ;
            x_real_0  = (x_real_0  > 8'hFF) ? 8'h00 : x_real_0  + 1; x_imag_0  = (x_imag_0  > 8'hFF) ? 8'h00 : x_imag_0  + 4;
            x_real_1  = (x_real_1  > 8'hFF) ? 8'h00 : x_real_1  + 2; x_imag_1  = (x_imag_1  > 8'hFF) ? 8'h00 : x_imag_1  + 3;
            x_real_2  = (x_real_2  > 8'hFF) ? 8'h00 : x_real_2  + 3; x_imag_2  = (x_imag_2  > 8'hFF) ? 8'h00 : x_imag_2  + 2;
            x_real_3  = (x_real_3  > 8'hFF) ? 8'h00 : x_real_3  + 4; x_imag_3  = (x_imag_3  > 8'hFF) ? 8'h00 : x_imag_3  + 1;
            x_real_4  = (x_real_4  > 8'hFF) ? 8'h00 : x_real_4  + 1; x_imag_4  = (x_imag_4  > 8'hFF) ? 8'h00 : x_imag_4  + 4;
            x_real_5  = (x_real_5  > 8'hFF) ? 8'h00 : x_real_5  + 2; x_imag_5  = (x_imag_5  > 8'hFF) ? 8'h00 : x_imag_5  + 3;
            x_real_6  = (x_real_6  > 8'hFF) ? 8'h00 : x_real_6  + 3; x_imag_6  = (x_imag_6  > 8'hFF) ? 8'h00 : x_imag_6  + 2;
            x_real_7  = (x_real_7  > 8'hFF) ? 8'h00 : x_real_7  + 4; x_imag_7  = (x_imag_7  > 8'hFF) ? 8'h00 : x_imag_7  + 1;
            x_real_8  = (x_real_8  > 8'hFF) ? 8'h00 : x_real_8  + 1; x_imag_8  = (x_imag_8  > 8'hFF) ? 8'h00 : x_imag_8  + 4;
            x_real_9  = (x_real_9  > 8'hFF) ? 8'h00 : x_real_9  + 2; x_imag_9  = (x_imag_9  > 8'hFF) ? 8'h00 : x_imag_9  + 3;
            x_real_10  = (x_real_10  > 8'hFF) ? 8'h00 : x_real_10  + 3; x_imag_10  = (x_imag_10  > 8'hFF) ? 8'h00 : x_imag_10  + 2;
            x_real_11  = (x_real_11  > 8'hFF) ? 8'h00 : x_real_11  + 4; x_imag_11  = (x_imag_11  > 8'hFF) ? 8'h00 : x_imag_11  + 1;
            x_real_12  = (x_real_12  > 8'hFF) ? 8'h00 : x_real_12  + 1; x_imag_12  = (x_imag_12  > 8'hFF) ? 8'h00 : x_imag_12  + 4;
            x_real_13  = (x_real_13  > 8'hFF) ? 8'h00 : x_real_13  + 2; x_imag_13  = (x_imag_13  > 8'hFF) ? 8'h00 : x_imag_13  + 3;
            x_real_14  = (x_real_14  > 8'hFF) ? 8'h00 : x_real_14  + 3; x_imag_14  = (x_imag_14  > 8'hFF) ? 8'h00 : x_imag_14  + 2;
            x_real_15  = (x_real_15  > 8'hFF) ? 8'h00 : x_real_15  + 4; x_imag_15  = (x_imag_15  > 8'hFF) ? 8'h00 : x_imag_15  + 1;
            x_real_16  = (x_real_16  > 8'hFF) ? 8'h00 : x_real_16  + 1; x_imag_16  = (x_imag_16  > 8'hFF) ? 8'h00 : x_imag_16  + 4;
            x_real_17  = (x_real_17  > 8'hFF) ? 8'h00 : x_real_17  + 2; x_imag_17  = (x_imag_17  > 8'hFF) ? 8'h00 : x_imag_17  + 3;
            x_real_18  = (x_real_18  > 8'hFF) ? 8'h00 : x_real_18  + 3; x_imag_18  = (x_imag_18  > 8'hFF) ? 8'h00 : x_imag_18  + 2;
            x_real_19  = (x_real_19  > 8'hFF) ? 8'h00 : x_real_19  + 4; x_imag_19  = (x_imag_19  > 8'hFF) ? 8'h00 : x_imag_19  + 1;
            x_real_20  = (x_real_20  > 8'hFF) ? 8'h00 : x_real_20  + 1; x_imag_20  = (x_imag_20  > 8'hFF) ? 8'h00 : x_imag_20  + 4;
            x_real_21  = (x_real_21  > 8'hFF) ? 8'h00 : x_real_21  + 2; x_imag_21  = (x_imag_21  > 8'hFF) ? 8'h00 : x_imag_21  + 3;
            x_real_22  = (x_real_22  > 8'hFF) ? 8'h00 : x_real_22  + 3; x_imag_22  = (x_imag_22  > 8'hFF) ? 8'h00 : x_imag_22  + 2;
            x_real_23  = (x_real_23  > 8'hFF) ? 8'h00 : x_real_23  + 4; x_imag_23  = (x_imag_23  > 8'hFF) ? 8'h00 : x_imag_23  + 1;
            x_real_24  = (x_real_24  > 8'hFF) ? 8'h00 : x_real_24  + 1; x_imag_24  = (x_imag_24  > 8'hFF) ? 8'h00 : x_imag_24  + 4;
            x_real_25  = (x_real_25  > 8'hFF) ? 8'h00 : x_real_25  + 2; x_imag_25  = (x_imag_25  > 8'hFF) ? 8'h00 : x_imag_25  + 3;
            x_real_26  = (x_real_26  > 8'hFF) ? 8'h00 : x_real_26  + 3; x_imag_26  = (x_imag_26  > 8'hFF) ? 8'h00 : x_imag_26  + 2;
            x_real_27  = (x_real_27  > 8'hFF) ? 8'h00 : x_real_27  + 4; x_imag_27  = (x_imag_27  > 8'hFF) ? 8'h00 : x_imag_27  + 1;
            x_real_28  = (x_real_28  > 8'hFF) ? 8'h00 : x_real_28  + 1; x_imag_28  = (x_imag_28  > 8'hFF) ? 8'h00 : x_imag_28  + 4;
            x_real_29  = (x_real_29  > 8'hFF) ? 8'h00 : x_real_29  + 2; x_imag_29  = (x_imag_29  > 8'hFF) ? 8'h00 : x_imag_29  + 3;
            x_real_30  = (x_real_30  > 8'hFF) ? 8'h00 : x_real_30  + 3; x_imag_30  = (x_imag_30  > 8'hFF) ? 8'h00 : x_imag_30  + 2;
            x_real_31  = (x_real_31  > 8'hFF) ? 8'h00 : x_real_31  + 4; x_imag_31  = (x_imag_31  > 8'hFF) ? 8'h00 : x_imag_31  + 1;
            x_real_32  = (x_real_32  > 8'hFF) ? 8'h00 : x_real_32  + 1; x_imag_32  = (x_imag_32  > 8'hFF) ? 8'h00 : x_imag_32  + 4;
            x_real_33  = (x_real_33  > 8'hFF) ? 8'h00 : x_real_33  + 2; x_imag_33  = (x_imag_33  > 8'hFF) ? 8'h00 : x_imag_33  + 3;
            x_real_34  = (x_real_34  > 8'hFF) ? 8'h00 : x_real_34  + 3; x_imag_34  = (x_imag_34  > 8'hFF) ? 8'h00 : x_imag_34  + 2;
            x_real_35  = (x_real_35  > 8'hFF) ? 8'h00 : x_real_35  + 4; x_imag_35  = (x_imag_35  > 8'hFF) ? 8'h00 : x_imag_35  + 1;
            x_real_36  = (x_real_36  > 8'hFF) ? 8'h00 : x_real_36  + 1; x_imag_36  = (x_imag_36  > 8'hFF) ? 8'h00 : x_imag_36  + 4;
            x_real_37  = (x_real_37  > 8'hFF) ? 8'h00 : x_real_37  + 2; x_imag_37  = (x_imag_37  > 8'hFF) ? 8'h00 : x_imag_37  + 3;
            x_real_38  = (x_real_38  > 8'hFF) ? 8'h00 : x_real_38  + 3; x_imag_38  = (x_imag_38  > 8'hFF) ? 8'h00 : x_imag_38  + 2;
            x_real_39  = (x_real_39  > 8'hFF) ? 8'h00 : x_real_39  + 4; x_imag_39  = (x_imag_39  > 8'hFF) ? 8'h00 : x_imag_39  + 1;
            x_real_40  = (x_real_40  > 8'hFF) ? 8'h00 : x_real_40  + 1; x_imag_40  = (x_imag_40  > 8'hFF) ? 8'h00 : x_imag_40  + 4;
            x_real_41  = (x_real_41  > 8'hFF) ? 8'h00 : x_real_41  + 2; x_imag_41  = (x_imag_41  > 8'hFF) ? 8'h00 : x_imag_41  + 3;
            x_real_42  = (x_real_42  > 8'hFF) ? 8'h00 : x_real_42  + 3; x_imag_42  = (x_imag_42  > 8'hFF) ? 8'h00 : x_imag_42  + 2;
            x_real_43  = (x_real_43  > 8'hFF) ? 8'h00 : x_real_43  + 4; x_imag_43  = (x_imag_43  > 8'hFF) ? 8'h00 : x_imag_43  + 1;
            x_real_44  = (x_real_44  > 8'hFF) ? 8'h00 : x_real_44  + 1; x_imag_44  = (x_imag_44  > 8'hFF) ? 8'h00 : x_imag_44  + 4;
            x_real_45  = (x_real_45  > 8'hFF) ? 8'h00 : x_real_45  + 2; x_imag_45  = (x_imag_45  > 8'hFF) ? 8'h00 : x_imag_45  + 3;
            x_real_46  = (x_real_46  > 8'hFF) ? 8'h00 : x_real_46  + 3; x_imag_46  = (x_imag_46  > 8'hFF) ? 8'h00 : x_imag_46  + 2;
            x_real_47  = (x_real_47  > 8'hFF) ? 8'h00 : x_real_47  + 4; x_imag_47  = (x_imag_47  > 8'hFF) ? 8'h00 : x_imag_47  + 1;
            x_real_48  = (x_real_48  > 8'hFF) ? 8'h00 : x_real_48  + 1; x_imag_48  = (x_imag_48  > 8'hFF) ? 8'h00 : x_imag_48  + 4;
            x_real_49  = (x_real_49  > 8'hFF) ? 8'h00 : x_real_49  + 2; x_imag_49  = (x_imag_49  > 8'hFF) ? 8'h00 : x_imag_49  + 3;
            x_real_50  = (x_real_50  > 8'hFF) ? 8'h00 : x_real_50  + 3; x_imag_50  = (x_imag_50  > 8'hFF) ? 8'h00 : x_imag_50  + 2;
            x_real_51  = (x_real_51  > 8'hFF) ? 8'h00 : x_real_51  + 4; x_imag_51  = (x_imag_51  > 8'hFF) ? 8'h00 : x_imag_51  + 1;
            x_real_52  = (x_real_52  > 8'hFF) ? 8'h00 : x_real_52  + 1; x_imag_52  = (x_imag_52  > 8'hFF) ? 8'h00 : x_imag_52  + 4;
            x_real_53  = (x_real_53  > 8'hFF) ? 8'h00 : x_real_53  + 2; x_imag_53  = (x_imag_53  > 8'hFF) ? 8'h00 : x_imag_53  + 3;
            x_real_54  = (x_real_54  > 8'hFF) ? 8'h00 : x_real_54  + 3; x_imag_54  = (x_imag_54  > 8'hFF) ? 8'h00 : x_imag_54  + 2;
            x_real_55  = (x_real_55  > 8'hFF) ? 8'h00 : x_real_55  + 4; x_imag_55  = (x_imag_55  > 8'hFF) ? 8'h00 : x_imag_55  + 1;
            x_real_56  = (x_real_56  > 8'hFF) ? 8'h00 : x_real_56  + 1; x_imag_56  = (x_imag_56  > 8'hFF) ? 8'h00 : x_imag_56  + 4;
            x_real_57  = (x_real_57  > 8'hFF) ? 8'h00 : x_real_57  + 2; x_imag_57  = (x_imag_57  > 8'hFF) ? 8'h00 : x_imag_57  + 3;
            x_real_58  = (x_real_58  > 8'hFF) ? 8'h00 : x_real_58  + 3; x_imag_58  = (x_imag_58  > 8'hFF) ? 8'h00 : x_imag_58  + 2;
            x_real_59  = (x_real_59  > 8'hFF) ? 8'h00 : x_real_59  + 4; x_imag_59  = (x_imag_59  > 8'hFF) ? 8'h00 : x_imag_59  + 1;
            x_real_60  = (x_real_60  > 8'hFF) ? 8'h00 : x_real_60  + 1; x_imag_60  = (x_imag_60  > 8'hFF) ? 8'h00 : x_imag_60  + 4;
            x_real_61  = (x_real_61  > 8'hFF) ? 8'h00 : x_real_61  + 2; x_imag_61  = (x_imag_61  > 8'hFF) ? 8'h00 : x_imag_61  + 3;
            x_real_62  = (x_real_62  > 8'hFF) ? 8'h00 : x_real_62  + 3; x_imag_62  = (x_imag_62  > 8'hFF) ? 8'h00 : x_imag_62  + 2;
            x_real_63  = (x_real_63  > 8'hFF) ? 8'h00 : x_real_63  + 4; x_imag_63  = (x_imag_63  > 8'hFF) ? 8'h00 : x_imag_63  + 1;
        end
		*/
 end

endmodule