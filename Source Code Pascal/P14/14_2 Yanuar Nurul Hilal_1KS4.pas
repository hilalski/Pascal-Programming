program edm;
uses crt;
type
    data=record
    nim:string[10];
    nama:string[50];
    kelas:string[5];
    nilai:integer;
    end;
    datamhs=array[1..38] of data;
var
    mhs:datamhs;
    i,n,max,min,menu,jml:integer;
    rata:real;
    ml:char;
    x:string;

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

function cari(var mahasiswa:datamhs; n:integer; var x:string):integer;
var i: integer;
begin
    begin
        i:=1;
        while (i<n) and (mahasiswa[i].nama <> x) do i:=i+1;
        if (mahasiswa[i].nama <> x) then cari:=0
        else cari:=i;
    end;
    if cari=i then
    begin
        writeln('Data ditemukan!');
            with mahasiswa[i] do
            begin
                writeln('Nilai alpro  ',nama,' adalah ',nilai);
                writeln();
                writeln();
            end;

    end
    else writeln('Data tidak ditemukan!');
end;

procedure urutnama(n:integer);
var i,j:integer;
    temp:data;
begin
	for i:=1 to n-1 do
	begin
		for j:=1 to n-1 do
		if(mhs[j+1].nama<mhs[j].nama) then
		begin
		temp:=mhs[j+1];
		mhs[j+1]:=mhs[j];
		mhs[j]:=temp;
		end;
	end;
end;

procedure urutnilai(n:integer);
var i,j:integer;
    temp:data;
begin
	for i:=1 to n-1 do
	begin
		for j:=1 to n-1 do
		if (mhs[j+1].nilai > mhs[j].nilai) then
		begin
		temp:=mhs[j+1];
		mhs[j+1]:=mhs[j];
		mhs[j]:=temp;
		end;
	end;
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
    writeln('6. Cari nilai Alpro');
    writeln('7. Urutkan berdasarkan Nama');
    writeln('8. Urutkan berdasarkan Nilai Alpro');
    writeln('9. Keluar');
    write('Pilihan anda ? [1/2/3/4/5/6/7/8/9] = ');readln(menu);

    case menu of
    1: begin input; lagi; end;
    2: begin tampil; lagi; end;
    3: begin nmax; lagi; end;
    4: begin nmin; lagi; end;
    5: begin ratarata; lagi; end;
    6: begin
	write('Masukkan nama = ');readln(x);
	cari(mhs,n,x); lagi;
	end;
    7: begin; urutnama(n); writeln('Data telah diurutkan berdasarkan Nama !'); lagi; end;
    8: begin; urutnilai(n); writeln('Data telah diurutkan berdasarkan Nilai !'); lagi; end;
    end;
until (ml='n') or (ml='N') or (menu=9);
end;
begin
    start;
    writeln();
    writeln('Terima Kasih');
    readln;
end.
