program hotel;
uses crt;

var
usuario: record
nombre:string;
apellido:string;
edad:integer;
end;

i,n:integer;
registro:text;
linea:string;

begin
writeln('ingrese la cantidad de acompanantes');
readln(n);

	for i:=1 to n do
		begin
			writeln('introduzca el ',i,' nombre: ');
			readln(usuario.nombre);
			writeln('introduzca el ',i,' apellido: ');
			readln(usuario.apellido);
			writeln('introduzca el ',i,' edad: ');
			readln(usuario.edad);
			
			assign(registro, 'Registro.txt');
			append(registro);
			writeln(registro, usuario.nombre);	
			writeln(registro, usuario.apellido);
			writeln(registro, usuario.edad);
			close(registro);
			   
		end;
			   assign(registro, 'Registro.txt');
			   reset(registro);
			   writeln();
				while not eof (registro) do 
					begin
						readln(registro, linea);
						writeln(linea);
					end;
			close(registro);


end.
