{Program Cetak Segitiga rata tengah}
Program Contoh74;
uses crt;
var
i,j,k,t:integer;
kar:char;
begin
        clrscr;
        Write('Karakter yang digunakan : ');readln(kar);
        writeln('Ukuran Segitiga rata tengah yang diinginkan');
        write('Tinggi = ');readln(t);
        for i:=1 to t do
        begin
                for j:=t downto i do
                        write(' ');
                for k:=1 to i do
                        write(kar:2);
        writeln;
        end;
        readln;
end.
