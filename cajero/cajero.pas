program cajero;

uses crt;

var
usuario: string;
clave, opcion, numero: integer;
cedula: longint;
cajeroabierto: boolean;
saldo: real;

// function dosprimerosdigitos(n: integer): integer;

function confirmacion(u: string; c: integer; ced: longint): boolean;

var
clave2, x, y: integer;
usuario2: string;
(* nota: pude haber hecho como en la clase para repetir y volver a preguntar por el dato erroneo pero por ejemplo
un ladron acierta la cedula y el cajero pregunta por la clave, pero falla la clave, yo optaria por preguntar
todos los datos de nuevo en lugar de el unico dato que es erroneo, asi un ladron no sabe que dato fue en el que se equivoco
esto afecta negativamente al usuario tambien? si pero son cositas, por mas seguridad*)
begin
    writeln('-------------------');
    TextColor(yellow);
    writeln('Confirme sus datos.');
    TextColor(White);
    write('- ultimos 2 numeros de su cedula: ');
    readln(x);
    (* writeln('primeros 2 primeros de su cedula: ');
    readln(y); *)
    write('- Confirme su usuario: ');
    readln(usuario2);
    write('- Confirme su clave: ');
    readln(clave2);

    if (((ced mod 100) = x) (* and (y = dosprimerosdigitos(cedula)) *) and (clave = clave2) and (usuario = usuario2)) then
        confirmacion := true
    else
        confirmacion := false;
end;

function main: integer;
begin
    saldo:= 100;
    TextColor(Yellow);
    writeln('-- BIENVENIDO - AL - CAJERO --');
    TextColor(White);
    write('- Ingrese su cedula: ');
    readln(cedula);
    write('- Ingrese su usuario: ');
    readln(usuario);
    write('- Ingrese su clave: ');
    readln(clave);
    cajeroabierto := true;

    while cajeroabierto = true do
    begin
        writeln('-------------------');
        writeln('Que desea hacer?');
        TextColor(LightBlue);
        writeln('   1. conocer mi estado de cuenta.');
        writeln('   2. retirar fondos.');
        writeln('   3. cambio de clave.');
        writeln('   4. salir.');
        TextColor(White);

        write('Escoga una opcion: ');
        readln(opcion);

        if (opcion < 1) or (opcion > 4) then
        begin
            writeln('-------------------');
            TextColor(Red);
            writeln('Ingrese una opcion valida');
            TextColor(White);
            writeln(' ');
            writeln('Presione ENTER para continuar');
            readln();
        end
        else if opcion = 1 then
        begin
            if confirmacion(usuario, clave, cedula) = true then
            begin
                writeln('-------------------');
                TextColor(green);
                writeln('Su saldo es: ', saldo:0:2, '$');
                TextColor(White);
                writeln(' ');
                writeln('Presione ENTER para continuar');
                readln();
            end
            else
            begin 
                writeln('-------------------');
                TextColor(red);
                writeln('confirmacion fallida');
                TextColor(White);
                writeln(' ');
                writeln('Presione ENTER para continuar');
                readln();
            end;
        end
        else if opcion = 2 then
        begin
            if confirmacion(usuario, clave, cedula) = true then
            begin
                writeln('-------------------');
                write('- Ingrese cantidad de fondos que desea retirar: ');
                readln(numero);
                if saldo > numero then
                begin 
                    saldo := saldo - numero;
                    writeln('-------------------');
                    TextColor(green);
                    writeln('Retiro exitoso');
                    writeln('Saldo total: ', saldo:0:2, '$');
                    TextColor(White);
                    writeln(' ');
                    writeln('Presione ENTER para continuar');
                    readln();
                end
                else
                begin
                    writeln('-------------------');
                    TextColor(Red);
                    writeln('FONDOS INSUFICIENTES.');
                    TextColor(White);
                    writeln(' ');
                    writeln('Presione ENTER para continuar');
                    readln();
                end

            end
            else
            begin 
                writeln('-------------------');
                TextColor(red);
                writeln('confirmacion fallida');
                TextColor(White);
                writeln(' ');
                writeln('Presione ENTER para continuar');
                readln();
            end
        end
        else if opcion = 3 then
        begin
            if confirmacion(usuario, clave, cedula) = true then
            begin
                write('- Introduzca nueva clave: ');
                readln(numero);
                clave := numero;
                writeln('-------------------');
                TextColor(Yellow);
                writeln('Clave cambiada exitosamente.');
                TextColor(White);
                writeln(' ');
                writeln('Presione ENTER para continuar');
                readln();
            end
            else
            begin 
                writeln('-------------------');
                TextColor(red);
                writeln('confirmacion fallida');
                TextColor(White);
                writeln(' ');
                writeln('Presione ENTER para continuar');
                readln();
            end
        end
        else if opcion = 4 then
        begin
            writeln('-------------------');
            TextColor(yellow);
            writeln('Cierre de operaciones exitoso');
            cajeroabierto := false;
            TextColor(White);
        end
    end; (*while*)

    main := 0;
end;

begin
    main;
end.