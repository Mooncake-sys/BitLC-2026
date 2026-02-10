//Entwickeln Sie ein Programm, um die Namen aller Teilnehmer Ihrer Klasse über die 
//Tastatur zu erfassen und in einer Liste abzulegen. Anschließend sollen die Werte der 
//Liste am Monitor angezeigt werden. 
{$Codepage utf8}
program namelist;
var 
name: array of string;
i, n: integer;

begin
    writeln('Wie viele Namen möchten Sie speichern?: '); //Bestimmung der Array Größe
    readln(n);

    SetLength(name, n);

    for i := 0 to n -1 do //Hinterlegung der Namen im Array
    begin
        write('Name ', i + 1, ': ');
        readln(name[i]);
    end;
    
    writeln('----------Namensliste----------: '); //Ausgabe der Namen im Array als Liste
    for i := 0 to n -1 do
    begin
        writeln(name[i]);
    end;
    readln;
end.