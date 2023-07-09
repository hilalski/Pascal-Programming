program bilanganbiner;
uses crt;
var bil:integer;
	menu:char;

procedure biner(n:integer);
begin
	if (n mod 2 = 0) and (n<>0) then
		begin
		biner(n div 2);
		write('0');
		end
	else if (n<>0) then
		begin
		biner(n div 2);
		write('1');
		end;
end;

procedure main;
begin
    clrscr;
    writeln('Konversi Bilangan Biner');
    write('Masukkan bilangan = ');readln(bil);
    writeln('Hasil konversi ke biner = ');biner(bil);
    writeln();
end;

begin
clrscr;
repeat
        begin
        main;
        write('Apakah ingin mencoba lagi ? [Y/N] = ');readln(menu);
        end;
until (menu='N') or (menu='n');
writeln('Thanks');
readln;
end.

