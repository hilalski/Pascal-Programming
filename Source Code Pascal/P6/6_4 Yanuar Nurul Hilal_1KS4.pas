program jumlah_deret_ganjil;
uses crt;
var 
posisi,i,n:integer;
jumlah:real;
begin
clrscr;
write('Masukkan nilai n = ');readln(n);
posisi:=1;
if (n mod 2 <> 0) and (n>0) then
 begin
 for i:=1 to n do
  begin
   if (i mod 2 <> 0) then
    begin 
    if (posisi mod 2 <> 0) then
     begin
      jumlah:=jumlah + 1/i;
      if (i=1) then
      write(i, '')
      else
      write( '+ ', '1/', i, '')
      end
    else
     begin
     jumlah:=jumlah-1/i;
     write(' - ','1/', i, '')
     end;
    
    posisi:=posisi+1;
   end;
  end;
 writeln(' = ',jumlah:0:2);
 end
else
writeln('Bilangan harus ganjil positif');
readln;
end.