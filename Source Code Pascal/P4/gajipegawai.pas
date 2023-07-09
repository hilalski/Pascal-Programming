program gaji_pegawai;
uses crt;
var
nama:string;
jk,upah1,upah2,upah3,upah4:real;
gol:integer;

begin
clrscr;
write('Nama = ');readln(nama);
write('Golongan = ');readln(gol);
 If gol=1 then
   begin
        write('Jam Kerja =');readln(jk);
  If jk<=35 then
  upah1:=jk*20000
  Else
  upah1:=(jk-35)*30000+(35*20000);
        writeln('Upah Mingguan = ',upah1:2:2)
  end
 else If gol=2 then
   begin
        write('Jam Kerja = ');readln(jk);
    If jk<=35 then
    upah2:=jk*22500
    Else
    upah2:=(jk-35)*30000+(35*22500);
        writeln('Upah Mingguan = ',upah2:2:2)
    end
 else If gol=3 then
    begin
        write('Jam Kerja = ');readln(jk);
     If jk<=35 then
     upah3:=jk*25000
     Else
     upah3:=(jk-35)*30000+(35*25000);
        writeln('Upah Mingguan = ',upah3:2:2)
    end
 Else
     begin
         write('Jam Kerja = ');readln(jk);
      If jk<=35 then
      upah4:=jk*27500
      Else
      upah4:=(jk-35)*30000+(35*27500);
        writeln('Upah Mingguan = ',upah4:2:2)
     end;
readln;
end.
