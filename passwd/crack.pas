program crack; 

uses
  crt;


var
  file, user, username, pass, password: string;
  t, f: text;
  i:integer;

begin
  clrscr;
  assign(t, 'akun.txt');
  reset(t);
  write('Username : ');
  readln(user);
  write('Memeriksa');
  for i:=1 to 3 do
begin
  write('.');
  delay(1000);
  end;
  while not eoln(t) do 
    begin
      readln(t, username);
      readln(t, password);
      if user = username then
        begin
          write(' Akun terdaftar ✓');
          writeln;
          write('file passlist : ');
  readln(file);
          assign(f, file);
          reset(f);
          i:=0;
          while pass <> password do 
            begin
              readln(f, pass);
              inc(i);
              gotoxy(1,4);
              writeln('Mencoba password ke ',i);
              
              if (user = username) and (pass = password) then
                begin
                  clrscr;
                  writeln('password ditemukan');
                  writeln('User : ', username);
                  writeln('Pass : ', password);
                end ;
            end;
        end ;
        
    end;
    writeln;
    if user<>password then
    write('akun tidak terdaftar');
end.