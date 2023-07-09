program func1par;

uses crt;
var
    b,i,j:integer;
function baris(x:integer):integer;
begin
    for i:=1 to x do
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
    write('Masukkan banyak baris : '); readln(b);
    baris(b);
    readln;
end.