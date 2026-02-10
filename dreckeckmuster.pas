PROGRAM dreckeckmuster;
VAR
  i, j, n: Integer;
BEGIN
  Write('Anzahl Zeilen: ');
  ReadLn(n);

  FOR i := 1 TO n DO
  BEGIN
    // Leerzeichen für Zentrierung
    FOR j := 1 TO n - i DO
      Write(' ');
    // X-Sterne in der Zeile
    FOR j := 1 TO (2 * i - 1) DO
      Write('X');
    WriteLn;
  END;
  ReadLn();
END.