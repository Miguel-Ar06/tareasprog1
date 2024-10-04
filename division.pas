program division;

var
x, y: integer;

begin
    writeln('Escribe un numero: ');
    readln(x);
    writeln('Escribe otro numero: ');
    readln(y);

    if y = 0 then
        writeln('No se puede dividir entre cero')
    else
        writeln('Resultado: ', x/y:0:2);
end.