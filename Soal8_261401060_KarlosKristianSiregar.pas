program Soal8;
uses crt;

var
    golongan: char;
    jamKerja, lembur: integer;
    gajiPokok, gajiLembur, bonus, totalGaji: real;

begin
    clrscr;

    write('Masukkan golongan (A/B/C): ');
    readln(golongan);

    write('Masukkan total jam kerja: ');
    readln(jamKerja);

    case golongan of
        'A', 'a':
            gajiPokok := 1500000;

        'B', 'b':
            gajiPokok := 2000000;

        'C', 'c':
            gajiPokok := 2500000;

        else
        begin
            writeln('Golongan tidak valid');
            readln;
            exit;
        end;
    end;

    if jamKerja > 40 then
        lembur := jamKerja - 40
    else
        lembur := 0;

    gajiLembur := lembur * 20000;

    bonus := 0;

    if ((golongan = 'C') or (golongan = 'c')) and (jamKerja > 50) then
        bonus := 100000;

    totalGaji := gajiPokok + gajiLembur + bonus;

    writeln;
    writeln('===== RINCIAN GAJI =====');
    writeln('Gaji Pokok : Rp', gajiPokok:0:0);
    writeln('Lembur     : Rp', gajiLembur:0:0);
    writeln('Bonus      : Rp', bonus:0:0);
    writeln('Total Gaji : Rp', totalGaji:0:0);

    readln;
end.