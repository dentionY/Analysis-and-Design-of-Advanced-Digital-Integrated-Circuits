fid=fopen('D:\test_fft_output_x.txt','wt'); %写的方式打开文件（若不存在，建立文件）；
% for i = 0:1:63
%    fprintf(fid,'%s',' assign y_real_');fprintf(fid,'%d',i);fprintf(fid,'%s',' = x_real_all [6] [');
%    fprintf(fid,'%d',i);fprintf(fid,'%s',']; ');
%    %fprintf(fid,'%s',';');
%    
%    fprintf(fid,'%s',' assign y_imag_');fprintf(fid,'%d',i);fprintf(fid,'%s',' = x_imag_all [6] [');
%    fprintf(fid,'%d',i);fprintf(fid,'%s',']; ');
%    fprintf(fid,'\n');
% end
% for i = 0:1:15
%     fprintf(fid,'%s','registers0_');
%     fprintf(fid,'%d',i);
%     fprintf(fid,'%s',' <= 16''bxxxx;');
% end
% fprintf(fid,'\n');
% for i = 0:1:15
%     fprintf(fid,'%s','registers1_');
%     fprintf(fid,'%d',i);
%     fprintf(fid,'%s',' <= 16''bxxxx;');
% end
% fprintf(fid,'\n');
% for i = 0:1:15
%     fprintf(fid,'%s','registers2_');
%     fprintf(fid,'%d',i);
%     fprintf(fid,'%s',' <= 16''bxxxx;');
% end
% fprintf(fid,'\n');
% for i = 0:1:15
%     fprintf(fid,'%s','registers3_');
%     fprintf(fid,'%d',i);
%     fprintf(fid,'%s',' <= 16''bxxxx;');
% end
for i = 0:1:15
    fprintf(fid,'%s','                             4''d');
    fprintf(fid,'%d',i);
    fprintf(fid,'%s',': registers3_');
    fprintf(fid,'%d',i);
    fprintf(fid,'%s',' <= hwdata_reg1;');
    %fprintf(fid,'%d',i);
    %fprintf(fid,'%s','; end');
    fprintf(fid,'\n');
end
fclose(fid);