program func3apar;
uses crt;
var
 i,j,m,n:integer;
kar:char;
function raki(n:integer;kar:char):integer;
begin
for i:=1 to n do
begin
for j:=1 to i do
     if (j=1) or (j=i) or (i=n) then
     write(kar:2)
     else write('  ');
 writeln;
end;
end;
begin
clrscr;
write('Masukkan karakter yang digunakan = ');readln(kar);
write('Masukkan tinggi segitiga = '); readln(n);
raki(n,kar);
readln;
end.
