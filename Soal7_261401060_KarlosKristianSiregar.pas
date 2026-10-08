program Soal7;
uses crt;

var
    kode: char;
    jam, tarif: integer;

begin
    clrscr;

    write('Masukkan kode kendaraan (M/K/B): ');
    readln(kode);

    write('Masukkan lama parkir (jam): ');
    readln(jam);

    case kode of

        'M', 'm':
        begin
            if jam <= 1 then
                tarif := 2000
            else
                tarif := 2000 + (jam - 1) * 3000;
        end;

        'K', 'k':
        begin
            if jam <= 1 then
                tarif := 2000
            else
                tarif := 2000 + (jam - 1) * 1000;
        end;

        'B', 'b':
        begin
            if jam <= 1 then
                tarif := 10000
            else
                tarif := 10000 + (jam - 1) * 5000;
        end;

        else
        begin
            writeln('Kode kendaraan tidak valid');
            readln;
            exit;
        end;
    end;

    if (kode = 'M') or (kode = 'm') then
    begin
        if tarif > 30000 then
            tarif := 30000;
    end
    else if (kode = 'K') or (kode = 'k') then
    begin
        if tarif > 30000 then
            tarif := 30000;
    end
    else if (kode = 'B') or (kode = 'b') then
    begin
        if tarif > 50000 then
            tarif := 50000;
    end;

    writeln('Total tarif parkir = Rp', tarif);

    readln;
end.