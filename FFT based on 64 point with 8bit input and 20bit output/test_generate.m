fid=fopen('D:\test_generate.txt','wt'); %写的方式打开文件（若不存在，建立文件）；
%{
for i = 0:1:31
   fprintf(fid,'%s','butterfly my0_');
   fprintf(fid,'%d',i);
   fprintf(fid,'%s','(clk,rstn,x_real_all[0][');
   fprintf(fid,'%d',2*i);
   fprintf(fid,'%s','],x_imag_all[0][');
   fprintf(fid,'%d',2*i);
   fprintf(fid,'%s','],x_real_all[0][');
   fprintf(fid,'%d',2*i+1);
   fprintf(fid,'%s','],x_imag_all[0][');
   fprintf(fid,'%d',2*i+1);
   fprintf(fid,'%s','],fac_real[0],fac_imag[0],signal_box[');
   fprintf(fid,'%d',i);
   fprintf(fid,'%s','],x_real_all[1][');
   fprintf(fid,'%d',2*i);
   fprintf(fid,'%s','],x_imag_all[1][');
   fprintf(fid,'%d',2*i);
   fprintf(fid,'%s','],x_real_all[1][');
   fprintf(fid,'%d',2*i+1);
   fprintf(fid,'%s','],x_imag_all[1][');
   fprintf(fid,'%d',2*i+1); 
   fprintf(fid,'%s','],signal_box[32+');
   fprintf(fid,'%d',i);%;]');
   fprintf(fid,'%s',']); ');
   fprintf(fid,'\n');
end
%}
%{
for i=0:15
   fprintf(fid,'%s','butterfly my1_');
   fprintf(fid,'%d',2*i);
   fprintf(fid,'%s','(clk,rstn,x_real_all[1][');
   fprintf(fid,'%d',4*i);
   fprintf(fid,'%s','],x_imag_all[1][');
   fprintf(fid,'%d',4*i);
   fprintf(fid,'%s','],x_real_all[1][');
   fprintf(fid,'%d',4*i+2);
   fprintf(fid,'%s','],x_imag_all[1][');
   fprintf(fid,'%d',4*i+2);
   fprintf(fid,'%s','],fac_real[0],fac_imag[0],signal_box[32+');
   fprintf(fid,'%d',2*i);
   fprintf(fid,'%s','],x_real_all[2][');
   fprintf(fid,'%d',4*i);
   fprintf(fid,'%s','],x_imag_all[2][');
   fprintf(fid,'%d',4*i);
   fprintf(fid,'%s','],x_real_all[2][');
   fprintf(fid,'%d',4*i+2);
   fprintf(fid,'%s','],x_imag_all[2][');
   fprintf(fid,'%d',4*i+2); 
   fprintf(fid,'%s','],signal_box[2*32+');
   fprintf(fid,'%d',2*i);%;]');
   fprintf(fid,'%s',']); ');
   fprintf(fid,'\n');
   
   fprintf(fid,'%s','butterfly my1_');
   fprintf(fid,'%d',2*i+1);
   fprintf(fid,'%s','(clk,rstn,x_real_all[1][');
   fprintf(fid,'%d',4*i+1);
   fprintf(fid,'%s','],x_imag_all[1][');
   fprintf(fid,'%d',4*i+1);
   fprintf(fid,'%s','],x_real_all[1][');
   fprintf(fid,'%d',4*i+1+2);
   fprintf(fid,'%s','],x_imag_all[1][');
   fprintf(fid,'%d',4*i+1+2);
   fprintf(fid,'%s','],fac_real[16],fac_imag[16],signal_box[32+');
   fprintf(fid,'%d',2*i+1);
   fprintf(fid,'%s','],x_real_all[2][');
   fprintf(fid,'%d',4*i+1);
   fprintf(fid,'%s','],x_imag_all[2][');
   fprintf(fid,'%d',4*i+1);
   fprintf(fid,'%s','],x_real_all[2][');
   fprintf(fid,'%d',4*i+2+1);
   fprintf(fid,'%s','],x_imag_all[2][');
   fprintf(fid,'%d',4*i+2+1); 
   fprintf(fid,'%s','],signal_box[2*32+');
   fprintf(fid,'%d',2*i+1);%;]');
   fprintf(fid,'%s',']); ');
   fprintf(fid,'\n');
