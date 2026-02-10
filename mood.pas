//Ein Roboter bewertet Ihre Laune. Das Programm ließt dabei ihre geschlafenen Stunden
//und Anzahl der bisher getrunkenen Tassen Kaffee.
//Erstellen sie eine individuelle Ausgabe für folgende Fälle:
//− Wenn man mindestens 8h geschlafen hat und bisher nur maximal einen Kaffee 
//benötigt, hat soll „Supermensch“ ausgegeben werden
//− Bei mindestens 6 geschlafenen Stunden und maximal 3 Tassen Kaffee 
//„Funktionierend“
//− Wenn man bis zu 5h geschlafen hat und mehr als 3 Tassen Kaffee intus hat, soll 
//„Zittrig, aber wach“ ausgegeben werden
//− Hat man maximal 4 Stunden geschlafen und bisher keinen Kaffee gehabt, gibt die 
//Konsole „Zombiemodus“ aus.
//− Sollte man weniger als 3h Stunden geschlafen haben aber mindestens 5 Tassen
//Kaffee hatte gibt die Konsole „Robotemode ON“ aus
//=: gleich
//<>: ungleich
//<: kleiner als
//>: größer als
//<=: kleiner oder gleich
//>=: größer oder gleich 
program moody;

var
sleep, coffee : integer;
mood: String;

begin
  writeLn('Wieviele Stunden haben Sie geschlafen?: ');
  readLn(sleep);
  writeLn('Wieviele Kaffee-Tassen haben Sie getrunken?: ');
  readLn(coffee);

  if (sleep >= 8) and (coffee <= 1) then
    mood := 'Supermensch'
  else if (sleep >= 6) and (coffee <= 3) then
    mood := 'Funktionierend'
  else if (sleep <= 5) and (coffee > 3) then
    mood := 'Zittrig, aber wach'
  else if (sleep <= 4) and (coffee = 0) then
    mood := 'Zombiemodus'
  else if (sleep < 3) and (coffee >= 5) then
    mood := 'Robotemode ON'
  else
    mood := 'Unbekannter Zustand';
	writeLn(mood);
	readLn();
end.