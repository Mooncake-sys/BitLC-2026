//Schreiben Sie ein Programm, das die Länge und die Breite eines Rechtecks von der Konsole einliest und dessen Fläche berechnet und ausgibt.//
//Hint: Round(x*100)/100 Gleitkommazahlen auf 2 Stellen anzeigen lassen.


program Flaechen;

var
l, b, f: real;

begin
writeLn('Geben Sie die Laenge an: ');
readLn(l);
writeLn('Geben Sie die Breite an: ');
readLn(b);
f := l*b;
f := round ( f * 100 ) / 100;
writeLn('Die Flaeche ist: m²',f:0:2 );
readLn();

 end.