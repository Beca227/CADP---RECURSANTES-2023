{8. Realizar un programa modularizado que lea secuencia de números enteros. La lectura finaliza cuando llega el
número 123456, el cual no debe procesarse. Informar en pantalla para cada número la suma de sus dígitos
pares y la cantidad de dígitos impares que posee. }

program ocho; 
const 
 corte = 12345; 
 
 function sumaDigPares (num: integer): integer; 
 var
 dig,suma: integer; 
 begin
 suma:= 0 ; 
  while ( num <> 0 )do 
   begin
     dig:= num mod 10; 
       if (( dig mod 2)= 0 ) then 
         suma:= suma + dig; 
       num:= num div 10; 
   end; 
 sumaDigPares:= suma; 
 end;

function cantDigImpares (num: integer): integer; 
var
dig,cant: integer; 
begin
cant:= 0 ; 
  while ( num <> 0 ) do 
    begin 
      dig:= num mod 10; 
       if (( num mod 2 )<> 0 )then 
         cant:= cant + 1; 
     num:= num div 10; 
    end; 
cantDigImpares:= cant; 
end; 

var
num,sumaPares,cantImpares: integer; 
begin
write('Ingrese un numero: '); 
 readln(num); 
  while ( num <> corte ) do 
    begin
      sumaPares:= sumaDigPares( num ); 
      cantImpares:= cantDigImpares ( num ); 
     
      writeln; 
     
    writeln ('La suma de los digitos pares es: ',sumaPares); 
    writeln ('La cantidad de digitos impares es: ',cantImpares); 
    
    write ('Ingrese un numero: ') ; 
     readln (num); 
    end; 

end. 
