program matkul;
uses crt;
var
hari:string;

begin
clrscr;
write('Hari = ');readln(hari);
if hari='senin' then
write('Mata kuliah yang diberikan Algoritma dan Pemrograman I')
else if hari='selasa' then
write('Mata kuliah yang diberikan Kalkulus')
else if hari='rabu' then
write('Mata kuliah yang diberikan Bahasa Indonesia')
else if hari='kamis' then
write('Mata kuliah yang diberikan Pengantar Teknik Informatika')
else if hari='jumat' then
write('Mata kuliah yang diberikan Bahasa Inggris')
else if hari='sabtu' then
write('Mata kuliah yang diberikan Basis Data')
else
 begin
 write('Hari tidak valid')
 end;
readln;
end.
