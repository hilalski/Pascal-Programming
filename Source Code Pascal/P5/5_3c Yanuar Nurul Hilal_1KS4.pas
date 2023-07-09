Program Contoh53;
uses crt;
var
nilai : integer;

begin
clrscr;
writeln('Input nilai yang Anda dapatkan 0 s.d. 100');
write('Nilai Anda = ');
readln(nilai);


if (nilai>=0) and (nilai<=59) then
    writeln('Anda tidak lulus')

else if (nilai>=60) and (nilai<=100) then
    begin
    write('Anda lulus');
    if (nilai>=60) and(nilai<=74) then
    write(' dengan nilai cukup')
    else if (nilai>=75) and (nilai<=89) then
    write(' dengan nilai baik')
    else
    write(' dengan sangat baik');
    end
else
writeln('Anda salah input nilai');
readln;
end.
