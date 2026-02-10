{$codepage utf8}
//Schreiben Sie ein Programm, das die Noten von Schülern in einem Fach speichert und 
//den Durchschnitt berechnet. 
//Der Nutzer soll dabei folgende Eingaben tätigen: 
// Anzahl der Schüler 
// Das Fach in die Noten geschrieben wurden 
// Noten der Schüler 
program notesdurch;

type
  Schueler = record
    name: string;
    noten: array of integer;
    note_durchschnitt: integer;
  end;

var
  schueler_liste: array of Schueler;
  faecher: array of string;
  fach_durchschnitt: array of integer;
  i, j, anzahl, faecheranzahl: integer;
  summe: integer;
  temp: Schueler;

begin
  write('Wie viele Schueler? ');
  readln(anzahl);
  write('Wie viele Noten pro Schueler? ');
  readln(faecheranzahl);
  
  SetLength(schueler_liste, anzahl);
  SetLength(faecher, faecheranzahl);
  
  writeln('');
  writeln('=== FAECHERNAMEN EINGEBEN ===');
  for j := 0 to faecheranzahl - 1 do
  begin
    write('Fach ', j+1, ': ');
    readln(faecher[j]);
  end;
  
  writeln('');
  writeln('=== NOTEN EINGEBEN ===');
  for i := 0 to anzahl - 1 do
  begin
    write('Name von Schueler ', i+1, ': ');
    readln(schueler_liste[i].name);
    SetLength(schueler_liste[i].noten, faecheranzahl);
    
    for j := 0 to faecheranzahl - 1 do
    begin
      write('  ', faecher[j], ': ');
      readln(schueler_liste[i].noten[j]);
    end;
    writeln('');
  end;
  
  { Durchschnitte berechnen }
  for i := 0 to anzahl - 1 do
  begin
    summe := 0;
    for j := 0 to faecheranzahl - 1 do
      summe := summe + schueler_liste[i].noten[j];
    schueler_liste[i].note_durchschnitt := summe div faecheranzahl;
  end;
  
  { Detaillierte Ausgabe }
  writeln('=== ERGEBNISSE ===');
  writeln('');
  for i := 0 to anzahl - 1 do
  begin
    write('Schueler: ');
    writeln(schueler_liste[i].name);
    for j := 0 to faecheranzahl - 1 do
    begin
      write('  ', faecher[j], ': ');
      writeln(schueler_liste[i].noten[j]);
    end;
    write('  Durchschnitt: ');
    writeln(schueler_liste[i].note_durchschnitt);
    writeln('');
  end;
  
  { Fach-Durchschnitte berechnen }
  SetLength(fach_durchschnitt, faecheranzahl);
  for j := 0 to faecheranzahl - 1 do
  begin
    summe := 0;
    for i := 0 to anzahl - 1 do
      summe := summe + schueler_liste[i].noten[j];
    fach_durchschnitt[j] := summe div anzahl;
  end;
  
  { Fach-Durchschnitte ausgeben }
  writeln('=== FACH-DURCHSCHNITTE ===');
  for j := 0 to faecheranzahl - 1 do
  begin
    write(faecher[j], ': ');
    writeln(fach_durchschnitt[j]);
  end;
  writeln('');
  
  { Rangliste }
  if anzahl > 1 then
  begin
    for i := 0 to anzahl - 2 do
    begin
      for j := i + 1 to anzahl - 1 do
      begin
        if schueler_liste[i].note_durchschnitt > schueler_liste[j].note_durchschnitt then
        begin
          temp := schueler_liste[i];
          schueler_liste[i] := schueler_liste[j];
          schueler_liste[j] := temp;
        end;
      end;
    end;
  end;
  
  writeln('=== RANGLISTE ===');
  for i := 0 to anzahl - 1 do 
  begin
    write(i+1, '. ');
    write(schueler_liste[i].name);
    write(' - ');
    writeln(schueler_liste[i].note_durchschnitt);
  end;
  
  writeln('');
  readln;
end.