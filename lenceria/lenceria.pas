program lenceria;

type 
    producto = record
    id: integer;
    nombre, marca: string;
    precio: real;
end;

var
numerodeproductos, opcion, i: integer;
monto: real;
carrito: array of producto;
menuabierto: boolean;
producto: producto;

function main: integer;
begin

    writleln('--Sistema de cobros--');
    menuabierto := true;
    numerodeproductod := 0;

    while menuabierto = true do
    begin
        writeln('-------------------');
        writeln('¿Que desea hacer?');
        writeln('1. Agregar producto');
        writeln('2. proceder al pago');
        writeln('3. Salir');
	writeln(' ');

        write('Esocoja una opcion: ')
        readln(opcion);

        if opcion = 1 then
	begin
	    numerodeproductos := numerodeproductos + 1;
            
	    write('Id del producto: ');
	    readln(producto.id);
	    write('Marca del producto: ');
	    readln(producto.marca);
	    write('Nombre del producto: ');
	    readln(producto.nombre);
	    write('Precio del producto: ');
	    readln(producto.precio);
	    writeln(' ');

	    insert(producto, carrito, numerodeproductos);
	end
	else if opcion = 2 then
	begin
	    for i:=0 to numerodeproductos do
	    begin
		writeln('-----');
                writeln(i,'. Producto: ', carrito[i].nombre);
		writeln('Id: ', carrito[i].id);
		writeln('Marca: ', carrito[i].marca);
		writeln('Precio: ', carrito[i].precio:0:2, '$');
	    end;
	    writeln(' ');
	end
	else if opcion = 3 then
	begin
            menuabierto := false;
	    writeln('Salir');
	end
	else
	    writeln('Opcion invalida');
       
    end;

    main:= 0;
end;


begin
    main;
end.
