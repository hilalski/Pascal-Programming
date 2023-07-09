program penjumlahan;
uses crt;
var
   x,y,res:integer;
procedure plus(a,b:integer);
begin
    res:=a+b;
end;

begin
    write('Masukkan angka 1 = ');readln(x);
    write('Masukkan angka 2 = ');readln(y);
    plus(x,y);
    writeln(x ,' + ', y , ' = ',res);
end.