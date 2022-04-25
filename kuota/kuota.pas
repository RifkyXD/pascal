program kuota;
uses crt;
var
pilih,pilih2,pilih3:integer;
i,pulsa,kode,kod,isi:integer;
kuota:string;
yakin:char;
t:text;
procedure get;
begin
assign(t,'kuota.inp');
reset(t);
readln(t,pulsa);
readln(t,kode);
readln(t,isi);
readln(t,kuota);
end;

procedure save;
begin
assign(t,'kuota.inp');
rewrite(t);
writeln(t,pulsa);
writeln(t,kode);
writeln(t,isi);
writeln(t,kuota);
end;  


procedure garis;
begin
for i:=1 to 54 do
write('-');
end;

function tab(i:integer):string;
begin
for i:=1 to i do
write(' ');
end;



procedure yt;
begin

end;


procedure ptd;
begin
writeln('Pilihan tidak ada');
delay(1000);
end;

procedure isipulsa;
begin
repeat
clrscr;
garis;
tab(22);
writeln('Isi Pulsa');
garis;
writeln('1. Masukkan jumlah isi pulsa');
writeln('2. Masukkan kode pembayaran');
writeln('3. Batalkan transaksi');
writeln('0. Kembali');
garis;
write('Pilih : ');
readln(pilih2);
case pilih2 of
1:begin
clrscr;
if isi<>0 then
begin
writeln('Anda masih memiliki transaksi sebelumnya');
write('Buat transaksi baru? y/t: ');
readln(yakin);
if yakin='y' then
begin
isi:=0;
kode:=0;
save;
end
else
continue;
end;
if isi=0 then
begin
repeat
clrscr;
garis;
tab(16);
writeln('masukkan jumlah pulsa');
garis;
write('Isi pulsa Rp.');
readln(isi);
until isi>0;
writeln('Berhasil');
delay(1000);
writeln('Masukkan kode pembayaran anda');
while kode<1000 do
kode:=random(10000);
save;
end;
delay(1000);
end;
2:begin
clrscr;
if isi=0 then
begin
writeln('Anda tidak memiliki transaksi apapun');
delay(1000);
writeln('Silahkan beli di menu 1');
delay(1000);
end
else
begin
garis;
tab(16);
writeln('Masukkan kode pembayaran');
garis;
write('Kode : ');
readln(kod);
if kod=kode then
begin
pulsa:=pulsa+isi;
writeln('Berhasil ');
delay(1000);
writeln('Pulsa Rp.',isi,' berhasil');
delay(1000);
pilih2:=0;
isi:=0;
kode:=0;
save;
end
else
begin
writeln('Kode salah');
delay(1000);
end;
end;
end;
3:begin
clrscr;
garis;
tab(18);
writeln('Batalkan Transaksi');
garis;
if isi=0 then
begin
writeln('Anda tidak memiliki transaksi apapun');
delay(2000);
end
else
begin
writeln('Transaksi anda : Isi pulsa Rp.',isi);
write('Batalkan? y/t: ');
readln(yakin);
if yakin='y' then
begin
isi:=0;
kode:=0;
save;
writeln('Transaksi anda dibatalkan');
delay(1000);
end;
end;
end;
0:exit;
else ptd;
end;



until pilih2=0;
end;

procedure beli;
begin
end;

procedure cek;
begin

end;




begin
repeat
get;
clrscr;
garis;
tab(22);
Writeln('Menu Kuota');
garis;
writeln('Pulsa anda Rp.',pulsa);
writeln('1. Isi pulsa');
writeln('2. Beli paket');
writeln('3. Cek paket');
writeln('0. Exit');
garis;
write('Pilih : ');
readln(pilih);
case pilih of
1:isipulsa;
2:beli;
3:cek;
0:exit;
else ptd;
end;






until pilih=0;
end.
