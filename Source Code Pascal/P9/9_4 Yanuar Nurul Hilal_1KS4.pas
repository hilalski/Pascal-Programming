program fakperkomb;
uses crt;
var x,y: integer;
function factorial(n:integer):integer;
begin
if (n=0) then
factorial := 1
else
factorial := n* factorial(n-1);
end;

function permutasi(n,r:integer):real;
begin
if (n=0) then
permutasi := 1
else
permutasi := factorial(n)/factorial(n-r);
end;

function kombinasi(n,r:integer):real;
begin
kombinasi := permutasi(n,r)/factorial(r);
end;


begin
write('Masukkan nilai n: ');readln(x);
write('Masukkan nilai r: ');readln(y);
writeln;
writeln('Hasil ',x,'P',y,' adalah ', permutasi(x,y):1:0);
writeln('Hasil ',x,'C',y,' adalah ', kombinasi(x,y):1:0);
readln;
end.