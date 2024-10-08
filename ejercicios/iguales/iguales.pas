program iguales;

var
x, y: real;

begin
    writeln('Escribe un numero: ');
    readln(x);
    writeln('Escribe otro numero: ');
    readln(y);

    if x > y then
        writeln(x:0:2,' es mayor que ', y:0:2)
    else if x < y then
        writeln(y:0:2,' es mayor que ', x:0:2)
    else
        writeln('Ambos numeros son iguales');
end.