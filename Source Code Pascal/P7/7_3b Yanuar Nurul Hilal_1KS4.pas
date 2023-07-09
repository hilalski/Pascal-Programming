program p7no3b;
uses crt;
var
i,j,t:integer;
kar:char;
begin
clrscr;
write('Karakter yang digunakan = ');readln(kar);
writeln('Ukuran segitiga yang diinginkan');
write('Tinggi segitiga = ');readln(t);
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
readln
end.
