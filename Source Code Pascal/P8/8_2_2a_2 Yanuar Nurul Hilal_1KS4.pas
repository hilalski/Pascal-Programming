Program proc2atapar;
uses crt;
var
i,j,t:integer;
kar:char;
procedure tinggi;
begin
for i:=1 to t do
        begin
                for j:=1 to i do
                write(kar:2);
        writeln;
        end;
end;
begin
        clrscr;
        write('Karakter yang digunakan : ');readln(kar);
        writeln('Ukuran Segitiga rata kiri yang diinginkan');
        write('Tinggi = ');readln(t);
        tinggi;
        readln;
end.