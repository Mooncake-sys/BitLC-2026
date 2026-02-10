{$codepage utf8}
{ Erstellen sie ein PASCAL-Konsolenprogramm, welches einem Wechselkursrechner  }
{ gleicht. Der Nutzer soll einen beliebigen Euro-Wert in das Programm einlesen. }
{ Ziel ist es dem Nutzer die Möglichkeit zu geben über ein Menü auswählen zu dürfen, in  }
{ welche Währung er seinen eingegebenen Betrag umwechseln möchte.  }
{ Zusätzlich wäre es sinnvoll dem Nutzer die Wechselkurse anzeigen zu lassen. }
{ Währungen die bei dem Programm eine Rolle spielen sollen: }
{ • Euro }
{ • Dollar }
{ • Yen }
{ • Pfund }
{ • Schweizer Franken }
{ • Dänische Kronen }
{ Entwickeln sie ein Programm, welches die Währung Euro in eine gewählte Währung  }
{ umrechnen kann. }

program wechsel;

   uses crt;
   
	var
	e : real;
	n : integer;
	
	begin
	repeat
	
	writeLn('In was möchten Sie wechseln?: ');
	writeLn('1: Dollar');
	writeLn('2: Yen');
	writeLn('3: Pound Sterling');
	writeLn('4: Swiss Franks');
	writeLn('5: Daenish Crowns');
	writeLn('9: Exit Program');
	writeLn('Geben Sie eine Nummer an: ');
	readLn(n);
	if n = 9 then
	begin
		WriteLn('Programm wird beendet...');
		readLn();
        Exit;
	end;
	writeLn('Eingabe des zu wechselnden Betrags in Euro: ');
	readLn(e);
	
	
	case n of
		1: writeLn('Euro in Dollar sind: ', (e * 1.18):0:2, '$');
		2: writeLn('Euro in Yen sind: ', (e * 185.0):0:2, '¥');
		3: writeLn('Euro in Pound Sterling sind: ', (e * 0.87):0:2, '£');
		4: writeLn('Euro in Swiss Franks sind: ', (e * 0.92):0:2, 'CHF');
		5: writeLn('Euro in Daenish Crowns sind: ', (e * 7.47):0:2, 'Ø');
	end;
	until n = 9;
	readLn();
end.