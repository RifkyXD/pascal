program passwd;
uses crt;
var
t,f:text;
s,pass:string;
no:integer;
begin
  clrscr;
  assign(f,'mypasswd.inp');
  reset(f);
  readln(f,pass);
  close(f);
  clrscr;
  assign(t,'passwords.txt');
  reset(t);
  while not eof(t) do
  begin
  clrscr;
  inc(no);
  readln(t,s);
  writeln('try ',no,' : ',s);
  
  if s=pass then
  begin
  writeln('Password found : ',s);
  exit;
  end;
  end;
  if s<>pass then
writeln('Password not found');
  
end.
