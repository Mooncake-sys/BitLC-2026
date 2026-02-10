{ Schreiben Sie ein Programm „Summe1“, das die folgende Summe berechnet: }
{ Summe = 1 + 2 + 3 + 4 + … + n }
{ Die Variable n ist vom Typ INT, bis zu dem die Reihe berechnet werden soll. Sie wird vom }
{ Anwender eingegeben.  }
{ Das Ergebnis soll am Ende der Berechnung ausgegeben werden }


{ program summe1; }

{ var }
	{ n, summe, blockSum, i, j : integer; }
	
{ begin }
	{ summe := 0; }
	{ blockSum := 0; }
	
	{ writeLn('Wie oft soll von 1-10 addiert werden?: '); }
	{ readLn(n); }
	
	{ for i := 1 to n do }
		{ for j := 1 to 10 do }
			{ begin }
		{ summe := summe + j; }
			{ end; }
		
	
	{ writeLN('Die Summe nach ', n, ' Addierungen ist: ', summe); }
	
	{ readLn(); }
	
{ end. }


program summe1;
	var	
		n, i, summe :integer;
		
		begin
		summe := 0;
		writeLn('Bis zu welcher Zahl soll addiert werden?: ');
		readLn(n);
		
		for i := 1 to n do
			begin
			summe := summe + i;
			end;
			
			writeLn('Die gesamte Summe ist: ', summe);
			readLn();
			end.