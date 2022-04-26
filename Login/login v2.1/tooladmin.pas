program haya;
uses crt;
var
pilih:integer;
user,pass,username,password:string;
f,t:text;

procedure get;
begin
assign(t,'/admin/admin');
reset(t);
readln(t,username);
readln(t,password);
end;

procedure cek;
begin
get;


end;

procedure liatsemuauser;
begin
clrscr;
  assign(f,'/admin/listakun');
  reset(f);
  while not eoln(f) do
begin
  readln(f,pass);
  writeln('•',pass)
  end;
  readln;
end;

procedure resetuser;
begin
  assign(t,'/admin/akunlist');
  assign(f,'/admin/listakun');
  rewrite(f);
  rewrite(t);
  writeln(t,'');
  writeln(f,'');
  writeln('selesai');
  delay(1000);
end;

procedure hapussemuaakun;
begin
assign(t,'/admin/listakun');
reset(t);
while not eoln(t) do
begin
readln(t,user);
assign(f,'/user/user');
reset(f);
erase(f);
end;
writeln('selesai');
delay(1000);
end;


begin
repeat
clrscr;
writeln('login admin');
write('user : ');
readln(user);
write('pass : ');
readln(pass);
cek;
if (user<>username) then
writeln('username/password salah');
delay(1000);

until(user=username) and (pass=password);
if (user=username) and (pass=password) then
begin
repeat
clrscr;
writeln('1. hapus data semua akun');
writeln('2. hapus semua user');
writeln('3. liat semua user');
writeln('0. exit');
write('pilih : ');
readln(pilih);

case pilih of
1:hapussemuaakun();
2:resetuser();
3:liatsemuauser();
0:exit;
else
begin
writeln('pilihan tidak ada');
delay(1000);
end;
end;
until pilih=0
end;
end.