end
%}
%{
for i=0:7
   fprintf(fid,'%s','butterfly my2_');fprintf(fid,'%d',4*i);fprintf(fid,'%s','(clk,rstn,x_real_all[2][');fprintf(fid,'%d',8*i);
   fprintf(fid,'%s','],x_imag_all[2][');fprintf(fid,'%d',8*i);fprintf(fid,'%s','],x_real_all[2][');fprintf(fid,'%d',8*i+4);
   fprintf(fid,'%s','],x_imag_all[2][');fprintf(fid,'%d',8*i+4);fprintf(fid,'%s','],fac_real[0],fac_imag[0],signal_box[2*32+');
   fprintf(fid,'%d',4*i);fprintf(fid,'%s','],x_real_all[3][');fprintf(fid,'%d',8*i);fprintf(fid,'%s','],x_imag_all[3][');
   fprintf(fid,'%d',8*i);fprintf(fid,'%s','],x_real_all[3][');fprintf(fid,'%d',8*i+4);fprintf(fid,'%s','],x_imag_all[3][');
   fprintf(fid,'%d',8*i+4); fprintf(fid,'%s','],signal_box[3*32+');fprintf(fid,'%d',4*i);fprintf(fid,'%s',']); ');fprintf(fid,'\n');
   
   fprintf(fid,'%s','butterfly my2_');fprintf(fid,'%d',4*i+1);fprintf(fid,'%s','(clk,rstn,x_real_all[2][');fprintf(fid,'%d',8*i+1);
   fprintf(fid,'%s','],x_imag_all[2][');fprintf(fid,'%d',8*i+1);fprintf(fid,'%s','],x_real_all[2][');fprintf(fid,'%d',8*i+1+4);
   fprintf(fid,'%s','],x_imag_all[2][');fprintf(fid,'%d',8*i+1+4);fprintf(fid,'%s','],fac_real[8],fac_imag[8],signal_box[2*32+');
   fprintf(fid,'%d',4*i+1);fprintf(fid,'%s','],x_real_all[3][');fprintf(fid,'%d',8*i+1);fprintf(fid,'%s','],x_imag_all[3][');
   fprintf(fid,'%d',8*i+1);fprintf(fid,'%s','],x_real_all[3][');fprintf(fid,'%d',8*i+1+4);fprintf(fid,'%s','],x_imag_all[3][');
   fprintf(fid,'%d',8*i+1+4); fprintf(fid,'%s','],signal_box[3*32+');fprintf(fid,'%d',4*i+1);fprintf(fid,'%s',']); ');fprintf(fid,'\n');

   fprintf(fid,'%s','butterfly my2_');fprintf(fid,'%d',4*i+2);fprintf(fid,'%s','(clk,rstn,x_real_all[2][');fprintf(fid,'%d',8*i+2);
   fprintf(fid,'%s','],x_imag_all[2][');fprintf(fid,'%d',8*i+2);fprintf(fid,'%s','],x_real_all[2][');fprintf(fid,'%d',8*i+2+4);
   fprintf(fid,'%s','],x_imag_all[2][');fprintf(fid,'%d',8*i+2+4);fprintf(fid,'%s','],fac_real[16],fac_imag[16],signal_box[2*32+');
   fprintf(fid,'%d',4*i+2);fprintf(fid,'%s','],x_real_all[3][');fprintf(fid,'%d',8*i+2);fprintf(fid,'%s','],x_imag_all[3][');
   fprintf(fid,'%d',8*i+2);fprintf(fid,'%s','],x_real_all[3][');fprintf(fid,'%d',8*i+2+4);fprintf(fid,'%s','],x_imag_all[3][');
   fprintf(fid,'%d',8*i+2+4); fprintf(fid,'%s','],signal_box[3*32+');fprintf(fid,'%d',4*i+2);fprintf(fid,'%s',']); ');fprintf(fid,'\n');

   fprintf(fid,'%s','butterfly my2_');fprintf(fid,'%d',4*i+3);fprintf(fid,'%s','(clk,rstn,x_real_all[2][');fprintf(fid,'%d',8*i+3);
   fprintf(fid,'%s','],x_imag_all[2][');fprintf(fid,'%d',8*i+3);fprintf(fid,'%s','],x_real_all[2][');fprintf(fid,'%d',8*i+3+4);
   fprintf(fid,'%s','],x_imag_all[2][');fprintf(fid,'%d',8*i+3+4);fprintf(fid,'%s','],fac_real[24],fac_imag[24],signal_box[2*32+');
   fprintf(fid,'%d',4*i+3);fprintf(fid,'%s','],x_real_all[3][');fprintf(fid,'%d',8*i+3);fprintf(fid,'%s','],x_imag_all[3][');
   fprintf(fid,'%d',8*i+3);fprintf(fid,'%s','],x_real_all[3][');fprintf(fid,'%d',8*i+3+4);fprintf(fid,'%s','],x_imag_all[3][');
   fprintf(fid,'%d',8*i+3+4); fprintf(fid,'%s','],signal_box[3*32+');fprintf(fid,'%d',4*i+3);fprintf(fid,'%s',']); ');fprintf(fid,'\n');

end
%}
%{
for i=0:3
     for j = 0:7
       fprintf(fid,'%s','butterfly my3_');fprintf(fid,'%d',8*i+j);fprintf(fid,'%s','(clk,rstn,x_real_all[3][');fprintf(fid,'%d',16*i+j);
       fprintf(fid,'%s','],x_imag_all[3][');fprintf(fid,'%d',16*i+j);fprintf(fid,'%s','],x_real_all[3][');fprintf(fid,'%d',16*i+j+8);
       fprintf(fid,'%s','],x_imag_all[3][');fprintf(fid,'%d',16*i+j+8);
       if j==0
           fprintf(fid,'%s','],fac_real[0],fac_imag[0],signal_box[3*32+');
       elseif j==1
           fprintf(fid,'%s','],fac_real[4],fac_imag[4],signal_box[3*32+');
       elseif j==2
           fprintf(fid,'%s','],fac_real[8],fac_imag[8],signal_box[3*32+');
       elseif j==3
           fprintf(fid,'%s','],fac_real[12],fac_imag[12],signal_box[3*32+');
       elseif j==4
           fprintf(fid,'%s','],fac_real[16],fac_imag[16],signal_box[3*32+');
       elseif j==5
           fprintf(fid,'%s','],fac_real[20],fac_imag[20],signal_box[3*32+');
       elseif j==6
           fprintf(fid,'%s','],fac_real[24],fac_imag[24],signal_box[3*32+');
       else
           fprintf(fid,'%s','],fac_real[28],fac_imag[28],signal_box[3*32+');
       end
       fprintf(fid,'%d',8*i+j);fprintf(fid,'%s','],x_real_all[4][');fprintf(fid,'%d',16*i+j);fprintf(fid,'%s','],x_imag_all[4][');
       fprintf(fid,'%d',16*i+j);fprintf(fid,'%s','],x_real_all[4][');fprintf(fid,'%d',16*i+j+8);fprintf(fid,'%s','],x_imag_all[4][');
       fprintf(fid,'%d',16*i+j+8); fprintf(fid,'%s','],signal_box[4*32+');fprintf(fid,'%d',8*i+j);fprintf(fid,'%s',']); ');fprintf(fid,'\n');
     end
end
%}
%{
for i=0:1
     for j = 0:15
       fprintf(fid,'%s','butterfly my4_');fprintf(fid,'%d',32*i+j);fprintf(fid,'%s','(clk,rstn,x_real_all[4][');fprintf(fid,'%d',32*i+j);
       fprintf(fid,'%s','],x_imag_all[4][');fprintf(fid,'%d',32*i+j);fprintf(fid,'%s','],x_real_all[4][');fprintf(fid,'%d',32*i+j+16);
       fprintf(fid,'%s','],x_imag_all[4][');fprintf(fid,'%d',32*i+j+16);
       fprintf(fid,'%s','],fac_real[');
       fprintf(fid,'%d',2*j);
       fprintf(fid,'%s','],fac_imag[');
       fprintf(fid,'%d',2*j);
       fprintf(fid,'%s','],signal_box[4*32+');
       fprintf(fid,'%d',16*i+j);fprintf(fid,'%s','],x_real_all[5][');fprintf(fid,'%d',32*i+j);fprintf(fid,'%s','],x_imag_all[5][');
       fprintf(fid,'%d',32*i+j);fprintf(fid,'%s','],x_real_all[5][');fprintf(fid,'%d',32*i+j+16);fprintf(fid,'%s','],x_imag_all[5][');
       fprintf(fid,'%d',32*i+j+16); fprintf(fid,'%s','],signal_box[5*32+');fprintf(fid,'%d',16*i+j);fprintf(fid,'%s',']); ');fprintf(fid,'\n');
     end
end
%}
for i=0
     for j = 0:31
       fprintf(fid,'%s','butterfly my5_');fprintf(fid,'%d',64*i+j);fprintf(fid,'%s','(clk,rstn,x_real_all[5][');fprintf(fid,'%d',64*i+j);
       fprintf(fid,'%s','],x_imag_all[5][');fprintf(fid,'%d',64*i+j);fprintf(fid,'%s','],x_real_all[5][');fprintf(fid,'%d',64*i+j+32);
       fprintf(fid,'%s','],x_imag_all[5][');fprintf(fid,'%d',64*i+j+32);
       fprintf(fid,'%s','],fac_real[');
       fprintf(fid,'%d',1*j);
       fprintf(fid,'%s','],fac_imag[');
       fprintf(fid,'%d',1*j);
       fprintf(fid,'%s','],signal_box[5*32+');
       fprintf(fid,'%d',32*i+j);fprintf(fid,'%s','],x_real_all[6][');fprintf(fid,'%d',64*i+j);fprintf(fid,'%s','],x_imag_all[6][');
       fprintf(fid,'%d',64*i+j);fprintf(fid,'%s','],x_real_all[6][');fprintf(fid,'%d',64*i+j+32);fprintf(fid,'%s','],x_imag_all[6][');
       fprintf(fid,'%d',64*i+j+32); fprintf(fid,'%s','],signal_box[6*32+');fprintf(fid,'%d',32*i+j);fprintf(fid,'%s',']); ');fprintf(fid,'\n');
     end
end
fclose(fid);