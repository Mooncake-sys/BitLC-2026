{$codepage utf8}
(*Schreiben Sie ein Programm, das das größte Element in einem Array findet. Die Größe des Array 
und die Elemente sollen über eine Nutzereingabe eingelesen werden.
Das Array und das größte Element sollen später als Ausgabe angezeigt werden*)

program findMax;

var
  numbers: array of LongInt;
  size, i, maxValue: LongInt;

begin
  writeln('Wie viele Elemente soll das Array haben?');
  readln(size);

  SetLength(numbers, size);

  writeln('Gib die Elemente des Arrays ein:');
  for i := 0 to size - 1 do
  begin
    write('Element ', i + 1, ': ');
    readln(numbers[i]);
  end;

  maxValue := numbers[0];
  for i := 1 to size - 1 do
  begin
    if numbers[i] > maxValue then
      maxValue := numbers[i];
  end;

  writeln;
  write('Array: ');
  for i := 0 to size - 1 do
  begin
    write(numbers[i]);
    if i < size - 1 then
      write(', ');
  end;
  writeln;

  writeln('Das größte Element ist: ', maxValue);

  readln;
end.