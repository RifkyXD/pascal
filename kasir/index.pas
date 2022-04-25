program index;
uses crt;
const
menu:array[1..4] of string=('1','2','3','4');

var
pilih:integer;
harga,jumlah,total:integer;
nama,nama_barang:string;

procedure nota;
begin
clrscr;
writeln('Kasir ',nama);
writeln('============');
writeln('Nama barang : ',nama_barang);
writeln('Jumlah : ',jumlah);
writeln('Harga : Rp.',harga);
total:=jumlah*harga;
writeln('Total Harga : Rp.',total);
end;
procedure mulai_id;
begin
clrscr;
writeln('Kasir ',nama);
writeln('=============');
write('Nama barang : ');
readln(nama_barang);
write('Harga : Rp.');
readln(harga);
write('jumlah : ');
readln(jumlah);
nota;
end;
begin
  nama:='rifky';
  clrscr;
  writeln('1. Mulai');
  writeln('2. Setting');
  writeln('0. Keluar');
  write('pilih : ');
  readln(pilih);
  case pilih of
  1:mulai_id;
  end;
end.
