Program func2cpar;
uses crt;
var
i,j,k,t:integer;
kar:char;
function rateng(t:integer;kar:char):integer;
begin
for i:=1 to t do
        begin
                for j:=t downto i do
                        write(' ');
                for k:=1 to i do
                        write(kar:2);
        writeln;
        end; 
end;

begin
        clrscr;
        Write('Karakter yang digunakan : ');readln(kar);
        writeln('Ukuran Segitiga rata tengah yang diinginkan');
        write('Tinggi = ');readln(t);
        rateng(t,kar);
        readln;
end.
