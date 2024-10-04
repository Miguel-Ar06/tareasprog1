program nombreapellido;

var
nombre, apellido: string;

begin
    writeln('Cual es tu nombre?');
    readln(nombre);
    writeln('Cual es tu apellido?');
    readln(apellido);

    writeln('Tu nombre es: ', nombre, ' ', apellido);

end.