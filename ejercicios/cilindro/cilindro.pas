program cilindro;

const
PI = 3.14;

var
A, V, r, h, r2: real;

begin
    // inputs
    writeln('Ingrese el la altura del cilindro: ');
    readln(h);
    writeln('Ingrese rel radio del cilindro: ');
    readln(r);
    r2 := r * r;

    // calculos
    A := (2 * (PI * r2)) + ((2 * PI * r) * h);
    V := (PI * r2) * h;

    // resultados
    writeln('El area del cilindro es: ', A:0:2);
    writeln('El volumen del cilindro es: ', V:0:2);
end.
