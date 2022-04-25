program index; 

uses
  crt;

var
watt:integer;
namabarang:string;
pemakaian:integer;
hasil:integer;
begin
  clrscr;
  writeln('belum selesai');
  exit;
  
  write('Nama barang : ');
  readln(namabarang);
  write('jumlah watt : ');
  readln(watt);
  write('pemakaian perhari(jam) : ');
  readln(pemakaian);
  hasil:=watt*pemakaian;
  writeln('pemakaian ',namabarang,' perhari : ',hasil,' kwh')
  
end.
