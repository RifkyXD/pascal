program bank;
uses crt;
var
saldo,pilih:integer;
no,nok,pin,pik:string;
t,f,s:text;

procedure transfer;
begin
clrscr;
writeln('Transfer');
writeln('===========');
write('no tujuan : ');
end;

procedure menu;
begin
clrscr;
writeln('saldo: Rp.',saldo);
writeln('===================');
writeln('1. Transfer');
writeln('2. ');
writeln('0. Exit');
write('Pilih : ');
readln(pilih);
case pilih of
1:transfer;
0:exit;

end;
end;


procedure proses;
begin
if (no<>nok) and (pin<>pik) then
begin
writeln('rekening tidak terdaftar');
if (pin=pik) then
menu;
end;
delay(1000);
exit;
end;

procedure cek;
begin
assign(t,'no.inp');
assign(f,'pin.inp');
assign(s,'saldo.inp');
reset(s);
reset(f);
reset(t);
if nok<>no then
begin
repeat
readln(f,pik);
ReadLn(t,nok);
readln(s,saldo);
if nok=no then 
exit;
until nok='=';
end;
end;

procedure login;
begin
clrscr;
write('No rek : ');
readln(no);
write('Pin : ');
readln(pin);
cek;
end;



begin
  clrscr;
  login;
  proses;
end.
