program makepasslist; 

uses
  crt;


var
  i: integer;
  s, ss: string;
  t: text;
  p:real;

begin
  clrscr;
  writeln('Dalam proses');
  assign(t, 'passlist.txt');
  rewrite(t);
  for i := 1 to 99999999 do 
    begin
      str(i, s);
      if i < 100000000 then
        begin
              ss := s;
              if i < 10000000 then
                begin
                  ss := '0' + s;
                  if i < 1000000 then
                    begin
                      ss := '00' + s;
                      if i < 100000 then
                        begin
                          ss := '000' + s;
                          if i < 10000 then
                            begin
                              ss := '0000' + s;
                              if i < 1000 then
                                begin
                                  ss := '00000' + s;
                                  if i < 100 then
                                    begin
                                      ss := '000000' + s;
                                      if i < 10 then
                                        begin
                                          ss := '0000000' + s;
                                        end ;
                                    end ;
                                end ;
                            end ;
                        end ;
                    end ;
                
            end ;
        end ;
      writeln(t, ss);
      gotoxy(1,1);
      if (i mod 100000)=0 then
      p:=p+0.01;
      
      writeln('Sedang di proses ',p:2:2,' %');
    end;
  writeln('Selesai');
end.
