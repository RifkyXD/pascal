program kode;
uses crt;
var
kode,pulsa,isi:integer;
tanya:char;
t:text;
begin
  assign(t,'kuota.inp');
  reset(t);
  readln(t,pulsa);
  readln(t,kode);
  readln(t,isi);
  clrscr;
  if isi=0 then
  writeln('Anda tidak memiliki transaksi apapun');  
  if (isi>0) then
  begin
  writeln('Transaksi anda : isi ulang Rp.',isi);
  writeln('Kode isi ulang anda : ',kode);  
  end;
  
  readln;
end.

