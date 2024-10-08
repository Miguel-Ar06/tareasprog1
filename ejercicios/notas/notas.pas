program notas(input, ouput, stdErr);

function main: integer;

var
    estudiantes, i, cincos, dieces: integer;
    notas: array of integer;
    nota: integer;

begin

    cincos := 0;
    dieces := 0;
    write('Numero de estudiantes: ');
    readln(estudiantes);
    setLength(notas, estudiantes);
    
    for i:= 1 to estudiantes do
    begin
        repeat
            write('Ingrese nota del estudiante ', i, ': ');
            readln(nota);
            if not(nota >= 0) or not(nota < 11 ) then
                writeln('Ingrese una nota valida (0-10)');
                writeln(' ');
        until (nota >= 0) and (nota < 11);

        notas[i]:= nota;

        if notas[i] = 5 then
            cincos:= cincos + 1
        else if notas[i] = 10 then
            dieces := dieces + 1
    end;

    writeln(' ');
    for i:= 1 to estudiantes do
    begin
        writeln('Nota del estudiante ', i, ': ', notas[i]);
    end;

    writeln('Cincos: ', cincos);
    writeln('Dieces: ', dieces);

    main := 0;
end;


begin
    main
end.