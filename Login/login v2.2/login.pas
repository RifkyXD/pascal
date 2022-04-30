program login;
uses crt;
var
pilih,id:integer;
user,username,pass,password:string;
nama:string;
t,f:text;

procedure simpanid;
begin
clrscr;
assign(t,'admin/id/'+id);
rewrite(t);
writeln(t,password);
end;



procedure ambildata;
begin
assign(t,'');
end;



procedure masuk;
begin
repeat
clrscr;
writeln('MASUK');
writeln('===========');
write('username : ');
readln(user);
write('password : ');
readln(pass);
if (user<>username) or (pass<>password) then
writeln('Username/password salah');
delay(1000);
until (user=username) and (pass=password);
end;

procedure daftar;
begin
clrscr;
writeln('DAFTAR AKUN');
writeln('===========');
write('Nama : ');
readln(nama);
write('Username : ');
readln(username);
write('Password : ');
readln(password);
writeln('Ketik ulang password : ');
readln(pass);
if pass=password then
begin

end;
end;


begin
  repeat
  clrscr;
  writeln('1. Masuk');
  writeln('2. Daftar akun');
  writeln('0. exit');
  write('pilih : ');
  readln(pilih);
  case pilih of
1:masuk;
2:daftar

else
begin
writeln('pilihan tidak ada');
delay(1000);
end;
end;
until pilih=0;
end.
