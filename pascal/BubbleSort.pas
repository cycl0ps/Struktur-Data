PROGRAM BubbleSort;

VAR 
	Data : ARRAY [1..17] OF integer;

PROCEDURE InputData;
BEGIN
	VAR i : integer;
	FOR i:=1 TO 17 DO
	BEGIN
		write('Masukkan Elemen ke-',i,' = ');
		readln(Data[i]);
	END;
END;

PROCEDURE CetakData;
BEGIN
	VAR i : integer;
	FOR i:=1 TO 17 DO
	BEGIN
		write(Data[i],'  ');
	END;
	writeln;
END;

PROCEDURE TukarData(x:integer; y:integer);
BEGIN
	VAR tmp : integer;
	tmp := Data[x];
	Data[x] := Data[y];
	Data[y] := tmp;
END;

PROCEDURE BubbleSort;
BEGIN
	writeln('Sorting menggunakan Metoda Bubble Sort');
	VAR i,j : integer;
	FOR i:=1 TO 17 DO
	BEGIN
		FOR j:=1 TO 16 DO
		BEGIN
			IF Data[j] > Data[j+1] THEN TukarData(j,j+1);
		END;
	END;
		
END;

BEGIN
	InputData;
	write('Data Acak : ');
	CetakData;
	BubbleSort;
	write('Data Urut : ');
	CetakData;
END.	
