program palindromo;

uses strutils;

var palabra, rev: string;

begin
    write('Ingrese una palabra: ');
    readln(palabra);
    palabra := Lowercase(palabra);
    rev := ReverseString(palabra);

    if palabra = rev then
	writeln('Es un palindromo!')
    else
	writeln('No es un palindromo')
end.
