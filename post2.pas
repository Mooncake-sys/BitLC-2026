{$codepage utf8}
program acht;
var
    pauschaleVK, preisKG, abfrageKG, preisKG20, grundgewicht10, grundgewicht20, gesamtkosten: real;

begin
//bis 10kg (inklusive) 3,00€
//ab 10kg für jedes weitere 0.25€
//ab einem gewicht von 20kg jedes kg über 10 0.50€
    pauschaleVk := 3.00;
    preisKG := 0.25;
    grundgewicht10 := 10;
	abfrageKG := 20;
	grundgewicht20 := 20;
	preisKG20 := 0.50;
    writeln('Gewicht in KG eingeben: ');
    readln(abfrageKG);

    if (abfrageKG > grundgewicht10) and (abfrageKG < grundgewicht20) then
    begin
        gesamtkosten:= pauschaleVK + (abfrageKG - grundgewicht10) * preisKG20;
    end
    else if abfrageKG >= grundgewicht20 then
    begin
    gesamtkosten:= pauschaleVK;
    end;
    writeln('Gesamtversandkosten: ', gesamtkosten:0:2, ' Euro');
    readLn();
end.