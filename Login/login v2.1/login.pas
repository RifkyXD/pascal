program login; 

uses
  crt;


var
  pilih: integer;
  username, password, user, pass, usernm, passwd: string;
  t, f, l: text;

procedure cekakun;

begin
  assign(t, '/admin/listakun');
  reset(t);
  while not eoln(t) do 
    begin
      readln(t, usernm);
    end;
end; 
procedure buatakun;

begin
  clrscr;
  write('username : ');
  readln(username);
  write('password : ');
  readln(password);
  write('konfirmasi password : ');
  readln(pass);
  cekakun;
  if usernm=username then
  begin
  writeln('user telah digunakan');
  
  end
  else
  begin
  if password = pass then
    begin
      assign(l, '/admin/akunlist');
      reset(l);
      assign(f, '/admin/listakun');
      rewrite(f);
      while not eoln(l) do 
        begin
          readln(l, usernm);
          writeln(f, usernm);
        end;
      writeln(f, username);
      assign(t, '/akun/' + username);
      rewrite(t);
      writeln(t, password);
      close(f);
      close(l);
      close(t);
      assign(t, '/admin/listakun');
      reset(t);
      assign(f, '/admin/akunlist');
      rewrite(f);
      while not eoln(t) do 
        begin
          readln(t, usernm);
          writeln(f, usernm);
        end;
      clrscr;
      writeln('Akun berhasil dibuat');
    end 
  else 
    begin
      clrscr;
      writeln('Password tidak sama');
      writeln('Membuat akun dibatalkan');
      delay(1000);
    end;
    end;
  delay(1000);
  
end; 
procedure login;

begin
  clrscr;
  write('username : ');
  readln(user);
  write('password : ');
  readln(pass);
  cekakun;
  if user = usernm then
    begin
      assign(f, '/akun/' + user);
      reset(f);
      readln(f, password);
      if (pass = password) then
        begin
          writeln('Login berhasil');
          delay(1000);
        end 
      else 
        begin
          writeln(' password salah ');
          delay(1000);
        end;
    end 
  else 
    writeln('akun tidak terdaftar');
    delay(1000);
end; 
procedure mainmenu;

begin
  repeat 
    clrscr;
    writeln('1. Buat akun');
    writeln('2. Login');
    writeln('0. Exit');
    write('pilih : ');
    readln(pilih);
    case pilih of 
      1: buatakun;
      2: login;
    end;
  until pilih = 0;
end; 

begin
  clrscr;
  mainmenu;
end.
