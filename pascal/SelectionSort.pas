PROGRAM SelectionSort;

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
	FOR i:=1 TO 6 DO
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

PROCEDURE SelectionSort;
BEGIN
	writeln('Sorting menggunakan Metoda Selection Sort');
	VAR i,j,min : integer;
	FOR i:=1 TO 6 DO
	BEGIN
		min := i;
		FOR j:=i+1 TO 6 DO
		BEGIN
			IF Data[min] > Data[j] THEN min := j;
		END;
		TukarData(min,i);
	END;
		
END;

BEGIN
	InputData;
	write('Data Acak : ');
	CetakData;
	SelectionSort;
	write('Data Urut : ');
	CetakData;
END.	
