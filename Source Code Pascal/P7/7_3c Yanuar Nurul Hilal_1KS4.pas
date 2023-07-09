program p7no3c;
uses crt;
var
 i,j,t:integer;
 kar:char;
begin
 clrscr;
 write('Karakter yang digunakan = ');readln(kar);
 writeln('Ukuran segitiga rata tengah yang diinginkan');
 write('Tinggi segitiga = ');readln(t);
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
 readln;
end.