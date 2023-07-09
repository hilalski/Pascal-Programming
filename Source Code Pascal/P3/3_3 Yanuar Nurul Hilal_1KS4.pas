program nilaitabel;
uses crt;
var
 x,m,sd,z:real;
begin
clrscr;
 writeln('NILAI TABEL DARI DISTRIBUSI NORMAL');
 writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
 write('Nilai rata-rata masing-masing (x) = ');readln(x);
 write('Nilai rata-rata keseluruhan (m) = ');readln(m);
 write('Standar Deviasi (sd) = ');readln(sd);
 z:=(x-m)/sd;
 write('Nilai Tabel (z) = ',z:2:2);
 readln;
end.
