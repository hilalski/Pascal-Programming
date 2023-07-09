{Program segitiga rata kanan}
program Contoh74;
uses crt;
var
i,j,k,t:integer;
kar:char;
begin
        clrscr;
        write('Karakter yang digunakan = ');readln(kar);
        writeln('Ukuran Segitiga rata kanan yang diinginkan');
        write('Tinggi = ');readln(t);
        for i:=1 to t do
        begin
                for j:=1 to (t-i) do
                write(' ');
                        for k:=1 to i do
                        write(kar);
                writeln;
        end;
        readln;
end.