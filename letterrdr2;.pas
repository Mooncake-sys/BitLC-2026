{$codepage utf8}
//Entwickeln Sie ein Programm, das die Zeichen 'a' und 'A' in einem Text zählt. 
//Den Text geben sie zuvor über eine Nutzereingabe vor. 
//Tipp!
//Ein Text (also Datentyp STRING) ist auch ein Array 
//Ein String fängt allerding bei Index-Platz = 1 an

//Erweitern sie die Buchstaben-Suche aus Array03 (erstes Aufgabenblatt) so, dass der Nutzer 
//sich vorher aussuchen darf, nach welchem Buchstaben gesucht werden soll.
program letterrdr2;

var 
  input: string;
  chars: array of char;
  i, len, countLower, countUpper: integer;
  searchUpper, searchLower: char;

begin
  writeln('Welcher Buchstabe (groß) soll gesucht werden?: ');
  readln(searchUpper);
  writeln('Welcher Buchstabe (klein) soll gesucht werden?: ');
  readln(searchLower);

  writeln('Gib einen Text ein: ');
  readln(input);

  len := length(input);
  SetLength(chars, len);

  for i := 1 to len do
    chars[i-1] := input[i];

  countLower := 0;
  countUpper := 0;
  for i := 0 to len - 1 do
  begin
    if chars[i] = searchUpper then
      inc(countUpper);
    if chars[i] = searchLower then
      inc(countLower);
  end;

  writeln;
  writeln('=== Ergebnis ===');
  writeln('Gesuchter Buchstabe (Großbuchstabe): ', searchUpper);
  writeln('Gesuchter Buchstabe (Kleinbuchstabe): ', searchLower);
  writeln;
  writeln('Anzahl von ', searchUpper, ': ', countUpper);
  writeln('Anzahl von ', searchLower, ': ', countLower);

  readln;
end.