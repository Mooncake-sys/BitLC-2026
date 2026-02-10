PROGRAM XOXOMuster;
USES Crt;
VAR
  i, j: Integer;
BEGIN
  FOR i := 1 TO 5 DO
  BEGIN
    FOR j := 1 TO 5 DO
    BEGIN
      IF ((i + j) MOD 2 = 1) THEN
      BEGIN
        TextColor(LightGreen);
        Write('X');
      END
      ELSE
      BEGIN
        TextColor(Cyan);
        Write('O');
      END;
    END;
    WriteLn;
  END;
  TextColor(LightGray);
  ReadLn();
END.