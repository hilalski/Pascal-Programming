program proc1par;
uses crt
var
i,j,n:integer;
procedure baris;
    begin
    clrscr;
    for i:=1 to n do
        begin   
        for j:=0 to 9 do
        if (i mod 2=1) then
            write(j,' ')
        else
            write(9-j,' ');
        writeln;
        end;
    end;
begin
write('Masukkan jumlah baris = ');readln(n);
baris;
readln;
end.