program fun3bpar;
uses crt;
var
i,j,t:integer;
kar:char;
function raka(t:integer;kar:char):integer;
begin
for i:=1 to t do
begin
        for j:=1 to t do
        begin
                if (i=t) or (j=t) or (j=t+1-i) then
                 write(kar:2)
                else
                 write(' ':2);
        end;
        writeln;
end;
end;
begin
clrscr;
write('Karakter yang digunakan = ');readln(kar);
writeln('Ukuran segitiga yang diinginkan');
write('Tinggi segitiga = ');readln(t);
raka(t,kar);
readln
end.
