program ingresados;
uses crt,sysutils;



var
usuario: record
nombre:string;
apellido:string;
ci:string;
tlf:string;
estadia:integer;
end;

fichero:text;
linea:string;
filename:string;

begin
writeln('ingrese su informacion para hacer la reservacion');
gotoxy(2,3);
	
			writeln('introduzca el nombre: ');
			readln(usuario.nombre);
			writeln('introduzca el apellido: ');
			readln(usuario.apellido);
			writeln('introduzca el numero de cedula: ');			
			readln(usuario.ci);
			writeln('introduzca su num de telefono: ');
			readln(usuario.tlf);
			writeln('introduzca sus dias de estadia: ');
			readln(usuario.estadia);	
		
			//se establece el nombre del archivo en foma de string
			
			filename:=concat(usuario.nombre+' '+usuario.apellido, '.txt');
			//concadenamos el nombre del archivo con la extencion txt
			
			//asignamos el nombre del archivo;	
			assign(fichero, filename);
			//creamos el archivo
			rewrite(fichero);
			
			writeln(fichero);
			writeln(fichero, usuario.nombre);	
			writeln(fichero, usuario.apellido);
			writeln(fichero, usuario.ci);			
			writeln(fichero, usuario.tlf);
			writeln(fichero, usuario.estadia);
			close(fichero);

			assign(fichero, filename);
			reset(fichero);
			writeln();
				while not eof (fichero) do 
					begin
						readln(fichero, linea);
						writeln(linea);
					end;
			close(fichero);
			

end.
