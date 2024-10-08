program intercambio;

var
x, y, z: real;

begin
    writeln('Escribe un numero: ');
    readln(x);
    writeln('Escribe otro numero: ');
    readln(y);

    if x > y then
    begin
        z := x;
        x := y;
        y := z;
        writeln('x = ', x:0:2);
        writeln('y = ', y:0:2);
    end
    else
    begin
        writeln('');
        writeln('x = ', x:0:2);
        writeln('y = ', y:0:2);
    end
end.