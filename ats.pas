//Schreiben Sie ein Programm, das das Alter einer Person in Jahren einliest und es in 
//Tagen und Stunden umrechnet und ausgibt. Gehen Sie davon aus, dass ein Jahr 365 
//Tage hat.

program Ats;

var
a: integer;
d, s: Int64;

begin
writeLn('Geben Sie ihr Alter an: ');
readLn(a);
 d := a * 365;//Tagesberechnung
 s := d * 24;//Stundenberechnung
 writeLn('Sie sind ', d, ' Tage und ', s, ' Stunden alt');
readLn; 

end.