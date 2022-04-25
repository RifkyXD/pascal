program index; 

uses
  crt;


var
  judul, file,nam,teks: string;
  t: text;
  pilih: Integer;
  yakin: char;

procedure cek;
begin
clrscr;
write('nama file : ');
readln(nam);
clrscr;
assign(t,nam);
reset(t);
while not eof(t) do
begin
readln(t,teks);
writeln(teks);
end;
readln;
end;

procedure test;
  
begin
  assign(t, 'index.html');
  rewrite(t);
  write('judul : ');
  readln(judul);
  WriteLn(t, '<html>');
  WriteLn(t, '<title>' + judul + '</title');
  WriteLn(t, '<head>');
  writeln(t,'<meta name="viewport"content="width=device-width, initial-scale=1">');
  WriteLn(t, '</head>');
  writeln(t, '<body>');
  WriteLn(t, '<p>halo</p>');
  writeln(t, '</body>');
  WriteLn(t, '</html>');
  close(t);
end; 
procedure nama;

begin
  clrscr;
  write('nama file : ');
  readln(file);
end; 
procedure title;

begin
  clrscr;
  write('judul : ');
  readln(judul);
end; 
procedure proses;

begin
    if (file = '') then
      begin
        writeln('*nama file tidak ada');
        delay(1000);
      end ;
    if (file <> '') and (judul = '') then
      begin
        writeln('*masukkan judul');
        delay(1000);
      end ;
    if (file <> '') and (judul <> '') then
    begin
    
  assign(t, file + '.html');
  rewrite(t);
  WriteLn(t, '<html>');
  WriteLn(t, '<title>' + judul + '</title');
  WriteLn(t, '<head>');
  WriteLn(t, '</head>');
  writeln(t, '<body>');
  WriteLn(t, '<p>halo</p>');
  writeln(t, '</body>');
  WriteLn(t, '</html>');
  close(t);
  clrscr;
  writeln('Berhasil');
  delay(1000);
  end;
end; 
procedure hasil;

begin
  writeln('nama file : ', file);
end; 

begin
  repeat 
  
    clrscr;
    writeln('1. nama file');
    writeln('2. judul/title');
    writeln('3. proses');
    writeln('4. cek');
    writeln('0. exit');
    write('pilih : ');
    readln(pilih);
    case pilih of 
      1: nama;
      2: title;
      3: proses;
      4:cek;
      0:exit
       else 
      begin
      writeln('pilihan tdk ada');
      delay(1000);
      end;
    end;
    
    
  until pilih = 0;
end.
