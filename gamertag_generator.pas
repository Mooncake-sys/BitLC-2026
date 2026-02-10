{$codepage utf8}
program gamertag_generator;

uses
  sysutils;

const //Wieviele verwendet werden können (Auswahl von)
  ADJ_COUNT = 15;
  NOUN_COUNT = 15;

const //Angabe der zu verwendenden Adjektive
  ADJECTIVES: array[0..ADJ_COUNT-1] of string = (
    'Silent', 'Crazy', 'Mighty', 'Shadow', 'Swift', 'Frost', 'Iron', 'Neon', 'Lucky', 'Ghost', 'Salty', 'Legendary', 'Gritty', 'Capable', 'Shy'
  );
     //Angabe der zu verwendenden Nomen
  NOUNS: array[0..NOUN_COUNT-1] of string = (
    'Runner', 'Wolf', 'Gamer', 'Blade', 'Falcon', 'Dragon', 'Ninja', 'Rider', 'Viper', 'Hunter', 'Butcher', 'Banshee', 'God', 'Vampire', 'Monster '
  );

var
  i, count, aIdx, nIdx, num, j: integer;
  tag, choice: string;
  generatedTags: array of string;
  tagExists: boolean;

begin
  randomize;

  writeln('Wie viele Gamertags sollen generiert werden?'); //Abfrage für wieviele Gamer-Tags
  readln(count);
  if count < 1 then
    count := 1;

  writeln('Mit Zahlen anhängen? (y/n)'); //Abfrage ob Zahlen mitverwendet werden sollen
  readln(choice);

  writeln;
  writeln('=== Generierte Gamertags ===');
  SetLength(generatedTags, count);
  
  for i := 1 to count do
  begin
    repeat
      aIdx := random(ADJ_COUNT);
      nIdx := random(NOUN_COUNT);
      tag := ADJECTIVES[aIdx] + NOUNS[nIdx];

      if (LowerCase(choice) = 'j') or (LowerCase(choice) = 'y') then
      begin
        num := random(900) + 10;
        tag := tag + IntToStr(num);
      end;

      //Prüfen ob Gamer-Tag bereits existiert 
      tagExists := false;
      for j := 0 to i - 2 do
      begin
        if generatedTags[j] = tag then
          tagExists := true;
      end;
    until not tagExists;

    generatedTags[i - 1] := tag;
    writeln(i, '. ', tag);
  end;

  writeln;
  writeln('Fertig.');
  readln;
end.
