program p7no1;
uses crt;
var
i,j,n:integer;
begin
    clrscr;
    write('Masukkan jumlah baris = ');readln(n);
    for i:=1 to n do
        begin
        for j:=0 to 9 do
        if (i mod 2=1) then
            write(j,' ')
        else
            write(9-j,' ');
    writeln;
    end;
    readln;
end.
