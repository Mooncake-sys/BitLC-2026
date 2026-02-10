(*Entwickeln Sie ein Programm, das den Benutzer nach dem Monat (Zahl) und dem Tag 
(Zahl) fragt und dann die entsprechende Jahreszeit (Frühling, Sommer, Herbst oder 
Winter) ausgibt.
Recherchieren sie wann Frühling-, Sommer-, Herbst- und Winteranfang ist und 
berücksichtigen dies in Ihrem Programm.
Prüfen sie zusätzlich, ob der Nutzer eine ungültige Eingabe getätigt (gültiges Datum 
beispielsweise) hat und geben dementsprechend die passende Ausgabe aus.*)


program seasons;

var
month, day :integer;
valid: boolean;
begin
	writeLn('Gib den Monat als Zahl ein: ');
	readLn(month);
	writeLn('Gib den Tag als Zahl ein: ');
	readLn(day);
	
	valid := true;
	
	if(month < 1) or (month > 12) then
	valid := false
	else if (day < 1) or (day > 31) then
	valid := false
	else
	begin
	if ((month = 4) or (month = 6) or (month = 9) or (month = 11)) and (day > 30) then
	valid := false;
	if (month = 2) and (day >29) then
	valid := false;
	end;
	
	if not valid then
	writeLn('Sie haben ein ungueltiges Datum eingegeben!!')
	else
	begin
	write('Die Jahreszeit ist: ');
	
	if ((month = 3) and (day >= 21)) or (month = 4) or (month = 5) or ((month = 6) and (day <= 20)) then
	writeLn('Fruehling')
	else if ((month = 6) and (day >= 21)) or (month = 7) or (month = 8) or ((month = 9) and (day <= 22)) then
	writeLn('Sommer')
	else if ((month = 9) and (day >= 23)) or (month = 10) or (month = 11) or ((month =12) and (day <= 20)) then
	writeLn('Herbst')
	else
	writeLn('Winter')
    end;
	readLn;
end.
