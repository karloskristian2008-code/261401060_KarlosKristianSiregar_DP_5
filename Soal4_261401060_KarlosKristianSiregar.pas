program Soal4;
uses crt;

var
    pilihan: integer;
    a, b, hasil: real;
    ulang: char;

begin
    clrscr;

    repeat
        writeln('===== KALKULATOR =====');
        writeln('1. Penjumlahan');
        writeln('2. Pengurangan');
        writeln('3. Perkalian');
        writeln('4. Pembagian Real');
        writeln('5. DIV');
        writeln('6. MOD');
        writeln;

        write('Pilih operasi: ');
        readln(pilihan);

        write('Masukkan angka pertama: ');
        readln(a);

        write('Masukkan angka kedua: ');
        readln(b);

        case pilihan of
            1:
                begin
                    hasil := a + b;
                    writeln('Hasil = ', hasil:0:2);
                end;

            2:
                begin
                    hasil := a - b;
                    writeln('Hasil = ', hasil:0:2);
                end;

            3:
                begin
                    hasil := a * b;
                    writeln('Hasil = ', hasil:0:2);
                end;

            4:
                begin
                    if b <> 0 then
                    begin
                        hasil := a / b;
                        writeln('Hasil = ', hasil:0:2);
                    end
                    else
                        writeln('Tidak bisa dibagi 0');
                end;

            5:
                writeln('Hasil DIV = ', trunc(a) div trunc(b));

            6:
                writeln('Hasil MOD = ', trunc(a) mod trunc(b));

            else
                writeln('Pilihan tidak tersedia');
        end;

        writeln;
        write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
        readln(ulang);

        writeln;

    until (ulang = 'T') or (ulang = 't');

    writeln('Program selesai.');

    readln;
end.