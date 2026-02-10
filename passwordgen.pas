{$codepage utf8}
(*Erstellen sie einen Passwortgenerator, welches zufällige Passwörter generiert. Dabei ist 
folgendes zu beachten:
• Das Passwort soll mindestens 8 Zeichen enthalten
• Das Passwort soll aus mindestens einem Groß- und Kleinbuchstaben bestehen
• Das Passwort soll mindestens eine Zahl enthalten
• Das Passwort soll mindestens ein Sonderzeichen enthalten.
Das Passwort soll in einem array of char gespeichert werden. 
Wenn die Generierung abgeschlossen ist, dann legen sie das Passwort als STRING an.*)

program passwordgen;
var
  password: array of char;
  passwordStr: string;
  i, j, len, randomPos: integer;
  tempChar: char;

begin
  randomize;
  
  writeln('Wie lang soll das Passwort sein? (mindestens 8: Zeichen)');
  readln(len);
  
  if len < 8 then
  begin
    writeln('Warnung: Passwortlänge muss mindestens 8 Zeichen sein!');
    len := 8;
  end;
  
  SetLength(password, len);
  
  (*Großbuchstabe an Position 0 *)
  password[0] := chr(65 + random(26));
  
  (*Kleinbuchstabe an Position 1 *)
  password[1] := chr(97 + random(26));
  
  (* Zahl an Position 2 *)
  password[2] := chr(48 + random(10));
  
  (* Sonderzeichen an Position 3 *)
  case random(8) of
    0: password[3] := '!';
    1: password[3] := '@';
    2: password[3] := '#';
    3: password[3] := '$';
    4: password[3] := '%';
    5: password[3] := '&';
    6: password[3] := '*';
    7: password[3] := '+';
  end;
  
  (* Restliche Positionen mit Zufallszeichen füllen *)
  for i := 4 to len - 1 do
  begin
    case random(3) of
      0: password[i] := chr(65 + random(26));      (* Großbuchstabe *)
      1: password[i] := chr(97 + random(26));      (* Kleinbuchstabe *)
      2: password[i] := chr(48 + random(10));      (* Zahl *)
    end;
  end;
  
  (*Array durcheinander würfeln *)
  for i := len - 1 downto 1 do
  begin
    randomPos := random(i + 1);
    (*Tauschen*)
    tempChar := password[i];
    password[i] := password[randomPos];
    password[randomPos] := tempChar;
  end;
  
  (*Array in String umwandeln*)
  passwordStr := '';
  for i := 0 to len - 1 do
    passwordStr := passwordStr + password[i];
  
  writeln('=== Passwortgenerator ===');
  writeln();
  writeln('Generiertes Passwort: ', passwordStr);
  writeln('Passwortlänge: ', len);
  writeln();
  writeln('Das Passwort erfüllt folgende Anforderungen:');
  writeln(' Mindestens 8 Zeichen: X');
  writeln(' Mindestens ein Großbuchstabe: X');
  writeln(' Mindestens ein Kleinbuchstabe: X');
  writeln(' Mindestens eine Zahl: X');
  writeln(' Mindestens ein Sonderzeichen: X');
  
  readln;
end.