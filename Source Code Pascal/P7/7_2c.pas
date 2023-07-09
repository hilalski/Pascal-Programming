{Program Cetak Segitiga rata kanan}
Program Contoh74;
uses crt;
var
i,j,k,t:integer;
kar:char;
begin
        clrscr;
        write('Karakter yang digunakan : ');readln(kar);
        writeln('Ukuran Segitiga rata kanan yang diinginkan');
        write('Tinggi = ');readln(t);
        for i:=t downto 1 do
        begin
                for j:=i-1 downto 1 do
                write(' ');
                        for k:=t-(i-1) downto 1 do
                        write(kar);
        writeln;
        end;
        readln;
end.
