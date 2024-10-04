program partres;

var
n: integer;

begin
    writeln('Ingrese un numero: ');
    readln(n);

    if (n mod 6) = 0 then
        writeln(n, ' es par y multiplo de 3')
    else
        writeln(n, ' No es par y multiplo de 3');
end.