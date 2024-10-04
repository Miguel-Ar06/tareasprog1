program escinco;

var
n: integer;

begin
    // pedir un numero
    writeln('Ingresa un numero:');
    readln(n);

    // verificar que sea cinco
    if n = 5 then
        writeln('es cinco')
    else
        writeln('No es cinco');
end.