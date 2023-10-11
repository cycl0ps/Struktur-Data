PROGRAM SequentialSearch;

CONST JumlahElemen = 17;
VAR 
	Data : ARRAY [1..JumlahElemen] OF integer;
	flag : boolean;
	key : integer;
	awal, tengah, akhir : integer;

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

PROCEDURE BinarySearch;
BEGIN
	writeln('--------------------');	
	writeln('Metoda Binary Search');
	awal := 1;
	akhir := JumlahElemen;
	WHILE (flag = false) AND (awal <= akhir) DO
	BEGIN
		tengah := (awal+akhir) DIV 2;
		writeln('awal=',awal,' tengah=',tengah,' akhir=',akhir);
		IF (key = Data[tengah]) THEN 
		BEGIN
			flag := true;
			writeln('(key = tengah) - Ketemu')
		END
		ELSE IF (key > Data[tengah]) THEN
		BEGIN			
			awal := tengah + 1;
			writeln('(key > tengah) - Cari di kanan')
		END
		ELSE BEGIN
			akhir := tengah - 1;
			writeln('(key < tengah) - Cari di kiri')
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
	BinarySearch;
	LaporHasilPencarian;
	
END.	
