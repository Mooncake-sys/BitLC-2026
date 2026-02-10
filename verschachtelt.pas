program verschachtelt;

uses crt;

var
	i, j: integer;

begin
	//Äußere Schleife
	for i := 0 to 5 do
	begin
		//Innere Schleife
		write(i, ': ');
		for j := 5 downto 0 do
		begin
			if j mod 2 = 0 then
			begin
				TextColor(LightGreen);
				write('X ');
				Delay(1000);
			end
			else
			begin
				TextColor(LightRed);
				write('O ');
				Delay(1000);
			end;
		end;
		writeln();
	end;
	readln();
end.