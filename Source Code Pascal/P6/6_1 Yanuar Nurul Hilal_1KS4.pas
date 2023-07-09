program jumlah_deret_angka;
uses crt;
var
n,jumlah,i:integer;
begin
    clrscr;
    writeln('Program Menghitung Deret Angka 1 sampai n');
    write('Masukkan nilai n = ');readln(n);
    i:=1;
    jumlah:=0;
    while i<=n do
    begin
        if i<n then
            write(i,' + ')
        else
            write(i);
        jumlah:=jumlah+i;
        i:=i+1
    end;
    writeln (' = ',jumlah);
 readln;
end.