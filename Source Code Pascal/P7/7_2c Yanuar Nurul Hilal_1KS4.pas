{Program segitiga rata tengah}
Program Contoh74;
uses crt;
var
i,j,m,n:integer;
kar:char;
begin
clrscr;
Write('Karakter yang digunakan = ');readln(kar);
writeln('Ukuran Segitiga rata tengah yang diinginkan');
write('Tinggi segitiga = '); readln(n);
for i:=1 to n do
begin
     for m:=1 to (2*(n-i)) do
          write(' ');
     for j:=1 to 2*i-1 do
     write(kar:2);
     writeln;

end;
readln;
end.
