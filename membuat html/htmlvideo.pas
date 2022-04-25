program htmlvideo;
uses crt;
var
nama,judul,link,zoom:string;
t:text;
begin
judul:='Halaman Pemutar Video';
link:='4_5944970761914551951.mp4';
//isi y atau t untuk zoom
zoom:='Y';

  clrscr;
  assign(t,'../../github/rifkyxd.github.io/video/'+link+'/index.html');
  rewrite(t);
  WriteLn(t, '<html>');
  
  WriteLn(t, '<head>');
  WriteLn(t, '<title>' + judul + '</title>');
  if (zoom='y') or (zoom='Y') then
  writeln(t, '<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />');
  if (zoom='t') or (zoom='T') then
  writeln(t,'<meta name="viewport" content="width=device-width,initial-scale=1"/>');
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
