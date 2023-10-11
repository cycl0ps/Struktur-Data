PROGRAM Stack;

TYPE 
	Stack = RECORD
		top : integer;
		data : ARRAY [1..6] of string[30];
	END;

VAR 
	TumpukanBuku : Stack;
	key : integer;

PROCEDURE InisialisasiStack;
BEGIN
	TumpukanBuku.top := 0;
END;

FUNCTION IsEmpty() : boolean;
BEGIN
	IF TumpukanBuku.top = 0 THEN return TRUE
	ELSE return FALSE;
END;

FUNCTION IsFull() : boolean;
BEGIN
	IF TumpukanBuku.top = 6 THEN return TRUE
	ELSE return FALSE; 
END;

PROCEDURE Clear;
BEGIN
	TumpukanBuku.top := 0;
END;

PROCEDURE Push;
BEGIN
	VAR elemen : string[30];
	write('Elemen yang akan ditumpuk : ');
	readln(elemen);
	TumpukanBuku.top := TumpukanBuku.top + 1;
	TumpukanBuku.data[TumpukanBuku.top] := elemen;
	writeln('Memasukkan elemen : ',elemen,' pada puncak tumpukan');
END;

PROCEDURE Pop;
BEGIN
	writeln('Mengambil elemen : ',TumpukanBuku.data[TumpukanBuku.top],' dari puncak tumpukan');
	TumpukanBuku.top := TumpukanBuku.top - 1;
END;

PROCEDURE Cetak;
BEGIN
	VAR i : integer;
	writeln('Tumpukan Buku : ');
	FOR i:=TumpukanBuku.top DOWNTO 1 DO
	BEGIN
		write(TumpukanBuku.data[i],' ');
	END;
	writeln;
END;

{program utama}
BEGIN
	InisialisasiStack;

		writeln('1. Push');
		writeln('2. Pop');
		writeln('3. Print');
		writeln('4. Clear');
		writeln('5. Exit');
		write('Masukkan pilihan anda : ');
	read(key);
		

			CASE key of
				1 : Push;
				2 : Pop;
				3 : Cetak;
				4 : Clear;
				else writeln('Masukkan pilihan 1 - 5');
			END;
		

END.	
