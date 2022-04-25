program haya;
uses crt;
var
pilih:integer;
user,pass:string;
f,t:text;

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
writeln('1. hapus data semua akun');
writeln('2. hapus semua user');
writeln('3. liat semua user');
write('pilih : ');
readln(pilih);

case pilih of
1:hapussemuaakun();
2:resetuser();
3:liatsemuauser()
else
begin
writeln('pilihan tidak ada');
delay(1000);
end;
end;
until pilih=0


end.
