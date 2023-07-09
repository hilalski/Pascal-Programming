program kalkulator_sederhana;
uses crt;
var
   a,b,n,menu,hasil:integer;
   c:char;
   label lagi,stp,kasus;

function tambah(a:integer;b:integer):integer;
var result:integer;
begin
    tambah:=a+b;
    result:=tambah;
    writeln(a,' + ',b,' = ',result:2);
end;

function kurang(a:integer;b:integer):integer;
var result:integer;
begin
    kurang:=a-b;
    result:=kurang;
    writeln(a,' - ',b,' = ',result:2);
end;

function kali(a:integer;b:integer):integer;
var result:integer;
begin
    kali:=a*b;
    result:=kali;
    writeln(a,' x ',b,' = ',result:2);
end;

function bagi(a:integer;b:integer):real;
var result:real;
begin
    bagi:=a/b;
    result:=bagi;
    writeln(a,' / ',b,' = ',result:2:2);
end;

function faktorial(n:integer):integer;
begin
    if (n=0) or (n=1) then faktorial := 1
    else
    faktorial := n* faktorial(n-1);
end;

begin
clrscr;
lagi:
writeln('Selamat datang di Kalkulator Sederhana');
writeln('Silakan pilih menu berikut :');
writeln('1. Penjumlahan');
writeln('2. Pengurangan');
writeln('3. Perkalian');
writeln('4. Pembagian');
writeln('5. Faktorial');
writeln('6. Keluar');
write('Pilihan Anda[1/2/3/4/5/6] = ');readln(menu);
    if menu = 6 then goto stp
    else if menu = 5 then
    begin
        write('Masukkan angka = ');readln(n);
        goto kasus;
    end
    else
    begin
        write('Masukkan angka 1 = ');readln(a);
        write('Masukkan angka 2 = ');readln(b);
        goto kasus;
    end;
kasus:
case menu of
1:tambah(a,b);
2:kurang(a,b);
3:kali(a,b);
4:bagi(a,b);
5: begin
hasil:=faktorial(n);
writeln('Hasil dari ',n,'! adalah ',hasil);
end;
end;

writeln('Tekan Y untuk mencoba lagi atau N untuk keluar');readln(c);
if c='y' then goto lagi
else if c='n' then goto stp
else goto stp;
stp:
write('Thanks');

readln;
end.
