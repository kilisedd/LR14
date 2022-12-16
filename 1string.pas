uses crt;
var f:file of char;
    c:char;
    i,n:integer;
begin
assign(f,'D:\Колледж\Основы аллгоритм и программирования\LR-14\1.txt');
rewrite(f);
write('Сколько символов записать в файл =');
read(n);
writeln('Введите в файл ',n,' символов, в том числе пробел:');
for i:=1 to n do
 begin
  read(c);
  write(f,c);
 end;
reset(f);
clrscr;
writeln('Исходный файл:');
n:=-1;
for i:=0 to filesize(f)-1 do
 begin
  read(f,c);
  write(c);
  if c=' ' then n:=i;
 end;
writeln;
if n=-1 then
 begin
  writeln('Вы забыли ввести пробел, работа программы завершена');
  close(f);
 end
else
 begin
  seek(f,n);
  truncate(f);
  writeln('Удаление символов после последнего пробела, включая его:');
  seek(f,0);
  while not eof(f) do
   begin
    read(f,c);
    write(c);
   end;
  close(f);
 end;
 end.