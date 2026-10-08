program Soal5;
uses crt;

var
    m, n, i, j: integer;
    nilai, total: real;
    rata: real;
    lulus, tidakLulus: integer;

begin
    clrscr;

    write('Masukkan jumlah mahasiswa: ');
    readln(m);

    write('Masukkan jumlah tugas: ');
    readln(n);

    lulus := 0;
    tidakLulus := 0;

    for i := 1 to m do
    begin
        total := 0;

        writeln;
        writeln('Mahasiswa ke-', i);

        for j := 1 to n do
        begin
            write('Nilai tugas ke-', j, ': ');
            readln(nilai);

            total := total + nilai;
        end;

        rata := total / n;

        writeln('Rata-rata = ', rata:0:2);

        if rata >= 65 then
        begin
            writeln('Status: LULUS');
            lulus := lulus + 1;
        end
        else
        begin
            writeln('Status: TIDAK LULUS');
            tidakLulus := tidakLulus + 1;
        end;
    end;

    writeln;
    writeln('===== REKAP =====');
    writeln('Total mahasiswa LULUS       : ', lulus);
    writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);

    readln;
end.