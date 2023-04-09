program texto;

uses

crt,sysutils;

var

personas:text;

individuales:record

nom,apell,email,telef,dias,ced:string;

end;

telef2,ced2,dias2:integer;

registrado,detec,n,inf_per,miembro,opc1:string;

codigo:integer;

{ VARIABLES PARA VALIDAR EL NUMERO TELEFONICO }

	a,b,c,d,num:string;

	codigos:record

	cod,cod2,cod3,cod4,cod5:integer;

	n2,a2,b2,c2,d2:integer;

	end;
	
{////////////////////////////////////////////}

habit:string;

opc2,opc3:string;

precio:integer;

opc4:string;

//opc5,opc6:string;


///////////////////////////////////////| CUERPO DEL PROGRAMA |/////////////////////////////////////////////////////////////////////////////////////////////////


begin



	telef2:=0; ced2:=0; dias2:=0;	

	codigo:=(telef2+ced2+dias2);

	registrado:='';	codigo:=0;



/////////////| SI NO EXISTE EL ARCHIVO ESTE CODIGO LO DETECTA Y CREA UNO PARA PODER USARLO |///////////////////////////////////////////////////////////////////
																											
	if not fileExists('INDIVIDUAL.TXT') then 																
																											
	begin																									
		assign(personas,'INDIVIDUAL.TXT');																	
																											
		rewrite(personas);																				    
																											
		close(personas);																					
	end;																									
	
/////////////////////////////////////| SI YA EXISTE NO PASA NADA |/////////////////////////////////////////////////////////////////////////////////////////////////



{=============================================================================================================================================================================================}

////////////////////////////////////////| INICIO DEL BLOQUE I |//////////////////////////////////////////////////////////////////////////////////////////////////////


	assign(personas,'INDIVIDUAL.TXT'); {...................................................................................................................... AQUI SE INICIALIZA EL ARCHIVO}	


	{1}repeat {.......................................................................................................................... ESTE REPEAT ES PARA QUE SE REPITA SI INGRESA LETRAS}
	
	
		 {2}repeat {...................................................................................... ESTE ES PARA QUE SE REPITA EN CASO DE QUE DECIDIERA VER LAS ANTIGUAS RESERVACIONES}
			
			
			gotoxy(1,1);write(' -Bienvenido, para registrarse presione 1.                       -Puede ver las antiguas reservaciones ingresando cero ');gotoxy(44,1);readln(n);gotoxy(1,1);
	

/////////////////////////////| SI INGRESA CERO SE ACTIVA EL CODIGO DE ABAJO |////////////////////////////////////////////////////////////////////////////////////////

	
		if (n='0') then


///////////////| ESTE BLOQUE DE CODIGO PUEDE MOSTRAR LAS RESERVACIONE PREVIAMENTE ECHAS, SE ACTIVA INGRESANDO CERO |///////////////////////////////////////////////////////


		begin

		writeln;
		writeln;
		writeln;
		write(' -Desea ver los datos de las personas que ya fueron registradas?'); 
		writeln;
		writeln(' -s   -n');	
		opc1:=readkey;
		
		opc1:=lowercase(opc1);
						
			if (opc1='s') then
			
			begin
			
					clrscr;
					writeln;
					writeln(' -Esta son las personas que ya se han registrado:');
					writeln;
					
				{/}////////////////////////| ARCHIVO |//////////////////////{/}
				{/}															{/}
				{/}		reset(personas);                      { ABRIMOS }   {/}
				{/}															{/}
				{/}			while not eof(personas) do						{/}
				{/}															{/}
				{/}			begin											{/}						
				{/}				readln(personas,inf_per);	{ IMPRIMIMOS }  {/}						
				{/}				writeln(inf_per);					        {/}
				{/}			end;											{/}
				{/}															{/}		
				{/}		close(personas);			         { CERRAMOS }   {/}
				{/}															{/}
				{/}/////////////////////////////////////////////////////////{/}
							
			end;
			
			writeln(' -Ingrese una tecla para continuar. ');readln;			
			clrscr;
			
			end;
						
			{2} until (n<>'0');
			

	{1} until (n='0') or (n='1') ;
					
////////////////////////////////| FIN DEL BLOQUE I |///////////////////////////////////////////////////////////////////////////////////////////////////////////////						





//////////////////////////////| INICIO DEL BLOQUE II |/////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////| SOLICITUD DE DATOS DEL CLIENTE |///////////////////////////////////////////////////////////////////////////////////////////////////////

										
		
		{3}	repeat {....................................................................................ES REPEAT REINICIA LA SOLCITUD DE DATOS SI LA CEDULA DEL CLIENTE YA ESTABA REGISTRADA}
			
			with individuales do { ...........................................................................................................SACAMOS LAS VERIABLES DEL RECORD 'INDIVIDUALES'}
			
			begin
					
			nom:='';  apell:='';  ced:=''; email:=''; {...................................................................... REINICIAMOS LOS VALOR DE LAS VARIABLES PARA LA SIGUIENTE PASADA}

					
			clrscr;	
			write(' -Empecemos con el nombre: ');readln(nom);{...................................1-SE PIDE NOMBRE}
		
			
			clrscr;
			write(' -Ahora ingrese su apellido: ');readln(apell);{.............................2-SE PIDE APELLIDO}
				

			repeat
			
//////////////| SI LA PERSONA YA ESTABA REGISTRADA SE ACTIVA ESTE CODIGO |////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			
			if (registrado='on') then
						
			begin gotoxy(46,1);writeln(' -Alguien mas esta registrado con este numero de cedula, intente de nuevo');gotoxy(1,1);delay(2500)end; 
			
			registrado:='';
			
			
					clrscr;  
					write(' -indiquenos su cedula: ');readln(ced);{..............................3-SE PIDE CEDULA}
					val (ced,ced2,codigo);
					
					
///////| ABRIMOS EL ARCHIVO PARA VERIFICAR SI LA CEDULA DEL CLIENTE NO ESTABA REGISTRADA |////////////////////////////////////////////////////////////////////////////////////////////////////
								
			
			{/}///////////////////////| ARCHIVO |///////////////////////{/}
			{/}															{/}
			{/}		reset(personas); 	{ ABRIMOS EN MODO LECTURA }		{/}						
			{/}															{/}
			{/}			while not eof(personas) do						{/}
			{/}															{/}		
			{/}			begin											{/}
			{/}															{/}					
			{/}				readln(personas,detec);						{/}
			{/}															{/}
			{/}				pos(ced,detec);	   { BUSCAMOS LA CEDULA }	{/}
			{/}															{/}		
			{/}				if (pos(ced,detec)<>0) then					{/}
			{/}															{/}
			{/}				registrado:='on';							{/}
			{/}															{/}
			{/}			end;											{/}
			{/}															{/}
			{/}		close(personas);	{ CERRAMOS }					{/}
			{/}															{/}	
			{/}/////////////////////////////////////////////////////////{/}		
					
				
			until(codigo=0) and (registrado<>'on');
			
			
			  with codigos do

				begin

			repeat
					clrscr;
					write(' -Su numero telefonico: ');
					a:=readkey;write(a);val(a,a2,cod);
					b:=readkey;write(b);val(b,b2,cod2);
					c:=readkey;write(c);val(c,c2,cod3); {........................................4-SE PIDE NUMERO}
					d:=readkey;write(d);val(d,d2,cod4);
					write('-');
					readln(telef);val(telef,n2,cod5);
					
					num:=(a+b+c+d+'-'+telef);
			
			until (cod=0) and (cod2=0) and (cod3=0) and (cod4=0) and (cod5=0);	
			
			    end;
									
			clrscr;
			write(' -Ya casi terminamos, diganos su email: ');readln(email);{.....................5-SE PIDE EMAIL}
			
			repeat

			opc2:='';
			opc3:='';
		//	opc4:='';
		//	opc5:='';
		//	opc6:='';
			
			while (opc2<>'1') and (opc2<>'2') and (opc2<>'3') and (opc2<>'4') do
			
			begin

			clrscr;
			writeln;
			writeln(' -En nuestras instalaciones ofrecemos los siguientes tipos de habitaciones ');
			writeln;
			write(' 1-FAMILY ROOM ');write(' 2-SENCILLA ');write(' 3-DOBLE ');writeln(' 4-SUITE ');
			writeln;
			
			
			 write(' -Para mas detalles seleccione una de las opciones. ');opc2:=readkey;
			
			end;
			
			case opc2 of
			
			'1':begin
			
			while (opc3<>'n') and (opc3<>'s') do
		begin
		
			clrscr;			
			writeln;
			writeln('   Calida y confortable habitacion decorada con un estilo vanguardista, 100% libre de humo,');
			writeln('   cama Lidotel Royal King, con reloj despertador, TV 32 HD Plasma con cable, banio con');
			writeln('   ducha, cafetera electrica, nevera ejecutiva, caja electronica de seguridad y secador de');
			writeln('   cabello, armario adicional amplio, una habitacion separada con 2 camas full, banio con');
			writeln('   ducha.');
			writeln;
			writeln('   Incluye:');
			writeln;
			writeln('   Desayuno Buffet en el Restaurant Le Nouveau, acceso inalambrico a Internet (WIFI),');
			writeln('   Business Center, uso de nuestra exclusiva piscina, acceso a nuestro gimnasio, sillas y ');
			writeln('   toldos en la playa, kit de vanidades y menores de 0 a 2 anios sin recargos.');
			writeln;
			writeln('                                      200$ por noche');
			writeln;
			write('   <== Atras(n)                                                   -presione (s) para aceptar');
			
			if (opc3<>'') then begin gotoxy(30,17);writeln('-Opcion invalida, intente de nuevo'); gotoxy(1,1);end;
			
			opc3:=readkey;
			
			opc3:=lowercase(opc3);
			
		end;	
			if (opc3='s') then begin habit:='FAMILY ROOM'; precio:=200; end;
			
				end;
				
			'2':begin
										
			while (opc3<>'n') and (opc3<>'s') do
			
			begin
		
			clrscr;			
			writeln;
			writeln('   Amplia y confortable habitacion decorada con un estilo vanguardista, cama Lidotel Roya');
			writeln('   King con sabanas de algodon egipcio, soporte para iPod con reloj despertador, TV 32 ');
			writeln('   HD Plasma con cable, banio con ducha, cafetera electrica, nevera ejecutiva, caja');
			writeln('   electronica de seguridad y secador de cabello.');
			writeln;
			writeln('   Incluye:');
			writeln;
			writeln('   Desayuno Buffet en Restaurant Le Nouveau, acceso inalambrico a Internet (WIFI),');
			writeln('   acceso a las instalaciones del Business Center, uso de nuestra exclusiva piscina, acceso ');
			writeln('   a nuestro moderno gimnasio y Kit de vanidades. Ninios de 0 a 2 anios sin recargos.');
			writeln;
			writeln('                                       60$ por noche');
			writeln;
			write('   <== Atras(n)                                                   -presione (s) para aceptar');
			
			if (opc3<>'') then begin gotoxy(30,17);writeln('-Opcion invalida, intente de nuevo'); gotoxy(1,1);end;
			
			opc3:=readkey;
			
			opc3:=lowercase(opc3);
			
		end;	
			if (opc3='s') then begin habit:='SENCILLA';	precio:=60; end;
							
				end;
				
			'3':begin
			
			
			while (opc3<>'n') and (opc3<>'s') do
			
			begin
		
			clrscr;			
			writeln;
			writeln('   Amplia y confortable habitacion decorada con un estilo vanguardista, Dos Camas Lidotel');
			writeln('   Full con sabanas de algodon egipcio, soporte para iPod con reloj despertador, TV 32   ');
			writeln('   HD Plasma con cable, bano con ducha, cafetera electrica, nevera ejecutiva, caja');
			writeln('   electronica de seguridad secador de cabello');
			writeln;
			writeln('   Incluye:');
			writeln;
			writeln('   Desayuno Buffet en el Restaurant Le Nouveau, acceso inalambrico a Internet (WIFI), ');
			writeln('   acceso a las instalaciones del Business Center, uso de nuestra exclusiva piscina, acceso ');
			writeln('   a nuestro moderno gimnasio y Kit de vanidades. Ninios de 0 a 2 anios sin recargos.');
			writeln;
			writeln('                                      120$ por noche');
			writeln;
			write('   <== Atras(n)                                                   -presione (s) para aceptar');
			
			if (opc3<>'') then begin gotoxy(30,17);writeln('-Opcion invalida, intente de nuevo'); gotoxy(1,1);end;
			
			opc3:=readkey;
			
			opc3:=lowercase(opc3);
			
		end;	
			if (opc3='s') then begin habit:='DOBLE'; precio:=120; end;
			
			
			end;
				
			'4':begin
			
			
			while (opc3<>'n') and (opc3<>'s') do
			
			begin
		
			clrscr;			
			writeln;
			writeln('   Calida y confortable habitacion decorada con un estilo vanguardista, 100% libre de humo, ');
			writeln('   Cama Lidotel Royal King, con reloj despertador, TV 32 HD Plasma con cable, 2 banios');
			writeln('   con ducha, cafetera electrica, nevera ejecutiva, caja electronica de seguridad y secador');
			writeln('   de cabello, armario adicional amplio y area separada con 2 sofa-cama individuales.');
			writeln;
			writeln('   Incluye:');
			writeln;
			writeln('   Desayuno Buffet en el Restaurant Le Nouveau, acceso inalambrico a Internet (WIFI),');
			writeln('   Business Center, uso de nuestra exclusiva piscina, acceso a nuestro gimnasio, sillas y ');
			writeln('   toldos en la playa, kit de vanidades y ninios de 0 a 2 anios sin recargos.');
			writeln;
			writeln('                                      300$ por noche');
			writeln;
			write('   <== Atras(n)                                                   -presione (s) para aceptar');
			
			if (opc3<>'') then begin gotoxy(30,17);writeln('-Opcion invalida, intente de nuevo'); gotoxy(1,1);end;
			
			opc3:=readkey;
			
			opc3:=lowercase(opc3);
			
		end;	
			if (opc3='s') then begin habit:='SUITE'; precio:=300; end;
			

				end;
			
			end;
			
		
			until (opc3<>'n');
			
				
			repeat
				clrscr;
				write(' -Cuantas noches desea ospedarse?: ');readln(dias);{...............6-SE PIDE CANTIDAD DE DIAS}
				val(dias,dias2,codigo);
				
			until (codigo=0);
			clrscr;
			writeln;
			writeln(' -Cliente:',nom,',',apell,' -Habitacion tipo: ',habit,'  -Precio por noche: ',precio,'$ -Noches para ser reservadas: ',dias,'.');
			writeln;
			writeln(' -Su monto a pagar seria de ',precio*dias2,'$ para confirmar su reservacion presione (s) de lo contrario presione (n).');
			writeln;
			opc4:=readkey;
			
			opc4:=lowercase(opc4);

/////////////////////////////FINALIZA LA PETICIÓN DE DATON////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
													
			end;
							
	{3}	until (opc4='s'); {............................................................................ SI RESULTA QUE LA CEDULA YA ESTABA REGISTRADA SE REPITE, SI NO, NO LO HACE }

		
			with individuales do {.................................................................................... LLAMAMOS NUEVAMENTE A NUESTRO RECORD PARA USAR SUS VARIABLES }
			
				begin		
					
				miembro:=(nom+' -Apellido: '+apell+' -Email: '+email); {............................................ LA VERIABLE MIEMBRO UNE LOS DATOS NO NUMERICOS QUE SE PIDIERON }
							
										
				append(personas); {............................................................................................................. ABRIMOS EL ARCHIVO EN MODO AGREGAR }
				
				
					writeln(personas,' -Huesped:',miembro,' -Telefono ',num,' -Cedula: ',ced,' -Tipo: ',habit,' Dias reservados ',dias); {...PEGAMOS LOS DATOS RECOLECTADOS Y DEJAMOS UNA LINEA }
					writeln(personas);
				
				
				close(personas);{................................................................................................................................ CERRAMOS EL ARCHIVO }
					
				end;
			
			clrscr;
			writeln('-Agregando nuevo huesped');{............................................................................................................ MENSAJE DE CONFIRMACIÓN }
			writeln;
			delay(2000);
			writeln('-Listo');
			delay(1300);
															

		
end.
