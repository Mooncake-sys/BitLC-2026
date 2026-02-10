//Schreiben Sie ein Programm, das Celsius in Fahrenheit umwandelt.
//Die Formel zur Umwandlung lautet: (Celsius x 9 / 5) + 32

program CelFar;

var
cel: real;

begin
writeLn ('Geben sie Ihre Temperatur an: ');
readLn(cel);
writeLn('Die Temperatur in Fahrenheit ist: ',(cel *9 / 5)+ 32 :0 :2);
readLn();
end.
