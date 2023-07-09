program func2bpar;
uses crt;
var
i,j,k,t:integer;
kar:char;
function raka(t:integer;kar:char):integer;
begin
    for i:=1 to t do
        begin
                for j:=1 to (t-i) do
                write(' ');
                        for k:=1 to i do
                        write(kar);
                writeln;
     end;
end;
begin
        clrscr;
        write('Karakter yang digunakan = ');readln(kar);
        writeln('Ukuran Segitiga rata kanan yang diinginkan');
        write('Tinggi = ');readln(t);
        raka(t,kar);
        readln;
end.