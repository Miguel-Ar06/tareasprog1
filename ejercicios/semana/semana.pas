program semana;

var
n: byte;

begin
    writeln('ingrese un numero del 1 al 7: ');
    readln(n);

    case (n) of
        1: writeln('Lunes');
        2: writeln('Martes');
        3: writeln('Miercoles');
        4: writeln('Jueves');
        5: writeln('Viernes');
        6: writeln('Sabado');
        7: writeln('Domingo');
    else
        writeln('Cuantos dias tiene tu semana???');
    end;

end.