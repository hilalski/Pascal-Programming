program func1tapar;

uses crt;
var
    i,j,n:integer;
function baris:integer;
begin
    for i:=1 to n do
    begin
        for j:=0 to 9 do
        begin
            if (i mod 2 = 1) then
                write(j, ' ')
            else write(9-j, ' ')
        end;
        writeln;
    end;
end;
begin
    clrscr;
    write('Masukkan banyak baris : '); readln(n);
    baris;
    readln;
end.