PROGRAM SequentialSearch;

CONST JumlahElemen = 17;
VAR 
	Data : ARRAY [1..JumlahElemen] OF integer;
	flag : boolean;
	counter : integer;
	key : integer;

PROCEDURE InisialisasiData;
BEGIN
	VAR i : integer;
	flag := false;
	counter := 0;
	FOR i:=1 TO JumlahElemen DO
	BEGIN
		write('Masukkan Elemen ke-',i,' = ');
		readln(Data[i]);
	END;
END;

PROCEDURE CetakData;
BEGIN
	VAR i : integer;
	FOR i:=1 TO JumlahElemen DO
	BEGIN
		write(Data[i],'  ');
	END;
	writeln;
END;

PROCEDURE SequentialSearch;
BEGIN
	writeln('------------------------');	
	writeln('Metoda Sequential Search');
	VAR i : integer;
	FOR i:=1 TO JumlahElemen DO
	BEGIN
		IF Data[i] = key THEN 
		BEGIN		
			flag := true;
			counter := counter + 1;
		END;
	END;
END;

PROCEDURE LaporHasilPencarian;
BEGIN
	IF flag = true THEN 
		writeln('Kata kunci DITEMUKAN pada array data sebanyak : ',counter,' buah')
	ELSE
		writeln('Kata kunci TIDAK DITEMUKAN pada array data');
END;

BEGIN
	InisialisasiData;
	write('Array Data : ');
	CetakData;
	write('Masukkan kata kunci : ');readln(key);
	SequentialSearch;
	LaporHasilPencarian;
	
END.	
