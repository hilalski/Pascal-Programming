program p7no4;
uses crt;
var
 n,i,j,k:integer;
 x:real;
begin
 clrscr;
 writeln('Program Segitiga Pascal');
 write('Masukkan jumlah baris segitiga pascal = ');readln(n);
 for i:=1 to n do
   begin
        write('':3*(n-i));
        for k:=0 to i-1 do
        begin
                x:=1;
                for j:=i-1 downto k+1 do
                begin
                        x:=x*j/(j-k);
                end;
                write(x:6:0);
        end;
        writeln();

   end;
   readln;

end.
