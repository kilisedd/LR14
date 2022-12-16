{Найти его последний локальный максимум }
var 
 f: TextFile;
 b,a,c,LocMax:Real;
 
begin
  Assign(f,'D:\Колледж\Основы аллгоритм и программирования\LR-14\4.txt');{обеспечивает связь файловой переменной программы с реальным файлом на диске. Первым аргументом указывается переменная, вторым – адресное имя файла.}
  Reset(f);{Reset - открытие существующего файла}

  Read(f,a);
  Read(f,c);
  b:=a;
 
  if (a>c) then LocMax:=a;
  while (not eof(f)) do
   begin
    b:=a;
    a:=c;
    Read(f,c);
    if (c<a) and (a>b) then LocMax:=a;
   end;
  if a<c then LocMax:=c;
  Writeln(LocMax);
  Close(f);
end.