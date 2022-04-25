program passwd;
uses crt;
var
awal,akhir,panjang:integer;
t:text;
s:string;
begin
  clrscr;
  write('panjang : ');
  readln(panjang);
  write('nama file ');
  readln(s);
  clrscr;
  assign(t,'word.txt');
  rewrite(t);
  
  writeln(t);
  close(t);
  
end.
