program p5n1;
uses crt;
var
negara:string;

begin
clrscr;
write('masukkan negara = ');readln(negara);
case negara of
'kanada':writeln('amerika utara');
'brazil':writeln('amerika selatan');
'spanyol':writeln('eropa');
'mesir':writeln('afrika');
'indonesia':writeln('asia');
'australia':writeln('australia')
else
writeln('antartika');
end;
readln;
end.