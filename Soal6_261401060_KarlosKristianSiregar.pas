program Soal6;
uses crt;

var
    tugas, uts, uas, kehadiran, nilaiAkhir: real;
    status, huruf: string;

begin
    clrscr;

    write('Masukkan nilai Tugas: ');
    readln(tugas);

    write('Masukkan nilai UTS: ');
    readln(uts);

    write('Masukkan nilai UAS: ');
    readln(uas);

    write('Masukkan Kehadiran (%): ');
    readln(kehadiran);

    nilaiAkhir := (tugas * 0.30) +
                  (uts * 0.30) +
                  (uas * 0.40);

    if (nilaiAkhir > 60) and (kehadiran >= 80) then
        status := 'LULUS'
    else
        status := 'TIDAK LULUS';

    if nilaiAkhir >= 85 then
        huruf := 'A'
    else if nilaiAkhir >= 75 then
        huruf := 'B'
    else if nilaiAkhir >= 60 then
        huruf := 'C'
    else if nilaiAkhir >= 50 then
        huruf := 'D'
    else
        huruf := 'E';

    writeln;
    writeln('Nilai Akhir : ', nilaiAkhir:0:2);
    writeln('Nilai Huruf : ', huruf);
    writeln('Status      : ', status);

    readln;
end.