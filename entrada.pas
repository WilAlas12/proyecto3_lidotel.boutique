program pantallas;
uses crt;


procedure pantalla;
 //Procedure de pantalla inicial
{el procedimiento pinta la pantalla de un color mientras el valor de j sea divisible entre uno de estos numeros,
* este se repite 10 veces, hasta alcanzar los valores i=2 e j=5 por cada i.
* gotoxy se usa para colocar las letras o lineas en las coordenadas x e y dentro de la pantalla}
var 
i,a:integer;
begin
a:=0;
	 for i:=1 to 3 do
		begin
		a:=a+1;
		
		
		if a=3 then
		begin
		textcolor(brown);
		end;
		gotoxy(11,12); writeln('-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-');
		
		if a=2 then
		begin
		textcolor(white);
		end;		
		gotoxy(51,12); writeln(' Hotel Boutique ');
		
		if a=2 then
		begin
			textcolor(white);
			gotoxy(13,2);writeln('[ ]');
			delay(35);
			textcolor(black);
			
			textcolor(white);
			gotoxy(13,3);writeln('[ ]');
			delay(35);
			textcolor(black);
			
			textcolor(white);
			gotoxy(13,4);writeln('[ ]');
			delay(35);
			textcolor(black);
						
			textcolor(white);			
			gotoxy(13,5);writeln('[ ]');
			delay(50);
			textcolor(black);			
			
			textcolor(white);
			gotoxy(13,6);writeln('[ ]');
			delay(35);
			textcolor(black);			
			
			textcolor(white);
			gotoxy(13,7);writeln('[ ]');
			delay(35);
			textcolor(black);
			
			textcolor(white);			
			gotoxy(13,8);writeln('[ ]');
			delay(35);
			textcolor(black);
			
			textcolor(white);			
			gotoxy(13,9);writeln('[ ]');
			delay(35);
			textcolor(black);
			
			textcolor(white);
			gotoxy(13,10);writeln('[ ]-[]-[ ]');
			delay(35);
			textcolor(black);
		
		end;
		
			 
		gotoxy(13,2);writeln('[ ]');
		gotoxy(13,3);writeln('[ ]');
		gotoxy(13,4);writeln('[ ]');
		gotoxy(13,5);writeln('[ ]');
		gotoxy(13,6);writeln('[ ]');
		gotoxy(13,7);writeln('[ ]');
		gotoxy(13,8);writeln('[ ]');
		gotoxy(13,9);writeln('[ ]');
		gotoxy(13,10);writeln('[ ]-[]-[ ]');
		 
		if a=2 then
		begin
			textcolor(white);
			gotoxy(26,2);writeln('   ');
			delay(35);
			textcolor(black);
			
			textcolor(white);						
			gotoxy(26,3);writeln('( )');
			delay(35);
			textcolor(black);
			
			textcolor(white);						
			gotoxy(26,4);writeln('  ');
			delay(35);
			textcolor(black);

			textcolor(white);						
			gotoxy(26,5);writeln('[ ]');
			delay(35);
			textcolor(black);

			textcolor(white);						
			gotoxy(26,6);writeln('[ ]');
			delay(35);
			textcolor(black);

			textcolor(white);						
			gotoxy(26,7);writeln('[ ]');
			delay(35);
			textcolor(black);

			textcolor(white);						
			gotoxy(26,8);writeln('[ ]');
			delay(35);
			textcolor(black);

			textcolor(white);						
			gotoxy(26,9);writeln('[ ]');
			delay(35);
			textcolor(black);
			
			textcolor(white);
			gotoxy(26,10);writeln('[ ]');
			delay(35);
			textcolor(black);
		
		end;
		
		gotoxy(26,2);writeln('   ');
		gotoxy(26,3);writeln('( )');
		gotoxy(26,4);writeln('  ');
		gotoxy(26,5);writeln('[ ]');
		gotoxy(26,6);writeln('[ ]');
		gotoxy(26,7);writeln('[ ]');
		gotoxy(26,8);writeln('[ ]');
		gotoxy(26,9);writeln('[ ]');
		gotoxy(26,10);writeln('[ ]');
		 
		if a=1 then
		begin
		 delay(670);
		end;
		
		if a=2 then
		begin
			textcolor(white);
			gotoxy(32,2);writeln('[ ][ ][ ]');
			delay(35);
			textcolor(black);
							
			textcolor(white);
			gotoxy(32,3);writeln('[ ]    [ ]');
			delay(35);
			textcolor(black);
						
			textcolor(white);
			gotoxy(32,4);writeln('[ ]     [ ]');
			delay(35);
			textcolor(black);
						
			textcolor(white);
			gotoxy(32,5);writeln('[ ]      [ ]');
			delay(35);
			textcolor(black);
						
			textcolor(white);
			gotoxy(32,6);writeln('[ ]      [ ]');
			delay(35);
			textcolor(black);
						
			textcolor(white);
			gotoxy(32,7);writeln('[ ]      [ ]');
			delay(35);
			textcolor(black);
						
			textcolor(white);
			gotoxy(32,8);writeln('[ ]     [ ]');
			delay(35);
			textcolor(black);
						
			textcolor(white);
			gotoxy(32,9);writeln('[ ]    [ ]');
			delay(50);
			textcolor(black);
						
			textcolor(white);
			gotoxy(32,10);writeln('[ ][ ][ ]');
			delay(35);
			textcolor(black);
		end;
		  
		gotoxy(32,2);writeln('[ ][ ][ ]');
		gotoxy(32,3);writeln('[ ]    [ ]');
		gotoxy(32,4);writeln('[ ]     [ ]');
		gotoxy(32,5);writeln('[ ]      [ ]');
		gotoxy(32,6);writeln('[ ]      [ ]');
		gotoxy(32,7);writeln('[ ]      [ ]');
		gotoxy(32,8);writeln('[ ]     [ ]');
		gotoxy(32,9);writeln('[ ]    [ ]');
		gotoxy(32,10);writeln('[ ][ ][ ]'); 
 
 		if a=2 then
			begin
				textcolor(white);
				gotoxy(47,2);writeln(' [ ]-[]-[ ]  '); 
				delay(35);
				textcolor(black);
				
				textcolor(white);		       
				gotoxy(47,3);writeln('[ ]      [ ] ');
				delay(35);
				textcolor(black);
				
				textcolor(white);				
				gotoxy(47,4);writeln('[ ]      [ ] ');
				delay(35);
				textcolor(black);				
				
				textcolor(white);
				gotoxy(47,5);writeln('[ ]      [ ] ');
				delay(35);
				textcolor(black);
				
				textcolor(white);
				gotoxy(47,6);writeln('[ ]      [ ] ');
				delay(35);
				textcolor(black);
				
				textcolor(white);
				gotoxy(47,7);writeln('[ ]      [ ] ');
				delay(35);
				textcolor(black);
				
				textcolor(white);
				gotoxy(47,8);writeln('[ ]      [ ] ');
				delay(35);
				textcolor(black);
				
				textcolor(white);
				gotoxy(47,9);writeln('[ ]      [ ] ');
				delay(35);
				textcolor(black);
				
				textcolor(white);				     
				gotoxy(47,10);writeln(' [ ]-[]-[ ] ');
				delay(35);
				textcolor(black);
			end;
		  
		gotoxy(47,2);writeln(' [ ]-[]-[ ]  ');        
		gotoxy(47,3);writeln('[ ]      [ ] ');
		gotoxy(47,4);writeln('[ ]      [ ] ');
		gotoxy(47,5);writeln('[ ]      [ ] ');
		gotoxy(47,6);writeln('[ ]      [ ] ');
		gotoxy(47,7);writeln('[ ]      [ ] ');
		gotoxy(47,8);writeln('[ ]      [ ] ');
		gotoxy(47,9);writeln('[ ]      [ ] ');     
		gotoxy(47,10);writeln(' [ ]-[]-[ ] ');   
		
		if a=1 then
			begin
				delay(870);	
			end;
		if a=2 then
			begin
				textcolor(white);
				gotoxy(62,2);writeln('[ ]-[]-[]-[]-[ ]');        
				delay(35);
				textcolor(black);
				
				textcolor(white);	
				gotoxy(62,3);writeln('     [ ]        ');       
				delay(35);
				textcolor(black);	
				
				textcolor(white);				
				gotoxy(62,4);writeln('     [ ]        ');
				delay(35);
				textcolor(black);
				
				textcolor(white);					
				gotoxy(62,5);writeln('     [ ]        ');       
				delay(35);
				textcolor(black);
				
				textcolor(white);				
				gotoxy(62,6);writeln('     [ ]        ');
				delay(35);
				textcolor(black);
				
				textcolor(white);				
				gotoxy(62,7);writeln('     [ ]        ');
				delay(35);
				textcolor(black);
				
				textcolor(white);					
				gotoxy(62,8);writeln('     [ ]        ');
				delay(35);
				textcolor(black);
				
				textcolor(white);					
				gotoxy(62,9);writeln('     [ ]        ');
				delay(35);
				textcolor(black);
				
				textcolor(white);					
				gotoxy(62,10);writeln('     [_]        ');
				delay(35);
				textcolor(black);	
			end;	  
			  
		gotoxy(62,2);writeln('[ ]-[]-[]-[]-[ ]');        
		gotoxy(62,3);writeln('     [ ]        ');       
		gotoxy(62,4);writeln('     [ ]        ');
		gotoxy(62,5);writeln('     [ ]        ');       
 		gotoxy(62,6);writeln('     [ ]        ');
		gotoxy(62,7);writeln('     [ ]        ');
 		gotoxy(62,8);writeln('     [ ]        ');
 		gotoxy(62,9);writeln('     [ ]        ');
 		gotoxy(62,10);writeln('     [_]        ');
		 

		if a=2 then
		begin
			textcolor(white);
			gotoxy(81,2);writeln(' [ ]-[]-[ ] ');
			delay(35);
			textcolor(black);
			
			textcolor(white);				
			gotoxy(81,3);writeln('[ ]         ');
			delay(35);
			textcolor(black);
			
			textcolor(white);
			gotoxy(81,4);writeln('[ ]         ');
			delay(35);
			textcolor(black);
			
			textcolor(white);				
			gotoxy(81,5);writeln('[ ]         ');
			delay(35);
			textcolor(black);	
			
			textcolor(white);			
			gotoxy(81,6);writeln('[ ]-[]-[ ]  ');
			delay(30);
			textcolor(black);

			textcolor(white);				 
			gotoxy(81,7);writeln('[ ]         ');
			delay(35);
			textcolor(black);		

			textcolor(white);
			gotoxy(81,8);writeln('[ ]         ');
			delay(35);
			textcolor(black);

			textcolor(white);				
			gotoxy(81,9);writeln('[ ]         ');		
			delay(35);
			textcolor(black);
				
			textcolor(white);	
			gotoxy(81,10);writeln(' [ ]-[]-[ ] ');	
			delay(35);
			textcolor(black);			
		end;
					
		gotoxy(81,2);writeln(' [ ]-[]-[ ] ');
		gotoxy(81,3);writeln('[ ]         ');
		gotoxy(81,4);writeln('[ ]         ');
		gotoxy(81,5);writeln('[ ]         ');
		gotoxy(81,6);writeln('[ ]-[]-[ ]  '); 
		gotoxy(81,7);writeln('[ ]         ');
		gotoxy(81,8);writeln('[ ]         ');
		gotoxy(81,9);writeln('[ ]         ');
		gotoxy(81,10);writeln(' [ ]-[]-[ ] ');	
  
		if a=2 then
		begin
		
		textcolor(white);
		gotoxy(95,2);writeln('[ ]');
		delay(30);
		textcolor(black);
		
		textcolor(white);
		gotoxy(95,3);writeln('[ ]');
		delay(30);
		textcolor(black);
		
		textcolor(white);
		gotoxy(95,4);writeln('[ ]');
		delay(30);
		textcolor(black);
		
		textcolor(white);
		gotoxy(95,5);writeln('[ ]');
		delay(30);
		textcolor(black);
		
		textcolor(white);
		gotoxy(95,6);writeln('[ ]');
		delay(30);
		textcolor(black);
		
		textcolor(white);
		gotoxy(95,7);writeln('[ ]');
		delay(30);
		textcolor(black);
		
		textcolor(white);
		gotoxy(95,8);writeln('[ ]');
		delay(30);
		textcolor(black);
		
		textcolor(white);
		gotoxy(95,9);writeln('[ ]');		
		delay(30);
		textcolor(black);
		
		textcolor(white);
		gotoxy(95,10);writeln('[ ]-[]-[ ]');
		delay(30);
		textcolor(black);
		end;
		
				
		gotoxy(95,2);writeln('[ ]');
		gotoxy(95,3);writeln('[ ]');
		gotoxy(95,4);writeln('[ ]');
		gotoxy(95,5);writeln('[ ]');
		gotoxy(95,6);writeln('[ ]');
		gotoxy(95,7);writeln('[ ]');
		gotoxy(95,8);writeln('[ ]');
		gotoxy(95,9);writeln('[ ]');
		gotoxy(95,10);writeln('[ ]-[]-[ ]');
		
				if a=1 then
		begin
			delay(970);
		end; 
		
		if a=1 then 
		begin
		textcolor(white);
			
		gotoxy(70,16); writeln(' _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ ');
		gotoxy(70,17);writeln('[]                                 []');		
		gotoxy(70,18);writeln('|         DESARROLLADORES           |');
	 	gotoxy(70,19);writeln('[]                                 []');
	 	gotoxy(70,20);writeln('|   - MOISES.GOMEZ                  |');
	 	gotoxy(70,21);writeln('[]                                 []');
	 	gotoxy(70,22);writeln('|   - GUSTAVO.MANEIRO               |');
	 	gotoxy(70,23);writeln('[]                                 []');
	 	gotoxy(70,24);writeln('|   - WILLIAMS.ALAS                 |');
	 	gotoxy(70,25);writeln('[]                                 []');
		gotoxy(70,26);write('   -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- ');		
		delay(1000); 
		clrscr;
		end; 
		
		if a=2 then 
		begin
		textcolor(white);
		gotoxy(37,16); writeln(' _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ ');
		gotoxy(37,17);writeln('[]                                 []');		
		gotoxy(37,18);writeln('|         DESARROLLADORES           |');
	 	gotoxy(37,19);writeln('[]                                 []');
	 	gotoxy(37,20);writeln('|   - MOISES.GOMEZ                  |');
	 	gotoxy(37,21);writeln('[]                                 []');
	 	gotoxy(37,22);writeln('|   - GUSTAVO.MANEIRO               |');
	 	gotoxy(37,23);writeln('[]                                 []');
	 	gotoxy(37,24);writeln('|   - WILLIAMS.ALAS                 |');
	 	gotoxy(37,25);writeln('[]                                 []');
		gotoxy(37,26);write('   -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- ');		
		delay(500); 
		clrscr;
		end;		
		
		if a=3 then 
		
		begin
		textcolor(white);
			
		gotoxy(10,16); writeln(' _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ ');
		gotoxy(10,17);writeln('[]                                 []');		
		gotoxy(10,18);writeln('|         DESARROLLADORES           |');
	 	gotoxy(10,19);writeln('[]                                 []');
	 	gotoxy(10,20);writeln('|   - MOISES.GOMEZ                  |');
	 	gotoxy(10,21);writeln('[]                                 []');
	 	gotoxy(10,22);writeln('|   - GUSTAVO.MANEIRO               |');
	 	gotoxy(10,23);writeln('[]                                 []');
	 	gotoxy(10,24);writeln('|   - WILLIAMS.ALAS                 |');
	 	gotoxy(10,25);writeln('[]                                 []');
		gotoxy(10,26);write('   -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- ');	
		
			
		
		gotoxy(70,19); writeln(' _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ ');
		gotoxy(70,20);writeln('[]                                 []');		
		gotoxy(70,21);writeln('|         REGISTARTE AQUI           |');
	 	gotoxy(70,22);writeln('[]                                 []');
		gotoxy(70,23);write('   -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- ');		
		gotoxy(100,21); readln();	
		end;
	end;		

end;



begin
	pantalla;
end.
