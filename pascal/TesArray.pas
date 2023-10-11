PROGRAM TukarData;

VAR 
	Data : ARRAY [1..6] OF integer;

PROCEDURE InputData;
BEGIN
	Data[1..6] := (1;2;3;4;5;6);
END;

PROCEDURE CetakData;
BEGIN
	VAR i : integer;
	write('Data : ');
	FOR i:=1 TO 6 DO
	BEGIN
		write(Data[i],'  ');
	END;
	writeln;
END;

BEGIN
	InputData;
	CetakData;
END.	
