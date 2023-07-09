program penjumlahan2;
uses crt;
var
   x,y,res:integer;
procedure plus(a,b:integer; var res:integer);
begin
    res:=a+b;
end;

begin
    write('Masukkan angka 1 = ');readln(x);
    write('Masukkan angka 2 = ');readln(y);
    plus(x,y,res);
    writeln(x ,' + ', y , ' = ',res);
end.