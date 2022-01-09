fid=fopen('D:\test_x_realimag.txt','wt');
for i = 0:63
   fprintf(fid,'%s','            x_real_');
   fprintf(fid,'%d ',i);
   fprintf(fid,'%s',' = '); 
   fprintf(fid,'%s','(x_real_');
   fprintf(fid,'%d',i);
   fprintf(fid,'%s ',' > 8''hFF) ? 8''h00 : x_real_');  % %d 表示以整数形式写入数据，这正是我想要的；
   fprintf(fid,'%d',i);
   fprintf(fid,'%s',' + ');
   if mod(i,4)==0
       fprintf(fid,'%d',1);
   elseif mod(i,4)==1
       fprintf(fid,'%d',2);
   elseif mod(i,4)==2
       fprintf(fid,'%d',3);
   elseif mod(i,4)==3
       fprintf(fid,'%d',4);
   end
   fprintf(fid,'%s',';');
   %fprintf(fid,'\n');
   fprintf(fid,'%s',' x_imag_');
   fprintf(fid,'%d ',i);
   fprintf(fid,'%s',' = '); 
   fprintf(fid,'%s','(x_imag_');
   fprintf(fid,'%d ',i);
   fprintf(fid,'%s',' > 8''hFF) ? 8''h00 : x_imag_');  % %d 表示以整数形式写入数据，这正是我想要的；
   fprintf(fid,'%d',i);
      fprintf(fid,'%s',' + ');
   if mod(i,4)==0
       fprintf(fid,'%d',4);
   elseif mod(i,4)==1
       fprintf(fid,'%d',3);
   elseif mod(i,4)==2
       fprintf(fid,'%d',2);
   elseif mod(i,4)==3
       fprintf(fid,'%d',1);
   end
   fprintf(fid,'%s',';');
   fprintf(fid,'\n');
end