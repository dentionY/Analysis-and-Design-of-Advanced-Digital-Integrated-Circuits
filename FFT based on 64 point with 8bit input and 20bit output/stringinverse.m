clear on;
clear off;
stringbox = [];
for i = 0:1:63
    stringbox = [stringbox ; dec2bin(i,6)];
end
box_inverse =[];
for i = 1:1:64
    tmp = stringbox(i,:);
    tmp_inverse = tmp(end:-1:1);
    box_inverse = [box_inverse bin2dec(tmp_inverse)];
end

fid=fopen('D:\test.txt','wt'); %д�ķ�ʽ���ļ����������ڣ������ļ�����
for i = 1:1:64
   fprintf(fid,'%s',' assign x_real_all [ 0 ][ ');
   fprintf(fid,'%d',i-1); 
   fprintf(fid,'%s',' ] = {{12{x_real_');
   fprintf(fid,'%d ',box_inverse(i));  % %d ��ʾ��������ʽд������
   fprintf(fid,'%s','[ 7 ]}},x_real_');
   fprintf(fid,'%d ',box_inverse(i));
   fprintf(fid,'%s','};  ');
   %fprintf(fid,'\n');
   fprintf(fid,'%s',' assign x_imag_all [ 0 ][ ');
   fprintf(fid,'%d',i-1);
   fprintf(fid,'%s',' ] = {{12{x_imag_');
   fprintf(fid,'%d ',box_inverse(i));  % %d ��ʾ��������ʽд������
   fprintf(fid,'%s','[ 7 ]}},x_imag_');
   fprintf(fid,'%d ',box_inverse(i));
   fprintf(fid,'%s','};  ');
   fprintf(fid,'\n');
end
fclose(fid);