var f,f_out1,f_out2: TextFile;
 i,a:integer;
 
begin
  Assign(f,'D:\Колледж\Основы аллгоритм и программирования\LR-14\2.2.txt');
  Reset(f);
  Assign(f_out1,'D:\Колледж\Основы аллгоритм и программирования\LR-14\2.2.1.txt');
  ReWrite(f_out1);
  Assign(f_out2,'D:\Колледж\Основы аллгоритм и программирования\LR-14\2.2.2.txt');
  ReWrite(f_out2);
  i:=1;
  while not eof(f) do
   begin
    read(f,a);
    if (i mod 2) <> 0 then write(f_out1,a)
    else write(f_out2,a);
    inc(i);
   end;
 
  Close(f);
  Close(f_out1);
  Close(f_out2);
end.
 