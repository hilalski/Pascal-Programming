program func3cpar;
uses crt;
var
 i,j,t:integer;
 kar:char;
function rateng(t:integer;kar:char):integer;
begin
for i:=1 to t do
   begin
     for j:=1 to (t+1-i) do
        write(' ');
     for j:=1 to i do
        if (j=1) or (j=i) or (i=t) then
                write(kar:2)
        else
                write(' ':2);
         writeln;
   end;   
end;
begin
 clrscr;
 write('Karakter yang digunakan = ');readln(kar);
 writeln('Ukuran segitiga rata tengah yang diinginkan');
 write('Tinggi segitiga = ');readln(t);
 rateng(t,kar);
 readln;
end.