program files;
uses crt;
var
s,w:string;
t,tt:text;
begin
  clrscr;
  assign(tt,'data2.inp');
  rewrite(tt);
  assign(t,'data1.inp');
  reset(t);
  write('Tambahkan : ');
  readln(w);
  while not eoln(t) do
  begin
readln(t,s);
writeln(s);
writeln(tt,s);
end;
writeln(tt,w);
end.
