//Schreiben Sie ein Programm, das Ganzzahlen a und b einliest,ihre Summe berechnet und das Ergebnis ausgibt.



Program Datentypen;
var
 a, b, c: integer;
 
begin

write('Bitte geben Sie ihre 1.Zahl ein: ');
readLn(a);
write('Bitte geben Sie ihre 2.Zahl ein: ');
readLn(b);
c := a + b;
writeLn();
writeLn('Ihr Ergebnis ist: ',c);
readLn();

end.