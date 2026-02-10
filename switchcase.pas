program switchcase;

var
	auswahl :char;
	
begin
	writeLn('Geben Sie die Option A, B, C oder D ein. ');
	readLn(auswahl);
	
	case auswahl of
	'A', 'a': writeLn('Sie haben Option A gewaehlt');
	'B', 'b': writeLn('Sie haben Option B gewaehlt');
	'C', 'c': writeLn('Sie haben Option C gewaehlt');
	'D', 'd': writeLn('Sie haben Option D gewaehlt');
	'E'.. 'Z', 'e'..'z': writeLn('Sie haben Option ', auswahl, 'gewaehlt');
	else
	writeLn('Ungueltige Eingabe!');
	end;
	readLn();
	
end.
	