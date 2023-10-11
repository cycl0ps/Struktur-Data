PROGRAM InsertionSort;

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

PROCEDURE InsertionSort;
BEGIN
	writeln('Sorting menggunakan Metoda Insertion Sort');
	VAR i,j,tmp : integer;
	FOR i:=2 TO 6 DO
	BEGIN
		tmp := Data[i];
		j := i-1;
		
		FOR j:= i-1 DOWNTO 1 DO
		BEGIN
			IF (Data[j] > tmp) THEN 
				Data[j+1] := Data[j];
		END;
		Data[j+1] := tmp;
	END;
		
END;

BEGIN
	InputData;
	write('Data Acak : ');
	CetakData;
	InsertionSort;
	write('Data Urut : ');
	CetakData;
END.	
