program index;
uses crt;
const
pilih:array[1..4] of string=('a','b','c','d');
var
no,soal:integer;
t,f:text;
jawab:char;
key,soa:string;

begin
  clrscr;
  assign(f,'soal.inp');
  reset(f);
  assign(t,'.key.inp');
  reset(t);
  for no:=1 to 5 do
  begin
  readln(t,key);
  readln(f,soa);
  writeln(no,'. ',soa);
  for soal:=1 to 4 do
  begin
  readln(f,soa); 
  writeln(pilih[soal],'. ',soa);
  end;
  write('jawab : ');
  readln(jawab);
  end;
end.
