program p5n2;
uses crt;
var
angka:real;

begin
clrscr;
write('masukkan angka = ');readln(angka);
case round(angka) of
1 : writeln('a');
2 : writeln('b');
3 : writeln('c');
else
writeln('d');
end;
readln;
end.