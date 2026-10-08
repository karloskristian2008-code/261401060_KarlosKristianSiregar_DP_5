program Soal2;
uses crt;

var
    password: string;
    i: integer;
    benar: boolean;

begin
    clrscr;

    benar := false;

    for i := 1 to 3 do
    begin
        write('Masukkan kata sandi: ');
        readln(password);

        if password = 'pascal123' then
        begin
            writeln('Login Berhasil! Selamat Datang!');
            benar := true;
            break;
        end
        else
            writeln('Kata sandi salah!');
    end;

    if benar = false then
        writeln('Akses Ditolak! Akun Terkunci.');

    readln;
end.