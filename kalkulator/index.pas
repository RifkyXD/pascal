program index; 

uses
  crt;


const
  juduloperator: array [1..4] of string = ('Pertambahan', 'Pengurangan', 'Perkalian', 'Pembagian');
  operator: array [1..4] of string = (' + ', ' - ', ' * ', ' / ');


var
  nilai1, nilai2, hasil: real;
  pilih: integer;


begin
  while (pilih = 0) or (pilih > 4) do 
    begin
      clrscr;
      for pilih := 1 to 4 do 
        begin
          writeln(pilih, '. ', juduloperator[pilih]);
        end;
      write('pilih : ');
      readln(pilih);
      if (pilih = 0) or (pilih > 4) then
      begin
        writeln('pilihan tidak ada') ;
      delay(1000);
      end;
    end;
  if (pilih >= 1) or (pilih <= 4) then
    begin
      clrscr;
      writeln(juduloperator[pilih]);
      writeln('==============');
      write('nilai 1 : ');
      readln(nilai1);
      write('nilai 2 : ');
      readln(nilai2);
    end ;
  case pilih of 
    1: hasil := nilai1 + nilai2;
    2: hasil := nilai1 - nilai2;
    3: hasil := nilai1 * nilai2;
    4: hasil := nilai1 / nilai2;
  end;
  writeln(nilai1, operator[pilih], nilai2, ' = ', hasil: 2: 2);
end.
