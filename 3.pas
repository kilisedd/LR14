var ia,out: file of real; 
    max,min,a:real; 
    bmin,bmax,b:integer;
begin 
 assign(ia, 'D:\Колледж\Основы аллгоритм и программирования\LR-14\5.txt'); 
 assign(out, 'D:\Колледж\Основы аллгоритм и программирования\LR-14\5.1.txt'); 
 rewrite(ia); 
 for var i:= 1 to 10 do 
 begin 
 a:=random(1,100); {выводим рандомные числа в файл}
 write(a,' '); 
 write(ia,a); 
 end; 
 max:=0; 
 min:=100; 
 reset(ia); 
 while not eof(ia) do 
 begin 
 b:=b+1; 
 read(ia,a); 
 if a>max then {ищем максимум и минимум}
 begin 
 max:=a; 
 bmax:=b; 
 end; 
 if a<min then 
 begin 
 min:=a; 
 bmin:=b; 
 end; 
 end; 
 b:=0; 
 reset(ia); 
 rewrite(out); 
 while not eof(ia) do 
 begin 
 b:=b+1; 
 read(ia,a); 
 if b=bmax then 
 begin 
 write(out,min); 
 continue; 
 end; 
 if b=bmin then 
 begin 
 write(out,max); 
 continue; 
 end; 
 write(out,a); 
 end; 
 writeln; 
 reset(out); 
 while not eof(out) do 
 begin 
 read(out,a); 
 write(a,' '); 
 end; 
 close(ia); 
 close(out); 
 erase(ia); 
end.