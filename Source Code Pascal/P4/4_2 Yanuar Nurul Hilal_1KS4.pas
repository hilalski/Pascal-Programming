program readsuhu;
uses crt;
var
suhu:integer;

begin
clrscr;
    write('Masukkan suhu = ');readln(suhu);

if suhu<=0 then
    write('Beku')
else if (suhu>0) and (suhu<100) then
    write('Cair')
else
    write('Uap');
readln;
end.
