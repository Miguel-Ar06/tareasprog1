program adivinar;

uses crt;

var n, numero: byte;

begin
    randomize();
    n := random(100)+1;

    writeln('Adivina nuneros del 1 al 100!');

    repeat
        write('Ingresa un numero: ');
	readln(numero);

	if numero > n then
	    writeln('Muy alto! intenta otra vez')
        else if numero <  n then
            writeln('Muy bajo! intenta otra vez')
    until n = numero;
    
    writeln('Adivinaste! el numero era ', numero);
end.
