program haya;
uses crt;
var
f,t:text;
begin
  assign(t,'/admin/akunlist');
  assign(f,'/admin/listakun');
  rewrite(f);
  rewrite(t);
  writeln(t,'admin');
  writeln(f,'admin');
  readln;
end.
