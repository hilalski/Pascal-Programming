Program matriks;
uses crt;
var m1,m2,hasil:array [1..10,1..10] of integer;
    x,y,z,a,b,c : integer;
    procedure perkalian;
    begin
        clrscr;
        writeln('OPERASI PERKALIAN MATRIKS');
        writeln('=========================');
        writeln('Matriks pertama');
        write ('Masukan jumlah baris : ');readln(a);
        write ('Masukan jumlah kolom : ');readln(b);
        writeln;
        writeln('Elemen Matriks');
        writeln('Masukan jumlah baris : ',b);
        write('Masukan jumlah kolom : '); readln (c);
        writeln;
        writeln ('Elemen matriks pertama');
        for x:= 1 to a do
        begin
                for y:= 1 to b do
                begin
                        write ('Masukan elemen matriks [',x,',',y,'] : '); readln (m1[x,y]);
                end;
        end;
        writeln;
        writeln ('Elemen Elemen Matriks');
        for y:= 1 to b do
        begin
                for z:= 1 to c do
                begin
                        write ('Masukan elemen matriks [',y,',',z,'] : '); readln (m2[y,z]);
                end;
        end;
        for x:=1 to a do
                for y:=1 to c do
                        for z:=1 to b do
                                hasil[x,y] := hasil[x,y] + m1[x,z]*m2[z,y];
        writeln;
        clrscr;
        writeln('Hasil perkalian matriks 1 = ');
        for x:= 1 to a do
        begin
                for y:= 1 to b do
                        write(m1[x,y],' ');
                writeln;

        end;
        writeln('dengan matriks 2 = ');
        for y:= 1 to b do
        begin
                for z:= 1 to c do
                        write(m2[y,z],' ');
                writeln;
        end;
        writeln('Adalah');
        for x:=1 to a do
        begin
            for y:=1 to c do
                write(hasil[x,y],' ');
            writeln;
        end;
        writeln;
    readln;
    end;

    procedure Determinan;
    var matriks,determinan: array [1..10,1..10] of integer;
        x,y,ordo:integer;
    begin
        clrscr;
        writeln('OPERASI DETERMINAN MATRIKS');
        writeln('=========================-');
        write ('Masukan jumlah kolom dan baris matriks persegi/ordo matriks = ');readln (ordo);
        writeln('Elemen Matriks');
        writeln;
        for x:= 1 to ordo do
        begin
                for y:= 1 to ordo do
                begin
                        write ('Masukan elemen matriks [',x,',',y,'] : '); readln (matriks[x,y]);
                end;
        end;
        clrscr;
        writeln('Matriks yang terbentuk');
        for x:= 1 to ordo do
        begin
                for y:= 1 to ordo do
                begin
                        write(matriks[x,y],' ');
                        if y=ordo then writeln;
                end;
        end;
        writeln;
        if (ordo=2) then
        begin  {dengan cara sarrus}
                determinan[x,y]:=matriks[x-1,y-1]*matriks[x,y]-matriks[x,y-1]*matriks[x-1,y];
                writeln('Determinan matriks tersebut adalah = ',determinan[x,y]);
        end
        else if (ordo=3) then
        begin  {dengan cara sarrus}
            determinan[x,y]:=(matriks[x-2,y-2]*matriks[x-1,y-1]*matriks[x,y]+matriks[x-2,y-1]*matriks[x-1,y]
                                *matriks[x,y-2]+matriks[x-2,y]*matriks[x-1,y-2]*matriks[x,y-1])-(matriks[x,y-2]
                                *matriks[x-1,y-1]*matriks[x-2,y]+matriks[x,y-1]*matriks[x-1,y]*matriks[x-2,y-2]
                                +matriks[x,y]*matriks[x-1,y-2]*matriks[x-2,y-1]);
            writeln('Determinan matriks tersebut adalah = ',determinan[x,y]);
        end
        else writeln('Ordo nya lebih dari 3x3 sehingga determinannya tidak dapat ditemukan');
        writeln;
    end;

    Procedure transpose;
    var matriks: array [1..10,1..10] of integer;
        x,y,a,b : integer;
    begin
        clrscr;
        writeln('OPERASI TRANSPOSE MATRIKS');
        writeln('=========================');
        write('Masukkan jumlah baris = ');readln(a);
        write ('Masukan jumlah kolom = ');readln(b);
        writeln('Elemen Matriks');
        writeln;
        for x:= 1 to a do
        begin
                for y:= 1 to b do
                begin
                        write ('Masukan elemen matriks [',x,',',y,'] : '); readln (matriks[x,y]);
                end;
        end;
        clrscr;
        Writeln('Matriks berordo ',a,' x ',b,' tersebut adalah');
        for x:=1 to a do
        begin
                for y:=1 to b do
                begin
                        write(matriks[x,y],' ');
                        if y=b then writeln;
                end;
        end;
        writeln;
        writeln('Hasil dari transpose matriks tersebut adalah');
        for y:=1 to b  do
        begin
                for x:=1 to a do
                        write(matriks[x,y],' ');
        writeln;
        end;
    end;

    procedure invers;
    var matriks,determinan: array [1..10,1..10] of integer;
        x,y,ordo : integer;
    begin
        clrscr;
        writeln('OPERASI INVERS MATRIKS');
        writeln('----------------------');
        write('Masukan jumlah kolom dan baris matriks persegi/ordo matriks = '); readln(ordo);
        writeln('Elemen Matriks');
        writeln;
        if (ordo=2) then
        begin
                for x:= 1 to ordo do
                begin
                    for y:= 1 to ordo do
                    begin
                        write ('Masukan elemen matriks [',x,',',y,'] : '); readln (matriks[x,y]);
                    end;
                end;
                writeln('Invers dari matriks |',matriks[x-1,y-1],' ',matriks[x-1,y],'| adalah');
                writeln('                    |',matriks[x,y-1],' ',matriks[x,y],'|');
                determinan[x,y]:=matriks[x-1,y-1]*matriks[x,y]-matriks[x,y-1]*matriks[x-1,y];
                writeln(' 1  x |',matriks[x,y],'   ',-matriks[x-1,y],'|');
                writeln(determinan[x,y]:3,'   |',-matriks[x,y-1],'   ',matriks[x-1,y-1],'|');
        end
        else writeln('Hanya dapat mencari invers ordo 2x2!');
