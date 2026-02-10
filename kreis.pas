//Schreiben Sie Programm, das den Radius eines Kreises vom Nutzer einliest und den 
//Umfang des Kreises berechnet und ausgibt. 
//Verwende Pi (π = 3.14159)
 program kreis;
 
 var
rad, umf: real;
 begin
writeLn('Gib den Radius ein: ');
readLn(rad);
umf := 2 * Pi * rad;
writeLn ('Der Umfang des Kreises ist: ', umf:0:2);
readLn;
end.