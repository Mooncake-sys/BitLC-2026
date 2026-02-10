program fantasy_game;

uses crt;

var
  nam: string;
  str, ges, luc, n, sum: integer;
  rdy: boolean;

begin
  // Initialisierung
  str := 0; ges := 0; luc := 0;
  rdy := false;
  
  clrscr;//< zum löschen des screens (Console clear)
  TextColor(LightCyan);
  Write('Name der Spielfigur: '); //Namensgebung des chars
  ReadLn(nam);

  repeat
    clrscr;
    TextColor(LightCyan);
    WriteLn('--- Charakter-Menue fuer ', nam, ' ---');//Auswahlmenü
    WriteLn('Aktuelle Werte:');
    WriteLn('Bitte  vergebe 15 Punkte!');
    TextColor(LightRed);   WriteLn('1. Staerke:    ', str);
    TextColor(LightGreen); WriteLn('2. Gesundheit: ', ges);
    TextColor(Yellow);      WriteLn('3. Glueck:     ', luc);
    
    TextColor(Blue);
    WriteLn('4. Charakter fertigstellen');
    WriteLn('---------------------------');
    Write('Deine Wahl (1-4): ');
    ReadLn(n);

    case n of
      1: begin
           repeat
             Write('Neue Staerke (1-10): ');
             ReadLn(str);
           until (str >= 1) and (str <= 10);
         end;
      2: begin
           repeat
             Write('Neue Gesundheit (1-10): ');
             ReadLn(ges);
           until (ges >= 1) and (ges <= 10);
         end;
      3: begin
           repeat
             Write('Neues Glueck (1-10): ');
             ReadLn(luc);
           until (luc >= 1) and (luc <= 10);
         end;
      4: rdy := true;
    else
      WriteLn('Ungueltige Wahl!');
      Delay(1000); // Delay damit man die Nachricht sieht.
    end;
  until rdy;

  // Prüfung ob über 15 Punkte vergeben wurden
  sum := str + ges + luc;
  if sum > 15 then
  begin
    TextColor(Red);
    WriteLn;
    WriteLn('Sie haben zuviele Punkte vergeben (', sum, ')! Alle Werte werden auf 5 gesetzt.');
    str := 5; ges := 5; luc := 5;
  end;

  // Finales Blatt des erstellten Charakters
  WriteLn;
  TextColor(LightGray);
  WriteLn('--- Finales Charakterblatt ---');
  TextColor(LightCyan);       WriteLn('Name:       ', nam);
  TextColor(LightRed);   WriteLn('Staerke:    ', str);
  TextColor(LightGreen); WriteLn('Gesundheit: ', ges);
  TextColor(Yellow);     WriteLn('Glueck:     ', luc);
  TextColor(White);
  WriteLn('Druecke Enter zum Beenden...');
  ReadLn;
end.