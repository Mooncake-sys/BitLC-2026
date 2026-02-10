(*Erstellen Sie ein Programm „Hang-Man“: Ein Wort wird in einem Array eingegeben, der andere 
Mitspieler gibt nun einen Buchstaben ein. Nach jeder Eingabe wird der Rateerfolg angezeigt.
Beispiel:
Eingabe: a -a--
Eingabe: u -au
Eingabe: s -aus
Eingabe: m mau*)

program hangman;

uses
  sysutils, crt;

var
  word: array of char;
  wordLength, i, attempts, guessedCount: integer;
  guess: char;
  inputWord, guessInput: string;
  found: boolean;
  display: array of char;
  guessedLetters: array of char;
  guessCount: integer;

begin
  randomize;
  
  //Spieler 1: Wort eingabe
  writeln('=== HANGMAN SPIEL ===');
  writeln;
  writeln('Spieler 1: Gib ein Wort ein:');
  readln(inputWord);
  
  //Eingegebenes Wort im Array speichern
  wordLength := length(inputWord);
  SetLength(word, wordLength);
  SetLength(display, wordLength);
  SetLength(guessedLetters, 26);
  
  for i := 0 to wordLength - 1 do
  begin
    word[i] := inputWord[i + 1];
    display[i] := '-';  //Initialien aller Buchstaben verbergen
  end;
  
  guessCount := 0;
  attempts := 9;
  guessedCount := 0;
  
  writeln;
  TextColor(LightGreen);
  writeln('=== Spieler 2 beginnt zu raten ===');
  writeln('Das Wort hat ', wordLength, ' Buchstaben.');
  writeln('Du hast 9 Versuche!');
  writeln;
  
  //Spielschleife 
  while (attempts > 0) and (guessedCount < wordLength) do
  begin
    //Aktuellen Status anzeigen
    write('Wort: ');
    for i := 0 to wordLength - 1 do
      write(display[i]);
    writeln;
    writeln('Verbleibende Versuche: ', attempts);
    writeln;
    
    //Buchstabe eingabe
    write('Rate einen Buchstaben: ');
    readln(guessInput);
    
    if length(guessInput) < 1 then
    begin
      writeln('Bitte einen Buchstaben eingeben!');
      writeln;
      continue;
    end;
    
    guess := guessInput[1];
    
    //Prüfe ob Buchstabe bereits geraten wurde
    found := false;
    for i := 0 to guessCount - 1 do
    begin
      if guessedLetters[i] = guess then
      begin
        TextColor(Red);
        writeln('Diesen Buchstaben hast du bereits geraten!');
        writeln;
        found := true;
        break;
      end;
    end;
    
    if found then
      continue;
    
    //Buchstabe zu geratener Liste hinzufügen
    guessedLetters[guessCount] := guess;
    inc(guessCount);
    
    //Buchstabe im Wort suchen 
    found := false;
    for i := 0 to wordLength - 1 do
    begin
      if word[i] = guess then
      begin
        display[i] := guess;
        found := true;
        inc(guessedCount);
      end;
    end;
    
    if found then
    begin
        TextColor(LightGreen);
      writeln('Richtig! Der Buchstabe ist im Wort!')
    end
    else
    begin
        TextColor(LightRed);
      writeln('Leider falsch!');
      dec(attempts);
    end;
    
    writeln;
  end;
  
  //Spielende
  TextColor(Yellow);
  writeln('=== SPIELENDE ===');
  write('Das Wort war: ');
  for i := 0 to wordLength - 1 do
    write(word[i]);
  writeln;
  writeln;
  
  if guessedCount = wordLength then
  begin
    TextColor(LightGreen);
    writeln('Glückwunsch! Du hast gewonnen!')
  end
  else
  begin
    TextColor(LightRed);
    writeln('Game Over! Du hast verloren.');
    writeln('Verbleibende Versuche: ', attempts);
  end;
  
  readln;
end.