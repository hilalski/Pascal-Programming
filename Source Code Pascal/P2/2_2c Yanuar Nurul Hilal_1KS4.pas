program coba3;
uses crt;
var
        pjj:real;
        luas:real;
const
        pi=22/7;
begin
        clrscr;
        writeln('Mencari Luas Lingkaran');
        writeln('======================');
        write('Input Panjang jari-jari (cm) = ');readln(pjj);
        luas:=pi*pjj*pjj;
        writeln('Luas adalah (cm2) = ',luas:4:2);
        readln;
end.
