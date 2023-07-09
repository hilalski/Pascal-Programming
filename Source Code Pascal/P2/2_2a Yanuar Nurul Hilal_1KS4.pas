program konversi_suhu;
uses crt;
var
        celcius:integer;
        fahrenheit:real;
begin
        clrscr;
        writeln('MENCARI KONVERSI SUHU');
        writeln('=====================');
        write('Input derajat celcius = '); readln(celcius);
        fahrenheit:= 9/5*celcius+32;
        writeln('derajat fahrenheit = ',fahrenheit:4:2);
        writeln('=====================');
        readln;
end.
