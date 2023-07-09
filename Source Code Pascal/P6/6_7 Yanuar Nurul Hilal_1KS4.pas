program hitung_jumlah;
uses crt;
var
u,i,n,j17,j18,j19,j20,jlain:integer;
begin

clrscr;
write('Masukkan jumlah mahasiswa=');readln(n);
i:=1;
j17:=0;
j18:=0;
j19:=0;
j20:=0;
jlain:=0;
while i<=n do
    begin
        write('Masukkan usia mahasiswa ke ',i,'= ');readln(u);
        i:=i+1;
        case u of
            17 : j17:=j17+1;
            18 : j18:=j18+1;
            19 : j19:=j19+1;
            20 : j20:=j20+1
        else
            jlain:=jlain+1;
        end;
    end;
writeln('Jumlah mahasiswa berusia 17 tahun = ',j17);
writeln('Jumlah mahasiswa berusia 18 tahun = ',j18);
writeln('Jumlah mahasiswa berusia 19 tahun = ',j19);
writeln('Jumlah mahasiswa berusia 20 tahun = ',j20);
writeln('Jumlah mahasiswa berusia selain itu = ',jlain);
readln;
end.
