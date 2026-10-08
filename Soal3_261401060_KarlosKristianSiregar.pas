program Soal3;
uses crt;

var
    n, kategori, i: integer;

begin
    clrscr;

    write('Masukkan nilai N: ');
    readln(n);

    write('Pilih kategori (1 = Ganjil, 2 = Genap): ');
    readln(kategori);

    i := 1;

    writeln;
    writeln('Hasil deret:');

    while i <= n do
    begin
        if (kategori = 1) and (i mod 2 = 0) then
        begin
            i := i + 1;
            continue;
        end;

        if (kategori = 2) and (i mod 2 <> 0) then
        begin
            i := i + 1;
            continue;
        end;

        if i mod 5 = 0 then
        begin
            i := i + 1;
            continue;
        end;

        write(i, ' ');

        i := i + 1;
    end;

    readln;
end.