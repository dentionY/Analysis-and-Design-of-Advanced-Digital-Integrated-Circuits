fid=fopen('D:\test_fft_input_x.txt','wt'); %д�ķ�ʽ���ļ����������ڣ������ļ�����
for i = 0:1:63
   fprintf(fid,'%s',' output signed [19:0] y_real_');
   fprintf(fid,'%d',i);
   fprintf(fid,'%s',', ');
   %fprintf(fid,'\n');
   fprintf(fid,'%s',' output signed [19:0] y_imag_');
   fprintf(fid,'%d',i);
   fprintf(fid,'%s',', ');
   fprintf(fid,'\n');
end
fclose(fid);