program loginv3;
uses crt;
var
user,username,pass,password:string;
t,f:text;
lagi:char;
pilih:integer;

function proses(user:string):string;
begin
assign(t,user+'.txt');
reset(t);
readln(t,password);
if  (pass=password) then
begin
writeln('Berhasil');
end;
end;

begin  
  clrscr;
  write('Username : ');
  readln(user);
  write('Password : ');
  readln(pass);
  proses(user);
end.
