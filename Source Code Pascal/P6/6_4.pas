program deret_ganjil;
var
n,a,tanda,i: integer;
jumlah:real;
begin
    write('Masukkan nilai n = ');readln(n);
    if n mod 2=1 then
        begin
        a:=n div 2;
        tanda:=-1;
        jumlah:=1;
        i:=1;
        for i:=1 to a  do
            begin
            jumlah:=jumlah+tanda/(i*2+1);
            tanda:=-tanda;
        end;
        writeln('Hasilnya adalah = ',jumlah:2:2);
    end
    else
    writeln('Input anda salah');
    readln;
end.
