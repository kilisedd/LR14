var it,out: text; s:string;n:byte; {Создать новый строковый файл, содержащий все строки исходного файла наибольшей длины (в обратном порядке).}
begin 
 assign(it,'D:\Колледж\Основы аллгоритм и программирования\LR-14\2.txt');  {обеспечивает связь файловой переменной программы с реальным файлом на диске. Первым аргументом указывается переменная, вторым – адресное имя файла.}
 rewrite(it); {Rewrite перед открытием файла пересоздаёт его (удаляет, если он был создан ранее, и создаёт снова)}
 print('Введите кол-во строк в исходный файл: '); 
 read(n); 
 writeln('Введите строки в исходный файл'); 
 for var i:=0 to n do 
 begin 
 s:=readstring(); 
 println(it,s); 
 end; 
 close(it); 
 assign(out,'D:\Колледж\Основы аллгоритм и программирования\LR-14\2.1.txt'); 
 rewrite(out); 
 reset(it); 
 var max:=0; 
 while not eof(it) do 
 begin 
 readln(it,s); 
 if max<length(s) then 
 begin 
 max:=length(s); 
 end; 
 end; 
 reset(it); 
 while not eof(it) do 
 begin 
 readln(it,s); 
 if max=length(s) then {находит самаую длиннею строку }
 begin 
 for var i:=length(s) downto 1 do {цикл который переварарачивает строку}
 begin 
 write(out,s[i]); 
 end; 
 writeln(out); 
 end; 
 end; 
 close(it); 
 close(out); 
end.
