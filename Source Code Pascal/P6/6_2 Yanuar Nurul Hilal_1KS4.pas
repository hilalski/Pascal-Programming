program anak_ayam;
uses crt;
var
n,ayam:integer;
begin
    clrscr;
    write('Masukkan Jumlah Anak Ayam = ');readln(n);
    ayam:=n;
    if n>=1 then
        begin
            writeln('Anak Ayam turun ',ayam);
            while ayam>1 do
            begin
                write('Anak Ayam turun ',ayam);writeln(', mati satu tinggal ',ayam-1);
                ayam:=ayam-1;
            end;
            writeln('Anak Ayam turun 1, mati satu tinggal induknya.');
        end
    else
    write('Tidak ada Anak Ayam');
    readln;
end.
