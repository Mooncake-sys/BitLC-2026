program clock;

var
n, i, j , k :integer;

begin
	WriteLn('Wie viele Zeilen?: ');
	ReadLn(n);
	//Obere Hälfte
	for i := n downto 1 do
	begin	
		for j := 1 to n - i do
			Write(' ');
		for k := 1 to (2 * i - 1) do
		begin	
			if (i = n) or (k = 1) or (k = (2 * i - 1)) then
				Write ('X')
			else               //Feststellung ob Rand oder Freifläche
				Write (' ');
			end;
			WriteLn;
		end;
	//Untere Hälfte
	for i := 2 to n do
	begin	
		for j := 1 to n - i do
			Write(' ');
		for k := 1 to (2 * i - 1) do 
			Write('X');
		WriteLn;
	end;
	ReadLn();
end.
		