{$codepage utf8}
program gamertag_generator;

uses
  sysutils;

const
  ADJ_COUNT = 15;
  NOUN_COUNT = 15;

const
  ADJECTIVES: array[0..ADJ_COUNT-1] of string = (
    'Silent', 'Crazy', 'Mighty', 'Shadow', 'Swift', 'Frost', 'Iron', 'Neon', 'Lucky', 'Ghost', 'Salty', 'Legendary', 'Gritty', 'Capable', 'Shy'
  );

  NOUNS: array[0..NOUN_COUNT-1] of string = (
    'Runner', 'Wolf', 'Gamer', 'Blade', 'Falcon', 'Dragon', 'Ninja', 'Rider', 'Viper', 'Hunter', 'Butcher', 'Banshee', 'God', 'Vampire', 'Monster'
  );

var
  i, count, aIdx, nIdx, num: integer;
  tag, choice: string;

begin
  randomize;

  writeln('Wie viele Gamertags sollen generiert werden?');
  readln(count);
  if count < 1 then
    count := 1;

  writeln('Mit Zahlen anhängen? (y/n)');
  readln(choice);

  writeln;
  writeln('=== Generierte Gamertags ===');
  for i := 1 to count do
  begin
    aIdx := random(ADJ_COUNT);
    nIdx := random(NOUN_COUNT);
    tag := ADJECTIVES[aIdx] + NOUNS[nIdx];

    if (LowerCase(choice) = 'j') or (LowerCase(choice) = 'y') then
    begin
      num := random(900) + 10; // zweistellige bis dreistellige Zahl
      tag := tag + IntToStr(num);
    end;

    writeln(i, '. ', tag);
  end;

  writeln;
  writeln('Fertig.');
  readln;
end.
