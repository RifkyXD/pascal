program loginv3; 

uses
  crt;


var
  t, f: text;
  user, pass, usernm, passwd, username, password, email, yakin: String;
  pilih: integer;

procedure updatelist;

begin
  assign(t, 'admin/list');
  reset(t);
  assign(f, 'admin/lists');
  rewrite(f);
  while not eoln(t) do 
    begin
      readln(t, user);
      writeln(f, user) 
    end;
  writeln(f, username);
  close(t);
  close(f);
  assign(t, 'admin/lists');
  reset(t);
  assign(f, 'admin/list');
  rewrite(f);
  while not eoln(t) do 
    begin
      readln(t, username);
      writeln(t, username);
    end;
end; 
procedure ceklist;

begin
  assign(t, 'admin/list');
  reset(t);
  while not eoln(t) do 
    begin
      readln(t, usernm);
      if usernm = user then
        continue  ;
    end;
end; 
procedure cekdata;

begin
  assign(t, 'akun/' + username + '/password');
  reset(t);
  readln(t, password);
  assign(f, 'akun/' + username + '/email');
  reset(f);
  readln(f, email);
end; 
procedure simpandata;

begin
  assign(t, 'akun/' + username + '/password');
  rewrite(t);
  writeln(t, password);
  assign(f, 'akun/' + username + '/email');
  rewrite(f);
  writeln(f, email);
end; 
function prosesdaftar(username: string) : string;

begin
end; 
procedure daftar;

begin
  repeat 
    clrscr;
    write('username : ');
    readln(username);
    write('password : ');
    readln(password);
    write('email : ');
    readln(email);
    ceklist;
    if username <> usernm then
      begin
        write('buat akun sekarang y/t : ');
        readln(yakin);
        if yakin = 'y' then
          begin
            updatelist;
            simpandata;
            writeln('Akun berhasil dibuat');
          end ;
        if yakin = 't' then
          begin
            writeln('Dibatalkan');
          end ;
      end ;
    if username = usernm then
      begin
        writeln('username telah digunakan');
      end ;
    delay(1000);
  until (yakin = 'y') or (yakin = 't');
end; 

begin
  repeat 
    clrscr;
    writeln('1. Daftar');
    writeln('2. Masuk');
    writeln('0. Exit');
    write('Pilih : ');
    readln(pilih);
    case pilih of 
      1: daftar;
    end;
  until pilih = 0;
end.