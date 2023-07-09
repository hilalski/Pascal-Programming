program harga_bayar;
uses crt;
var
        jb:integer;
        hs:longint;
        pajak:longint;
        hb:longint;
begin
        clrscr;
        writeln('Menentukan Harga Bayar');
        writeln('======================');
        write('Jumlah barang = ');readln(jb);
        write('Harga satuan Rp. = ');readln(hs);
        write('Pajak Rp. = ');readln(pajak);
        hb:=jb*hs+pajak;
        writeln('Harga Bayar Rp.  = ',hb);
        writeln('======================');
        readln;
end.
