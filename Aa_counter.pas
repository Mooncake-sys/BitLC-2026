{$codepage utf8}
//Entwickeln Sie ein Programm, das die Zeichen 'a' und 'A' in einem Text zählt. 
//Den Text geben sie zuvor über eine Nutzereingabe vor. 
//Tipp!
//Ein Text (also Datentyp STRING) ist auch ein Array 
//Ein String fängt allerding bei Index-Platz = 1 an 

program letterrdr;

var
  input: string;
  chars: array of char;
  i, len, countLowerA, countUpperA: integer;

begin
  writeln('Gib einen Text ein:');
  readln(input);

  len := length(input);
  SetLength(chars, len);

  for i := 1 to len do
    chars[i-1] := input[i];

  countLowerA := 0;
  countUpperA := 0;
  for i := 0 to len - 1 do
  begin
    if chars[i] = 'a' then
      inc(countLowerA);
    if chars[i] = 'A' then
      inc(countUpperA);
  end;

    writeln('Anzahl von A: ', countUpperA);
    writeln('Anzahl von a: ', countLowerA);

  readln;
end.