end;

var
    pilih:integer;
    lagi:char;
label ulangi;
begin
    ulangi :
    clrscr;
    writeln('Selamat datang di kalkulator matriks');
    writeln('Silakan pilih menu berikut :');
    writeln('1. Perkalian matriks');
    writeln('2. Determinan matriks');
    writeln('3. Transpose matriks');
    writeln('4. Invers matriks');
    writeln('5. Keluar');
    write('  Pilihan anda ?[1/2/3/4/5] : ');
    readln(pilih);

    case pilih of
    1:  begin
            perkalian;
            write('Apakah Anda ingin melakukan perhitungan matriks lain ? (Y/T) = ');readln(lagi);
            if (lagi='Y') or (lagi='y') then
                goto ulangi;
            if (lagi='T') or (lagi='t') then
                writeln('Thanks :)')
            else write('Input salah, masukkan karakter Y atau T ! = ');readln(lagi);
            if (lagi='Y') or (lagi='y') then
                goto ulangi;
            if (lagi='T') or (lagi='t') then
                writeln('Thanks :)');
        end;
    2:  begin
            determinan;
            write('Apakah Anda ingin melakukan perhitungan matriks lain ? (Y/T) = ');readln(lagi);
            if (lagi='Y') or (lagi='y') then
                goto ulangi;
            if (lagi='T') or (lagi='t') then
                writeln('Thanks :)')
            else write('Input salah, masukkan karakter Y atau T ! = ');readln(lagi);
            if (lagi='Y') or (lagi='y') then
                goto ulangi;
            if (lagi='T') or (lagi='t') then
                writeln('Thanks :)');
        end;
    3:  begin
            transpose;
            write('Apakah Anda ingin melakukan perhitungan matriks lain ? (Y/T) = ');readln(lagi);
            if (lagi='Y') or (lagi='y') then
                goto ulangi;
            if (lagi='T') or (lagi='t') then
                writeln('Thanks :)')
            else write('Input salah, masukkan karakter Y atau T ! = ');readln(lagi);
            if (lagi='Y') or (lagi='y') then
                goto ulangi;
            if (lagi='T') or (lagi='t') then
                writeln('Thanks :)');
        end;
    4:  begin
            invers;
            write('Apakah Anda ingin melakukan perhitungan matriks lain ? (Y/T) = ');readln(lagi);
            if (lagi='Y') or (lagi='y') then
                goto ulangi;
            if (lagi='T') or (lagi='t') then
                writeln('Thanks :)')
            else write('Input salah, masukkan karakter Y atau T ! = ');readln(lagi);
            if (lagi='Y') or (lagi='y') then
                goto ulangi;
            if (lagi='T') or (lagi='t') then
                writeln('Thanks :)');
        end;
    5:  writeln('Thanks');
    end;
readln;
end.
