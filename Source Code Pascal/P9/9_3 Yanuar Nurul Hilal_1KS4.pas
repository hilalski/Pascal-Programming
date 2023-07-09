program kalkulator_sederhana;
uses crt;
var
   a,b,menu:integer;
   c:char;
   label lagi,stp;

function plus(a:integer;b:integer):integer;
var ret:integer;
begin
    plus:=a+b;
    ret:=plus;
    writeln(a,' + ',b,' = ',ret:2);
end;

function minus(a:integer;b:integer):integer;
var ret:integer;
begin
    minus:=a-b;
    ret:=minus;
    writeln(a,' - ',b,' = ',ret:2);
end;

function multiply(a:integer;b:integer):integer;
var ret:integer;
begin
    multiply:=a*b;
    ret:=multiply;
    writeln(a,' x ',b,' = ',ret:2);
end;

function divide(a:integer;b:integer):real;
var ret:real;
begin
    divide:=a/b;
    ret:=divide;
    writeln(a,' / ',b,' = ',ret:2:2);
end;

begin
clrscr;
lagi:
writeln('Selamat datang di Kalkulator Sederhana');
writeln('Silakan pilih menu berikut :');
writeln('1.Penjumlahan');
writeln('2.Pengurangan');
writeln('3.Perkalian');
writeln('4.Pembagian');
writeln('5.Keluar');
write('Pilihan Anda[1/2/3/4/5] = ');readln(menu);
    if menu = 5 then goto stp
    else
     write('Masukkan angka 1 = ');readln(a);
     write('Masukkan angka 2 = ');readln(b);
case menu of
1:plus(a,b);
2:minus(a,b);
3:multiply(a,b);
4:divide(a,b);
end;

writeln('Tekan Y untuk mencoba lagi atau N untuk keluar');readln(c);
if c='y' then goto lagi
else if c='n' then goto stp
else goto stp;
stp:
write('Thanks');

readln;
end.
