clear on;
clear off;
value_cos = [];
value_sin = [];
tmp_cos_box = [];
tmp_sin_box = [];
tmp_cos_compl_box = [];
tmp_sin_compl_box = [];
for i = 0:1:31
    tmp_cos = cos(-2*pi*i/64);
    tmp_sin = sin(-2*pi*i/64);
    % 将cos和sin转变为二进制码，并在首位添加符号位
    tmp_cos_inverse_sum = 0;
    tmp_sin_inverse_sum = 0;
    tmp_cos_first = abs(tmp_cos); tmp_sin_first = abs(tmp_sin);
    for j = 1:1:6
        tmp_cos_first_1 = tmp_cos_first * 2; 
        if (tmp_cos<0)
            tmp_cos_inverse_sum = tmp_cos_inverse_sum+(1-floor(tmp_cos_first_1))*power(2,6-j);
        else 
            tmp_cos_inverse_sum = tmp_cos_inverse_sum  +  floor(tmp_cos_first_1)*power(2,6-j);
        end
        tmp_cos_first = (tmp_cos_first_1 - floor(tmp_cos_first_1));
        tmp_sin_first_1= tmp_sin_first * 2;
        if (tmp_sin<0)
            tmp_sin_inverse_sum = tmp_sin_inverse_sum+(1-floor(tmp_sin_first_1))*power(2,6-j);
        else 
            tmp_sin_inverse_sum = tmp_sin_inverse_sum  +  floor(tmp_sin_first_1)*power(2,6-j);
        end
        tmp_sin_first = (tmp_sin_first_1 - floor(tmp_sin_first_1));
    end
    tmp_cos_box = [tmp_cos_box tmp_cos_inverse_sum];
    tmp_sin_box = [tmp_sin_box tmp_sin_inverse_sum];
    if (tmp_cos<0)
         tmp_cos_complementary_sum = tmp_cos_inverse_sum + 1;
     else
         tmp_cos_complementary_sum = tmp_cos_inverse_sum;
     end
     if (tmp_sin<0)
         tmp_sin_complementary_sum = tmp_sin_inverse_sum + 1;
     else
         tmp_sin_complementary_sum = tmp_sin_inverse_sum;
     end
     tmp_cos_compl_box = [tmp_cos_compl_box tmp_cos_complementary_sum];
     tmp_sin_compl_box = [tmp_sin_compl_box tmp_sin_complementary_sum];
     % 得到补码的十进制以后转变为二进制码，注意补充首位符号位
   %if 0
     if (tmp_cos<0)
         tmp_cos_second = [dec2bin(1),dec2bin(tmp_cos_complementary_sum,7)];
     else
         tmp_cos_second = [dec2bin(0),dec2bin(tmp_cos_complementary_sum,7)];
     end
     if (tmp_sin<0)
         tmp_sin_second = [dec2bin(1),dec2bin(tmp_sin_complementary_sum,7)];
     else
         tmp_sin_second = [dec2bin(0),dec2bin(tmp_sin_complementary_sum,7)];
     end
     value_cos = [value_cos;tmp_cos_second];
     value_sin = [value_sin;tmp_sin_second];
  % end
end
%% 打印
fid=fopen('D:\test_sin_cos.txt','wt'); %写的方式打开文件（若不存在，建立文件）；
for i = 1:1:32
   fprintf(fid,'%s',' assign fac_real[ ');
   fprintf(fid,'%d ',i-1);
   fprintf(fid,'%s',']='); 
   fprintf(fid,'%s','8''b');
   fprintf(fid,'%s ',value_cos(i,:));  % %d 表示以整数形式写入数据，这正是我想要的；
   fprintf(fid,'%s',';');
   %fprintf(fid,'\n');
   fprintf(fid,'%s',' assign fac_imag[ ');
   fprintf(fid,'%d ',i-1);
   fprintf(fid,'%s',']='); 
   fprintf(fid,'%s','8''b');
   fprintf(fid,'%s ',value_sin(i,:));  % %d 表示以整数形式写入数据，这正是我想要的；
   fprintf(fid,'%s',';');
   fprintf(fid,'\n');
end
fclose(fid);