program tabungan; 

uses
  adialog, crt,dos;


var
  yakin: char;
  pilih, pilih2, saldo, tambah: integer;
  user, pass, nama, sandi, pin, poni: string;
  t,tt: text;
  s,ss,sw:string;
  judul, dalam: string;
    a, b, c, d, e,f,g,h: word;
  i, m,poin: integer;


function garis(m: integer) : string;

begin
  for m := 1 to m do 
    write('-');
end; 
function don(m: integer) : string;

begin
  for m := 1 to m do 
    garis(54);
end; 
procedure verify;

begin
  judul := 'Masukkan pin anda';
  dalam := '';
  poni := dialoggetpassword(judul, dalam);
end; 
function spasi(m: integer) : string;

begin
  for m := 1 to m do 
    write(' ');
end; 

function nol(i:integer):string;
var
w:string;
begin
str(i,w);
if i<10 then
nol:='0'+w
else
nol:=w;
end;


procedure getwaktu;
const
bulan:array[1..12] of string=('Jan','Feb','Mar','Apr','Mei','Jun','Jul','Agu','Sep','Okt','Nov','Des');
hari:array[0..6] of string=('Minggu','Senin','Selasa','Rabu','Kamis','Jumat','Sabtu');
begin
getdate(a,b,c,d);
gettime(e,f,g,h);
sw:=('|'+nol(e)+':'+nol(f)+'|'+hari[d]+', '+c+' '+bulan[b]+' '+a+'| <> ');
end;

procedure get;

begin
  assign(t, 'saldo.txt');
  reset(t);
  readln(t, saldo);
  readln(t, pin);
  close(t);
end; 
procedure save;

begin
  assign(t, 'saldo.txt');
  rewrite(t);
  writeln(t, saldo);
  writeln(t, pin);
  close(t);
  
end; 

procedure salin;
begin
assign(tt,'histori.inp');
  reset(tt);
  assign(t,'history.inp');
  rewrite(t);
  while not eoln(tt) do
  begin
  readln(tt,s);
  writeln(t,s);
  end;
end;

procedure histosave;
begin
assign(tt,'histori.inp');
  rewrite(tt);
  assign(t,'history.inp');
  reset(t);
  while not eoln(t) do
  begin
  readln(t,s);
  writeln(tt,s);
  end;
  getwaktu;
  writeln(tt,sw+ss);
  salin;
end;


procedure admin;

begin
  assign(t, 'login/login.txt');
  reset(t);
  readln(t, nama);
  readln(t, sandi);
  close(t);
  clrscr;
  if (user <> nama) then
    begin
      user := dialoggetinput('Login admin', 'Masukkan username anda', '');
    end ;
  if (user <> '') and (pass <> sandi) then
    pass := dialoggetpassword('Login admin', 'Masukkan password anda') ;
  if (user = nama) and (pass = sandi) then
    begin
      if poin=0 then
      begin
      writeln('Login berhasil');     
      delay(1000);
      end;
      inc(poin);
      if (poin mod 4)= 0 then
begin
      user:='';
      pass:='';
      end;
      repeat 
        clrscr;
        garis(54);
        spasi(22);
        writeln('Menu admin');
        garis(54);
        writeln('1. Edit saldo');
        writeln('2. Reset saldo dan history');
        writeln('3. Ubah pin');
        writeln('0. Kembali');
        garis(54);
        write('Pilih : ');
        readln(pilih2);
        case pilih2 of 
          1: 
          begin
            clrscr;
            garis(54);
            spasi(20);
            writeln('Edit saldo');
            garis(54);
            write('Ubah saldo : Rp.');
            readln(saldo);
            writeln('Ubah saldo menjadi Rp.', saldo);
            write('yakin y/t : ');
            readln(yakin);
            if yakin = 'y' then
              save ;
            if yakin = 't' then
              begin
                continue ;
                writeln('Dibatalkan');
                delay(1000);
              end ;
          end;
          2:begin
clrscr;
garis(54);
spasi(24);
writeln('Hapus semua data');
garis(54);
writeln('Apakah anda yakin ingin mereset');
write('yakin y/t : ');
readln(yakin);
if yakin='y' then
begin
assign(t,'history.inp');
rewrite(t);
writeln(t,' ');
close(t);
saldo:=0;
save;

