program stdev;
uses crt;
var
 x1,x2,x3,x4,x5,rata,varians,sd:real;
const
 n=5;
begin
clrscr;
 writeln('Mencari Standar Deviasi (SD)');
 writeln('============================');
 write('Data ke 1 = ');readln(x1);
 write('Data ke 2 = ');readln(x2);
 write('Data ke 3 = ');readln(x3);
 write('Data ke 4 = ');readln(x4);
 write('Data ke 5 = ');readln(x5);
  rata:=(x1+x2+x3+x4+x5)/n;
   varians:=(sqr(x1-rata)+sqr(x2-rata)+sqr(x3-rata)+sqr(x4-rata)+sqr(x5-rata))/(n-1);
    sd:=sqrt(varians);
    writeln('Standar deviasi (sd) = ',sd:2:2);
 readln;
end.
