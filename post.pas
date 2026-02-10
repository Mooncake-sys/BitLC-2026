{$codepage utf8}
program acht;
var
    pauschaleVK, preisKG, abfrageKG, gesamtkosten, grundgewicht: real;

begin
//bis 10kg (inklusive) 3,00€
//ab 10kg für jedes weitere 0.25€
//ab einem gewicht von 20kg jedes kg über 10 0.50€
    pauschaleVk := 3.00;
    preisKG := 0.25;
    grundgewicht := 10;
    writeln('Gewicht in KG eingeben: ');
    readln(abfrageKG);

    if abfrageKG > grundgewicht then
    begin
        gesamtkosten:= pauschaleVK + (abfrageKG - 10) * preisKG;
    end
    else
    begin
    gesamtkosten:= pauschaleVK;
    end;
    writeln('Gesamtversandkosten: ', gesamtkosten:0:2, ' €');
    readLn();
end.