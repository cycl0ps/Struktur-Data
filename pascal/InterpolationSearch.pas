PROGRAM InterpolationSearch;

CONST JumlahElemen = 17;
VAR 
	Data : ARRAY [1..JumlahElemen] OF integer;
	flag : boolean;
	key : integer;
	posisi, high, low : integer;

PROCEDURE InisialisasiData;
BEGIN
	VAR i : integer;
	flag := false;
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

PROCEDURE InterpolationSearch;
BEGIN
	writeln('---------------------------');	
	writeln('Metoda Interpolation Search');
	low := 1;
	high := JumlahElemen;
	WHILE (flag = false) AND (key>=Data[low]) AND (key<=Data[high]) DO
	BEGIN
		posisi := ROUND((key-Data[low])*(high-low)/(Data[high]-Data[low]) + low);
		writeln('low=',low,' posisi=', posisi,' high=',high);
		IF (key = Data[posisi]) THEN 
		BEGIN
			flag := true;
			writeln('(key = posisi) - Ketemu')
		END
		ELSE IF (key > Data[posisi]) THEN
		BEGIN			
			low := posisi + 1;
			writeln('(key > posisi) - low = posisi + 1')
		END
		ELSE BEGIN
			high := posisi - 1;
			writeln('(key < posisi) - high = posisi - 1')
		END;
	END;
END;



PROCEDURE LaporHasilPencarian;
BEGIN
	IF flag = true THEN 
		writeln('Kata kunci DITEMUKAN pada array data')
	ELSE
		writeln('Kata kunci TIDAK DITEMUKAN pada array data');
END;

BEGIN
	InisialisasiData;
	write('Array Data : ');
	CetakData;
	write('Masukkan kata kunci : ');readln(key);
	InterpolationSearch;
	LaporHasilPencarian;
	
END.	
