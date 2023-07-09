program  tabel_harga;
uses crt;
var
i:integer;
const
c=125;
begin
clrscr;
writeln('TABEL HARGA FOTOKOPI');
writeln('|----------|---------|');
writeln('|LEMBAR    |HARGA    |');
writeln('|----------|---------|');
for i := 1 to 100 do
begin
writeln('|',i:10,'|',i*c:9,'|');
end;
writeln('|----------|---------|');
readln;
end.
