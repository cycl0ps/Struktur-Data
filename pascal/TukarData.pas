PROGRAM TukarData;

VAR 
	a, b, tmp : integer;

PROCEDURE layar_pemesanan;
BEGIN

END;

PROCEDURE TukarData;
BEGIN
	tmp := a;
	a := b;
	b := tmp;
END;

BEGIN
	a := 10;
	b := 12;
	writeln('a = ',a);
	writeln('b = ',b);
	TukarData;
	writeln('a = ',a);
	writeln('b = ',b);
END.	
