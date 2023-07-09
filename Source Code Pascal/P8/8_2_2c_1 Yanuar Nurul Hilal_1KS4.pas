Program proc2cpar;
uses crt;
var
i,j,m,t:integer;
kar:char;
procedure tinggi(t:integer);
begin
for i:=1 to t do
begin
     for m:=1 to (2*(t-i)) do
          write(' ');
     for j:=1 to 2*i-1 do
     write(kar:2);
     writeln;

end;
end;
begin
clrscr;
Write('Karakter yang digunakan = ');readln(kar);
writeln('Ukuran Segitiga rata tengah yang diinginkan');
write('Tinggi segitiga = '); readln(t);
tinggi(t);

readln;
end.