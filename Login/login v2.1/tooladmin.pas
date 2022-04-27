program tooladmin; 

uses
  crt;


var
  pilih,id: integer;
  user, pass, username, password: string;
  f, t,l: text;

procedure get;

begin
end; 
procedure cek;

begin
  assign(t, '/admin/admin');
  reset(t);
  readln(t, username);
  readln(t, password);
  close(t);
end; 
procedure liatsemuauser;

begin
  clrscr;
  assign(f, '/admin/listakun');
  reset(f);
  while not eoln(f) do 
    begin
      readln(f, pass);
      writeln(pass) 
    end;
  close(f);
  readln;
end; 
procedure resetuser;

begin
  assign(t, '/admin/akunlist');
  assign(f, '/admin/listakun');
  rewrite(f);
  rewrite(t);
  writeln(t, '');
  writeln(f, '');
  close(f);
  close(t);
  clrscr;
  writeln('selesai');
  delay(1000);
end; 
procedure hapussemuaakun;

begin
  assign(t, '/admin/listakun');
  reset(t);
  while not eoln(t) do 
    begin
      readln(t, user);
      assign(l, '/akun/' + user);
      erase(l);
     
    end;
    close(t);
  clrscr;
  writeln('selesai');
  delay(1000);
end; 
procedure perbaikicookie;

begin
  assign(t, '/admin/cookie.txt');
  rewrite(t);
  writeln(t, '0');
  writeln(t, 'b');
  writeln(t, 'c');
  close(t);
end; 
procedure reset;

begin
  hapussemuaakun;
  resetuser;
  perbaikicookie;
  clrscr;
  writeln('Selesai');
  delay(1000);
end; 

begin
  repeat 
    clrscr;
    writeln('login admin');
    write('user : ');
    readln(user);
    write('pass : ');
    readln(pass);
    cek;
    if (user <> username) then
      writeln('username/password salah') ;
    delay(1000);
  until (user =username) and (pass =password);
  if (user = username) and (pass = password) then
    begin
      repeat 
        clrscr;
        writeln('1. hapus data semua user');
        writeln('2. hapus semua user');
        writeln('3. liat semua user');
        writeln('4. reset ');
        writeln('0. exit');
        write('pilih : ');
        readln(pilih);
        case pilih of 
          1: hapussemuaakun();
          2: resetuser();
          3: liatsemuauser();
          4: reset();
          0: exit;
          else 
          begin
            writeln('pilihan tidak ada');
            delay(1000);
          end;
        end;
      until pilih = 0 end;
    end .
