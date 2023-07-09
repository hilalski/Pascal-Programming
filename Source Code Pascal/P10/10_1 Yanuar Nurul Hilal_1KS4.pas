program appstat;
uses crt;
var
x:array[1..100] of  integer;
m,n,i,total,bes,kec:integer;
rt:real;

function input(n:integer;i:integer):integer;
begin
    write('Silakan input banyak data = ');readln(n);
    for i:=1 to n do
    begin
        write('Data ke-',i,' = ');
        readln(x[i]);
    end;
end;

function tampil(n:integer;i:integer):integer;
begin
    write('Silakan input banyak data = ');readln(n);
    for i:=1 to n do
    begin
        write('Data ke-',i,' = ');
        readln(x[i]);
    end;
    write('Data yang dimasukkan = ');
    for i:=1 to n do
    write(x[i],' ');
end;

function minimum(n:integer;i:integer):integer;
begin
    kec:=9999;
    write('Silakan input banyak data = ');readln(n);
    for i:=1 to n do
    begin
        write('Data ke-',i,' = ');
        readln(x[i]);
    if (x[i]) < kec then kec:=(x[i]);
    end;
    writeln('Data terkecil = ',kec);
end;

function maksimum(n:integer;i:integer):integer;
begin
    bes:=1;
    write('Silakan input banyak data = ');readln(n);
    for i:=1 to n do
    begin
        write('Data ke-',i,' = ');
        readln(x[i]);
    if (x[i]) > bes then bes:=(x[i]);
    end;
    writeln('Data terbesar = ',bes);
end;

function rata(n:integer;i:integer):integer;
begin
    write('Silakan input banyak data = ');readln(n);
    for i:=1 to n do
    begin
        write('Data ke-',i,' = ');
        readln(x[i]);
    end;
    total:=0;
    for i:=1 to n do
    total:=total+(x[i]);
    rt:=total/n;
    writeln('Rata-rata = ',rt:2:2);
end;


begin
clrscr;
writeln('Selamat datang di aplikasi statistik sederhana');
writeln('Silakan pilih menu berikut : ');
writeln('1. Tampilkan semua data');
writeln('2. Tampilkan data terkecil');
writeln('3. Tampilkan data terbesar');
writeln('4. Tampilkan rata-rata');
writeln('5. Keluar' );
write('Pilihan Anda[1/2/3/4/5] = ');readln(m);
case m of
1:tampil(n,i);
2:minimum(n,i);
3:maksimum(n,i);
4:rata(n,i);
end;
readln;
end.
