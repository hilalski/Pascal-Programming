program edm;
uses crt;
type
    data=record
    nim:string[10];
    nama:string[50];
    kelas:string[5];
    nilai:integer;
    end;
var
    mhs:array[1..38] of data;
    i,n,max,min,menu,jml:integer;
    rata:real;
    ml:char;
    
procedure input;
    begin
    write ('Masukkan jumlah mahasiswa = ');readln(n);
    for i:=1 to n do
        begin
        writeln('Data mahasiswa ke-',i);
        with mhs[i] do
            begin
            write('NIM    = ');readln(nim);
            write('Nama   = ');readln(nama);
            write('Kelas  = ');readln(kelas);
            write('Nilai  = ');readln(nilai);
            end;
        end;
    end;
    
procedure tampil;
    begin
    clrscr;
    writeln('============================');
    writeln('Daftar Nilai Alpro Mahasiswa');
    writeln('============================');	 
   for i:=1 to n do
        begin
        writeln('Data mahasiswa ke-',i);
        with mhs[i] do
            begin
            writeln('NIM    = ',mhs[i].nim);
            writeln('Nama   = ',mhs[i].nama);
            writeln('Kelas  = ',mhs[i].kelas);
            writeln('Nilai  = ',mhs[i].nilai);
            writeln();
            end;
        end;
    writeln;
    end;
    
procedure nmax;
    begin
    max:=mhs[1].nilai;
    for i:=1 to n do
        begin
        if mhs[i].nilai>max then
            max:=mhs[i].nilai
        else max:=max;
        end;
    writeln('Nilai Alpro Terbesar adalah ', max);
    end;
    
procedure nmin;
    begin
    min:=mhs[1].nilai;
    for i:=1 to n do
        begin
        if mhs[i].nilai<min then
        min:=mhs[i].nilai
        else min:=min;
        end;
    writeln('Nilai Alpro terkecil adalah ', min);
    end;
    
procedure ratarata;
    begin
    jml:=0;
    for i:=1 to n do
        begin
        jml:=jml+mhs[i].nilai;
        end;
    rata:=jml/n;
    writeln('Nilai rata-rata Alpro adalah ', rata:2:2);
    end;

procedure lagi;
    begin
    writeln();
    write('Ingin menggunakan menu lain ? [Y/N] = ');readln(ml);
    end;


procedure start;
begin
repeat
    clrscr;
    writeln('Selamat Datang di Program Entri Data Mahasiswa');
    writeln('Silakan pilih menu berikut : ');
    writeln('1. Input Data');
    writeln('2. Tampilkan Data');
    writeln('3. Nilai Alpro Terbesar');
    writeln('4. Nilai Alpro Terkecil');
    writeln('5. Rata-rata Nilai Alpro');
    writeln('6. Keluar');
    write('Pilihan anda ? [1/2/3/4/5/6] = ');readln(menu);
  
    case menu of
    1: begin input; lagi; end;
    2: begin tampil; lagi; end;
    3: begin nmax; lagi; end;
    4: begin nmin; lagi; end;
    5: begin ratarata; lagi; end;
    6: begin lagi; end;
    end;
until (ml='n') or (ml='N');
end;

begin
    start;
    writeln();
    writeln('Terima Kasih');
    readln;
end.


