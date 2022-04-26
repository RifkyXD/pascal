program login; 

uses
  crt;


var
  pilih,pilih1,cookie: integer;
  username, password, user, pass, usernm, passwd: string;
  t, f, l: text;

procedure save;
begin
assign(t,'/admin/cookie.txt');
rewrite(t);
writeln(t,cookie);
writeln(t,user);
writeln(t,passwd);
end;

function get(s:string):string;
begin
assign(f,'/admin/'+s);
reset(f);
readln(f,usernm);
readln(f,passwd);
end;

procedure menu;
begin
repeat
clrscr;
writeln('Menu ',user);
writeln('1. ');
writeln('9. logout');
writeln('0. exit');
write('pilih : ');
readln(pilih1);
case pilih1 of
9:begin
cookie:=0;
save;
exit;
end;
0:begin
pilih:=0;
exit;
end
else
begin
writeln('Pilihan tidak ada');
delay(1000);
end;
end;
until pilih1=0;
end; 
  
procedure ceklogin;
begin
assign(t,'/admin/cookie.txt');
reset(t);
readln(t,cookie);
readln(t,user);
end;

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
          cookie:=1;
          save;
          delay(1000);
          menu;
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
      0:exit
      else
      begin
writeln('Pilihan tidak ada');
delay(1000);
end;
    end;
  until pilih = 0;
end; 

begin
pilih:=0;
repeat
  clrscr;
  ceklogin;
  if cookie=1 then
  begin
  menu;
end
else
  mainmenu;
  until pilih=0;
end.
