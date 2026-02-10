program muster3;
	
	var
	z,s :integer;
	begin
		for z := 1 to 8 do
		begin
			for s :=1 to 8 do
			begin
			if ((z <= 4) and (s <= 4)) or ((z > 4) and (s > 4)) then
				write ('.')
				else
				write ('=');
				end;
				writeLn();
			end;
			readLn();
	end.