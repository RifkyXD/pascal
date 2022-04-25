program login;
uses crt;
var
user,pass,username,password:string;
cek,pilih:integer;
t:text;
procedure save;
begin
assign(t,'token.txt');
rewrite(t);
writeln(t,user);
writeln(t,pass);
end;
procedure get;
begin
assign(t,'token.txt');
reset(t);
readln(t,user);
ReadLn(t,pass);
assign(t,'login.txt');
reset(t);
ReadLn(t,username);
ReadLn(t,password);
end;


procedure login;
begin
if (user=username) and (pass=password) then
continue;
if (user<>username) and (pass<>password) then
login;
write('user : ');
readln(user);
write('pass : ');
readln(pass);
save;
end;

procedure logout;
begin
user:=' ';
pass:=' ';
save;
end;

procedure check;
begin
if (user=username) and (pass=password) then
continue;
if (user<>username) and (pass<>password) then
begin
login;
writeln('user atau password salah');
delay(1000);
end;
end;
procedure menu;
begin
clrscr;
get;
check;
login;
writeln('Menu utama');
writeln('===========');
writeln('9. logout');
write('pilih : ');
readln(pilih);
case pilih of
9:logout;
0:exit;
else
begin
writeln('pilihan tidak ada');
delay(1000);
end;
end;
writeln('anda harus login terlebih dahulu');
end;


begin
clrscr;
pilih:=99999;
repeat
clrscr;
menu;
until pilih=0;
end.
