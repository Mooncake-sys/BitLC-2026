program muster4;
uses crt;
var
  i, j, n: Integer;
begin
  //Abfrage wieviele Zeilen
  Write('Anzahl Zeilen: ');
  ReadLn(n);

  for i := 1 to n do
  begin
    // Leerzeichen vor den X(sterne)
    for j := 1 to n - i do
      Write(' ');
    // X(sterne)
    for j := 1 to 2 * i - 1 do
		TextColor(Cyan);
      Write('*****');
    WriteLn;
  end;
  ReadLn();
end.