Wnr_real_dec = []; Wnr_real_or = [];
Wnr_imag_dec = []; Wnr_imag_or = [];
Wnr_real_hex = {};
Wnr_imag_hex = {};
for r = 0:31
    Wnr_factor  = cos(pi/32*r) - 1j*sin(pi/32*r) ;
    Wnr_integer = floor(Wnr_factor * 2^13) ;
   
    if (real(Wnr_integer)<0)
        Wnr_real    = real(Wnr_integer) + 2^16 ; %负数的补码
    else
        Wnr_real    = real(Wnr_integer) ;
    end
    if (imag(Wnr_integer)<0)
        Wnr_imag    = imag(Wnr_integer) + 2^16 ;
    else
        Wnr_imag    = imag(Wnr_integer);
    end
    Wnr_real_or = [Wnr_real_or real(Wnr_factor)];
    Wnr_imag_or = [Wnr_imag_or imag(Wnr_factor)];
    Wnr_real_dec = [Wnr_real_dec real(Wnr_integer)];
    Wnr_imag_dec = [Wnr_imag_dec imag(Wnr_integer)];
    Wnr_real_hex{r+1}  =  dec2hex(Wnr_real,4);   %实部
    Wnr_imag_hex{r+1}  =  dec2hex(Wnr_imag,4);   %虚部
end
%% 打印

fid=fopen('D:\test_sin_cos.txt','wt'); %写的方式打开文件（若不存在，建立文件）；
for i = 1:32
   fprintf(fid,'%s',' assign fac_real[ ');
   fprintf(fid,'%d ',i-1);
   fprintf(fid,'%s',']='); 
   fprintf(fid,'%s','16''h');
   fprintf(fid,'%s ',Wnr_real_hex{i});  % %d 表示以整数形式写入数据，这正是我想要的；
   fprintf(fid,'%s',';');
   %fprintf(fid,'\n');
   fprintf(fid,'%s',' assign fac_imag[ ');
   fprintf(fid,'%d ',i-1);
   fprintf(fid,'%s',']='); 
   fprintf(fid,'%s','16''h');
   fprintf(fid,'%s ',Wnr_imag_hex{i});  % %d 表示以整数形式写入数据，这正是我想要的；
   fprintf(fid,'%s',';');
   fprintf(fid,'\n');

end
fclose(fid);
