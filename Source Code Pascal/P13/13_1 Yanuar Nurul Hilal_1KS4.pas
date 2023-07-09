program binaryrec;
uses crt;
type Larik=array[1..10] of integer;

Function BinarySearch(A:larik; low:integer; high:integer; X:integer):integer;
var
    mid: integer;
begin 
    if (high < low) then BinarySearch:=0
    else 
        begin 
            mid := (low + high) div 2;
            if (A[mid] > X) then BinarySearch:= BinarySearch(A,low,mid-1,x)
            else if (A[mid] = X) then BinarySearch:= mid
            else if(A[mid] < X) then BinarySearch:= BinarySearch(A,mid+1,high,x);
        end;
end;
var 
    A: larik;
    i,n,cari,hasil : integer;
begin
    clrscr;
    n:=10;
    for i :=1 to n do A[i]:= i*100;
    write('Masukkan data yang dicari: ');readln(cari);
    hasil:=BinarySearch(A,1,n,cari);
    if (hasil=0) then writeln('Data tidak ditemukan')
    else writeln('Data yang dicari berada pada indeks ke-',hasil);
end.