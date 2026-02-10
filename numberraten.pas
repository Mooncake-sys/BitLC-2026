program raten;
uses crt;

var
  Zufallszahl, Eingabe, Versuche, Differenz: Integer;

procedure Explosion;
var
  i, j: Integer;
begin
  clrscr;
  TextColor(Red);

  for i := 1 to 6 do
  begin
    clrscr;
    for j := 1 to i do
    begin
      gotoxy(40 - j, 12); write('*');
      gotoxy(40 + j, 12); write('*');
      gotoxy(40, 12 - j); write('*');
      gotoxy(40, 12 + j); write('*');
    end;
    delay(150);
  end;

  clrscr;
  TextColor(LightRed);
  gotoxy(35,12);
  writeln('GAME OVER');
  TextColor(White);
  delay(1200);
end;

procedure Feuerwerk;
var
  i, r: Integer;
begin
  clrscr;
  Randomize;

  for i := 1 to 8 do
  begin
    TextColor(Random(15) + 1);
    r := Random(6) + 2;

    gotoxy(40,12); write('*');
    gotoxy(40-r,12); write('*');
    gotoxy(40+r,12); write('*');
    gotoxy(40,12-r); write('*');
    gotoxy(40,12+r); write('*');

    gotoxy(40-r,12-r); write('*');
    gotoxy(40+r,12-r); write('*');
    gotoxy(40-r,12+r); write('*');
    gotoxy(40+r,12+r); write('*');

    delay(200);
    clrscr;
  end;

  TextColor(LightGreen);
  gotoxy(34,12);
  writeln('GEWONNEN!');
  TextColor(White);
  delay(1200);
end;

begin
  clrscr;
  Randomize;
  Zufallszahl := Random(10) + 1;   // ohne +1 nur 0-9 
  Versuche := 5;

  writeln('Ich denke an eine Zahl zwischen 1 und 10.');
  writeln('Sie haben drei Versuche.');
  writeln;

  while Versuche > 0 do
  begin
    write('Geben Sie eine Zahl ein: ');
    readln(Eingabe);

    if Eingabe = Zufallszahl then
    begin
      Feuerwerk;
      readln;
      halt;
    end
    else
    begin
      Dec(Versuche);
      Differenz := Abs(Eingabe - Zufallszahl);
      TextColor(Red);
      writeln('Falsch!');
      if Differenz > 5 then writeln('kalt')
      else if Differenz > 2 then writeln('warm')
      else writeln('heiss');

      writeln;
    end;
  end;

  writeln('Die richtige Zahl war ', Zufallszahl);
  Explosion;

  readln;
end.