//Lesen sie eine Punktezahl ein (0 - 100). Das Programm soll daraufhin die Note auf der 
//Konsole ausgeben.
//Orientieren sie sich dabei an folgendem Notenspiegel:100-92(1),91-82(2),81-67(3),66-50(4),49-30(5),29-0(6)
//Es dürfen nur Zahlen von 0 – 100 eingegeben werden. Sollen Zahlen 
//außerhalb des Bereichs angegeben werden, soll das Programm beendet werden. 
//Überlegen sie, wie sie das prüfen können.

program noten;

var
grade :int64;

begin
   writeln ('Bitte geben sie Ihre Punktzahl ein: ');
   readln(grade);

case grade of
  92..100: writeln('Sie haben die Note 1.');
  82..91:  writeln('Sie haben die Note 2. ');
  67..81:  writeln('Sie haben die Note 3. ');
  50..66:  writeln('Sie haben die Note 4.');
  30..49:  writeln('Sie haben die Note 5. ');
  0..29:   writeln('Sie haben die Note 6. ');
  else     
    writeln('Bitte geben Sie eine gueltige Punktzahl an! ');
    readln();
end;
readln();
end.