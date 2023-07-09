Program bonuspegawai;
uses crt;
var
    golongan : string;
    umur, lama : real;
const
a = 1000000;
b = 500000;
c = 400000;
d = 250000;

begin
clrscr;
writeln('Penghitungan Bonus Pegawai');
write('Masukkan Golongan [Staf/Non Staf] = ');readln(golongan);
write('Masukkan Lama Bekerja = ');readln(lama);
write('Masukkan Umur = ');readln(umur);
    If golongan = 'Staf' then
         begin
             if (lama >= 5) and (umur >= 50) then
             begin
              writeln('Bonus Anda Sebesar Rp',a)
             end
             else if (lama >= 5) and (umur < 50) then
             begin
              writeln('Bonus Anda Sebesar Rp',d)
             end
             else if (lama < 5) and (umur > 0) then
             begin
              writeln('Bonus Anda Sebesar Rp',b)
             end;
     end
    else if golongan = 'NonStaf' then
          begin
            if (umur >= 50) or (lama >=5 ) then
             begin
              writeln('Bonus Anda Sebesar Rp',c)
             end
            else
             begin
              writeln('Bonus Anda Sebesar Rp',d)
             end;
     end
    else
     begin
      writeln('Input Tidak Valid')
     end;
readln;
end.