writeln('Berhasil');
delay(1000);
end;


          end;
          3: 
          begin
            clrscr;
            garis(54);
            spasi(20);
            writeln('Ubah pin');
            garis(54);
            write('Masukkan pin baru : ');
            readln(pin);
            write('konfirmasi pin baru : ');
            readln(poni);
            if poni = pin then
              save  
            else 
              begin
                write('Gagal');
                delay(1000);
              end;
          end;
          0: 
          begin
            exit;
          end;
          else 
          begin
            writeln('Pilihan tidak ada');
            delay(1000);
          end;
        end;
      until pilih2 = 0;
    end 
  else 
    begin
      if (user = '') or (pass='') then
        writeln('Login dibatalkan')  
      else 
        writeln('Login gagal');
      user := '';
      pass := '';
      delay(1000);
    end;
end; 
procedure tabung;

begin
  clrscr;
  writeln('Tabungan saat ini : Rp.', saldo);
  writeln('=============================');
  write('Tabung sekarang : Rp.');
  readln(tambah);
  verify;
  if pin = poni then
    begin
      if tambah <= 0 then
        begin
          clrscr;
          writeln('Gagal ');
          delay(1000);
          continue ;
        end ;
      if tambah > 0 then
        begin
          saldo := saldo + tambah;
          save;
          writeln('Berhasil ');
          ss:='Isi Rp.'+tambah;
          histosave;
          delay(1000);
        end ;
    end 
  else 
    begin
      clrscr;
      if poni = '' then
        begin
          writeln('dibatalkan');
        end 
      else 
        writeln('pin salah');
      delay(2000);
      continue ;
    end;
end; 
procedure tarik;

begin
  clrscr;
  writeln('Tabungan saat ini : Rp.', saldo);
  writeln('=============================');
  write('tarik sekarang : Rp.');
  readln(tambah);
  verify;
  
  if (pin = poni) then
    begin
      if tambah >= saldo then
        begin
          writeln('Tabungan anda tidak cukup');
          delay(1000);
        end
      else 
        begin
          if tambah<0 then
      begin
      writeln('Gagal');
      delay(1000);
      end
      else
          begin
          saldo := saldo - tambah;
          writeln('Berhasil ');
          delay(1000);
          save;
          ss:='Tarik Rp.'+tambah;
          histosave;
          end;
        end;
    end 
  else 
    begin
      clrscr;
      if (poni = '')  then
        writeln('Dibatalkan')  
      else 
        writeln('Pin salah');
      delay(2000);
      continue ;
    end;
    delay(1000);
end; 
procedure history;

begin
repeat
  clrscr;
  garis(54);
  spasi(24);
  writeln('History');
  garis(54);
  assign(t,'history.inp');
  reset(t);
  while not eoln(t) do
  begin
  readln(t,s);
  writeln('• ',s);
  end;
  garis(54);
  writeln('1. Hapus History');
  writeln('0. Kembali');
  write('Pilih : ');
  readln(pilih2);
  case pilih2 of
  1:begin
clrscr;
assign(t,'history.inp');
rewrite(t);
writeln(t,'');
end;
0:exit;
else
begin
writeln('Pilihan tidak ada');
delay(1000);
end;
end;
until pilih2=0;
 
end; 





begin
  repeat 
    clrscr;
    getwaktu;
    
    get;
    garis(54);
    spasi(22);
    writeln('Tabungan');
    garis(54);
    writeln('Tabungan anda sekarang Rp.', saldo);
    writeln('1. Tabung');
    writeln('2. Tarik');
    writeln('3. History');
    writeln('4. Kosong');
    writeln('9. Admin');
    writeln('0. exit');
    garis(54);
    writeln('Pilih : ');
    garis(54);
    gotoxy(9, 12);
    readln(pilih);
    case pilih of 
      1: tabung;
      2: tarik;
      3: history;
      9: admin;
      0: continue ;
      else 
      begin
        clrscr;
        writeln('pilihan tidak ada');
        delay(1000);
      end;
    end;
  until pilih = 0;
  clrscr;
  garis(54);
  garis(21);
  write('Terima-kasih');
  garis(21);
  garis(54);
  don(30);
end.
