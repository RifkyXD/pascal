program ayam;
uses crt;
var
ayam,nama,on:string;
t:text;

procedure jeda;
begin
delay(1000);
end;

procedure jeda5;
begin
delay(500);
end;

procedure save;
begin
assign(t,'ayam.txt');
rewrite(t);
writeln(t,'continue');
writeln(t,nama);
close(t);


end;


begin
assign(t,'ayam.txt');
reset(t);
ReadLn(t,on);
ReadLn(t,nama);
close(t);
clrscr;
if on='continue' then
begin
writeln('Hai ',nama);
writeln
end
else
begin
writeln('Hai saya Ayam');
jeda;
write('Siapa nama anda: ');
readln(nama);
jeda5;
writeln('Oke hai ',nama);
save;
end;

end.
