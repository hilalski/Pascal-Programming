program jumlah_genap;
uses crt;
var
n,i,bil,jumlah:integer;
begin
clrscr;
write('Masukkan jumlah bilangan = ');readln(n);
i:=1;
jumlah:=0;
repeat
	begin
	write('Masukkan bilangan ke-',i,' = ');readln(bil);
	i:=i+1;
	if bil mod 2=0 then
	jumlah:=jumlah+bil;
	end;
until i>n;
writeln('Jumlah bilangan genap = ',jumlah);
readln;
end.