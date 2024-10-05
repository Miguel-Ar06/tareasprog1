program potencias;

uses math;

var
i, mayor, menor, opcion: integer
numeros: array[4] of Longint;

// Funciones de potencia ----------

function potenciade2(n: integer): boolean;
begin
    // TODO
    Logn(2, n);
end;

function potenciade3(n: integer): boolean;
begin
    // TODO
    Logn(3, n);
end;

function potenciade5(n: integer): boolean;
begin
    // TODO
    Logn(5, n);
end;

// Funcion mayor y menor ----------

function mayorymenor(n1,n2,n3,n4: integer):integer;
begin

end;


// FUNCION PRINCIPAL----------------------

function main: integer;
begin
    // TODO
    for i:=1 to 4 do
    begin
        write('Ingrese un  numero: ');
	readln(numeros[i]);
    end;

    writeln(' ')
    writeln('Bienvenido ¿Que desea hacer?');
    writeln('1. Mayor y menor de 4 numeros');
    writeln('2. Potencia 2, 3 o 5');
    writeln(' ');
    write('Opcion: ');
    readln(opcion);
end;


begin
    main;
end.
