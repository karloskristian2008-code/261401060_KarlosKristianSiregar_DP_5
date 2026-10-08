program Soal9;
uses crt;

var
    bulan, tahun, jumlahHari: integer;

begin
    clrscr;

    write('Masukkan tahun: ');
    readln(tahun);

    write('Masukkan nomor bulan (1-12): ');
    readln(bulan);

    case bulan of
        1, 3, 5, 7, 8, 10, 12:
            jumlahHari := 31;

        4, 6, 9, 11:
            jumlahHari := 30;

        2:
        begin
            if ((tahun mod 400 = 0) or
                ((tahun mod 4 = 0) and (tahun mod 100 <> 0))) then
                jumlahHari := 29
            else
                jumlahHari := 28;
        end;

        else
        begin
            writeln('Bulan tidak valid');
            readln;
            exit;
        end;
    end;

    writeln('Jumlah hari = ', jumlahHari);

    readln;
end.