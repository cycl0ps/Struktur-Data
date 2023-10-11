PROGRAM TukarData;

VAR 
	Data : ARRAY [1..6] OF integer;

PROCEDURE InputData;
BEGIN
	VAR i : integer;
	FOR i:=1 TO 6 DO
	BEGIN
		write('Masukkan Elemen ke-',i,' = ');
		readln(Data[i]);
	END;
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

PROCEDURE TukarData(i:integer; j:integer);
BEGIN
	VAR tmp : integer;
	tmp := Data[i];
	Data[i] := Data[j];
	Data[j] := tmp;
END;

PROCEDURE BubbleSort;
BEGIN
	VAR i,j : integer;
	FOR i:=1 TO 5 DO
	BEGIN
		FOR j:=1 TO 6-i DO
		BEGIN
			IF Data[j] > Data[j+1] THEN TukarData(j,j+1);
		END;
	END;
		
END;

BEGIN
	InputData;
	CetakData;
	BubbleSort;
	CetakData;
END.	
