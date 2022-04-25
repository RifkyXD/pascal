program a;
uses crt;
var
user,pass,username,password:string;
userbaru,passbaru:String ;
t:text;
pilih:integer;

procedure gantisandi;
begin
clrscr;
writeln('Ganti sandi');
writeln('============');
write('username baru : ');
readln(userbaru);
write('password baru : ');
readln(passbaru);
assign(t,'login.txt');
rewrite(t);
writeln(t,userbaru);
writeln(t,passbaru);
clrscr;
writeln('Berhasil');
delay(1000);
end;

procedure setting;
begin
clrscr;

end;



procedure save;
begin
assign(t,'token.txt');
rewrite(t);
writeln(t,user);
writeln(t,pass);
end;

procedure logout;
begin
user:=' ';
pass:=' ';
save;
end;

procedure login;
begin
repeat
clrscr;
write('user : ');
readln(user);
write('pass : ');
readln(pass);
if (user<>username) or (pass<>password) then
begin
writeln('user atau password salah');
delay(1000);
end;
until (user=username) and (pass=password);
save;
end;


procedure get;
begin
assign(t,'token.txt');
reset(t);
readln(t,user);
readln(t,pass);
assign(t,'login.txt');
reset(t);
readln(t,username);
readln(t,password);
end;

procedure cek;
begin
get;
if (user=username) and (pass=password) then
continue
else
login;
end;

procedure menu;
begin
repeat
cek;
clrscr;
writeln('disini menu');
writeln('1. ganti sandi');
writeln('9. logout');
writeln('0. exit');
write('pilih : ');
readln(pilih);
case pilih of
1:gantisandi;
9:logout;
0:exit;
else
begin
writeln('pilihan tidak ada');
delay(1000);
end;
end;
until pilih=0;
end;


begin
repeat
menu;
until pilih=0;

end.
