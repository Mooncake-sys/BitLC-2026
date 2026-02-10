{$codepage utf8}

//Speichern Sie mit Hilfe des Zufallszahlengenerators (Random) die Lottozahlen vom 
//nächsten Samstag in einem Array. 
//Achtung: Keine Lottozahl darf doppelt vorkommen.
program lotto;
const
  NUM = 6;                             // Anzahl der 6.Lottozahlen 
  MAX = 49;                           //Zahlenbereich 1..49 in dem gezogen wird (Random Zahlen die erzeugt werden)

var
  nums: array[1..NUM] of integer;    //Speicher der Nummern
  i, j, r: integer;               
  duplicate: boolean;                //Benötigt zum Check für die Duplikat- Nummern

begin
  Randomize;                         //Randomizing der Zahlen von 1-49
  i := 1;
  while i <= NUM do
  begin
    r := Random(MAX) + 1;        
    duplicate := false;
    for j := 1 to i-1 do
      if nums[j] = r then            //Mark-down/Check im array auf duplicates
      begin
        duplicate := true;
        break;
      end;
    if not duplicate then            //Ausgabe für non duplicates
    begin
      nums[i] := r;
      i := i + 1;
    end;
  end;

  writeln('Lottozahlen für Samstag:');
  for i := 1 to NUM do  
    write(nums[i]:3, ' ');          //generelle Ausgabe der Zahlen die nicht dupliziert wurden.
  writeln;

  writeln('Drücke Enter zum Beenden...');
  readln;
end.
