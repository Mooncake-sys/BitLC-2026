//Schreiben Sie ein Programm, das eine Anzahl von Sekunden vom Nutzer einliest und sie 
//in Stunden, Minuten und Sekunden umrechnet und ausgibt.

program time;

var
gesamt, s, m, z: integer;

begin
writeLn('Geben sie die Sekundenanzahl ein: ');
readLn(gesamt);
s := gesamt div 3600;
z := gesamt mod 3600;
m := z div 60;
z := z mod 60;
writeLn('Ihr Ergebnis ist: ', s, 'Std, ', m, 'Min, ', z, ' Sek');
readLn;

end.