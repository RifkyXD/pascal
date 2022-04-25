program hapustarget;
uses crt;
var
namafile,isi,tanya:string;
file:text;
jumlah:integer;
begin
clrscr;
writeln('program hapus file');
writeln('==================');
write('letak dan nama file : ');
readln(namafile);
assign(file,namafile);
reset(file);
readln(file,isi);
if isi='' then
writeln('file tidak ada')
else
writeln('file ada');
write('hapus file y/t: ');
readln(tanya);
if tanya='y' then
begin
assign(file,namafile);
erase(file);
end;
if tanya='t' then
continue;
end.
