program simpel;
uses crt;
var
nama,judul,link:string;
t:text;
begin
nama:='a';
judul:='Halaman Pemutar Video';
link:='VID-20220331-WA0008.mp4';
  clrscr;
  assign(t,'../../github/rifkyxd.github.io/video/'+nama+'/index.html');
  rewrite(t);
  WriteLn(t, '<html>');
  
  WriteLn(t, '<head>');
  WriteLn(t, '<title>' + judul + '</title>');
  writeln(t, '<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />');
  WriteLn(t, '</head>');
  writeln(t, '<body>');
  writeln(t,'<video width="375px" height="350px" controls>');
  writeln(t,'<source src="../v/'+link+'" type="video/mp4">');
  writeln(t,'</video>');
  writeln(t, '</body>');
  WriteLn(t, '</html>'); 
  close(t);
  Writeln('Selesai');
  
end.
