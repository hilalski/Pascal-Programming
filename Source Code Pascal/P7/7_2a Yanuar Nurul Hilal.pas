{Program Cetak Segitiga rata kiri}
Program Contoh74;
uses crt;
var
i,j,t:integer;
kar:char;
begin
        clrscr;
        write('Karakter yang digunakan : ');readln(kar);
        writeln('Ukuran Segitiga rata kiri yang diinginkan');
        write('Tinggi = ');readln(t);
        for i:=1 to t do
        begin
                for j:=1 to i do
                write(kar:2);
        writeln;
        end;
        readln;
end.
