program gettime;
uses crt,dos;
var
hari,tnggl,bln,thn:word;
jam,mnt,dtk,md:integer;
dt:datetime;
time:LongInt ;
begin
  clrscr;
  GetDate(thn,bln,tnggl,hari);
  GetTime(jam,mnt,dtk,md);
  with DT do
  begin
    Year := thn;
    Month := bln;
    Day := hari;
    Hour := jam;
    Min := mnt;
    Sec := dtk;
  end;
  PackTime(dt,time);
  writeln(time);
  UnPackTime(time, dt);
  WriteLn('Unpacked Again:');
  with DT do
  begin
    WriteLn('Year  ', Year);
    WriteLn('Month ', Month);
    WriteLn('Day   ', Day);
    WriteLn('Hour  ', Hour);
    WriteLn('Min   ', Min);
    WriteLn('Sec   ', Sec);
  end;
end.
