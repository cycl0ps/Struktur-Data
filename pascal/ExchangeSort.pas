PROGRAM ExchangeSort;

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

PROCEDURE ExchangeSort;
BEGIN
	writeln('Sorting menggunakan Metoda Exchange Sort');
	VAR i,j : integer;
	FOR i:=1 TO 5 DO
	BEGIN
		FOR j:=i+1 TO 6 DO
		BEGIN
			IF Data[i] > Data[j] THEN TukarData(i,j);
		END;
	END;
		
END;

BEGIN
	InputData;
	write('Data Acak : ');
	CetakData;
	ExchangeSort;
	write('Data Urut : ');
	CetakData;
END.	
