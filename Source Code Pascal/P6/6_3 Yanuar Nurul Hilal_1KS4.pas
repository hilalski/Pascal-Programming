program rata_rata;
uses crt;
var
n,i,bil,jumlah:integer;
rata:real;
begin
clrscr;
write('Masukkan jumlah bilangan = ');readln(n);
i:=1;
jumlah:=0;
repeat
	begin
	write('Masukkan bilangan ke-',i,' = ');readln(bil);
	i:=i+1;
	jumlah:=jumlah+bil;
	end;
until i>n;
rata:=jumlah/n;
writeln('Rata-rata bilangan = ',rata:0:2);
readln;
end.
