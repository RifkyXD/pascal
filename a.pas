program a;
uses crt;
const
ab:array[10..35] of string=('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
var
koin,dadu,i:Integer ;
gambar,nomor:integer;
s:string;
begin
  clrscr;
  dadu:=Random(36);
 
 for i:=3 downto 1 do
  begin
clrscr;
if dadu<10 then
writeln('Target : ',dadu)
else
writeln('Target : ',ab[dadu]);
 writeln('Permainan akan dimulai dalam ',i,' detik');
 delay(1000);
end;

 repeat
 
 koin:=Random(36);
 writeln('Tekan spasi untuk berhenti');
 gotoxy(1,2);
 if koin<10 then
 writeln(koin)
 else
 writeln(ab[koin]); 
 delay(10);
 until keyPressed;
 if koin=dadu then
 writeln('Selamat')
 else
writeln('Coba lagi');
end.
