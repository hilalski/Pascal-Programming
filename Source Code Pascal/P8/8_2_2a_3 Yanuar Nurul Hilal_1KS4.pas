Program func2apar;
uses crt;
var
i,j,t:integer;
kar:char;
function raki(t:integer;kar:char):integer;
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
        raki(t,kar);
        readln;
end.