{$codepage utf8}
program EinarmigerBandit;

uses crt;

var
  coins, zahl1, zahl2, zahl3: integer;
  i: integer;
  weiter: char;

begin
  randomize;
  coins := 10;

  writeln('Willkommen! Druecken Sie eine Taste, um zu spielen.');
  writeln('Sie haben 10 Coins.');

  repeat
    if coins <= 0 then
    begin
      writeln('Keine Coins mehr! Spiel beendet.');
      break;
    end;

    // Auf Tastendruck warten
    while not KeyPressed do
    begin
      Delay(10); // CPU-Last reduzieren
    end;
    ReadKey; // Taste abfangen

    coins := coins - 1;

    // Animation der Walzen
    writeLn('Walzen drehen: '); 
    for i := 1 to 15 do 
    begin
      GotoXY(13, WhereY);
      write(random(10)+1, ' ', random(10)+1, ' ', random(10)+1);
      Delay(80);
    end;

    // Endergebnis
    GotoXY(13, WhereY);
    zahl1 := random(10) + 1;
    zahl2 := random(10) + 1;
    zahl3 := random(10) + 1;
    writeLn(zahl1, ' ', zahl2, ' ', zahl3, ' ');

    if (zahl1 = zahl2) and (zahl2 = zahl3) then
    begin
      coins := coins + 10;
      write(' 10 Coins gewonnen! ');
    end
    else if (zahl1 = zahl2) or (zahl1 = zahl3) or (zahl2 = zahl3) then
    begin
      coins := coins + 3;
      write(' 3 Coins gewonnen! ');
    end
    else
    begin
      write(' leider verloren, ');
    end;

    writeln('Guthaben: ', coins, ' Coins');
    writeln('Druecken Sie eine Taste fuer das naechste Spiel oder "n", um zu beenden.');

    // Prüfen, ob 'n' gedrückt wurde
    while not KeyPressed do
      Delay(10);
    weiter := ReadKey;
	if random(10) = 0 then
    begin
      coins := coins + 5;
      writeln('♦BONUS! 5 extra Coins!♦ Neues Guthaben: ', coins, ' Coins');
    end;

  until (weiter = 'n') or (weiter = 'N');

  writeln;
  writeln('Danke fürs Spielen! Endguthaben: ', coins, ' Coins');
  readln;
end.