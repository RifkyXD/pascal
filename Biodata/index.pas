program index;
uses crt;
var
t:text;
pilih:Integer ;
nama,kelas,alamat,ttl:string;
yakin:Char ;

procedure buatdata;
begin
clrscr;
writeln('BUAT DATA SISWA');
write('Nama : ');
readln(nama);
write('Kelas : ');
readln(kelas);
write('Alamat : ');
readln(alamat);
write('TTL : ');
readln(ttl);
assign(t,'Data_'+nama+'('+kelas+ ')'+'.txt');
rewrite(t);
writeln(t,'Nama : ',nama);
writeln(t,'Kelas : ',kelas);
writeln(t,'Alamat : ',alamat);
writeln(t,'TTL : ',ttl);
close(t);
end;

procedure lihatdata;
begin
clrscr;
write('')
end;


procedure hapusdata;
begin
clrscr;
write('Nama siswa : ');
readln(nama);
write('Kelas : ');
readln(kelas);
assign(t,'Data_'+nama+'('+kelas+ ')'+'.txt');
writeln('anda akan menghapus data siswa ',nama,' kelas ',kelas);
write('yakin y/t : ');
readln(yakin);
if yakin='y' then
erase(t)
else
continue;
end;




procedure menu;
begin
repeat
clrscr;
writeln('MAINMENU');
writeln('1. buat data siswa');
writeln('2. lihat data siswa');
writeln('3. hapus data siswa');
writeln('0. exit');
write('pilih : ');
ReadLn(pilih);

case pilih of
1:buatdata;
2:lihatdata;
3:hapusdata;
0:exit;
else
begin
writeln(' pilihan tdk ada');
delay(1000);
end;
end;

until pilih=0;
end;


begin
clrscr;
menu;



end.
