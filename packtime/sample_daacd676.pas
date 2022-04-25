Program Example4;
uses Dos;

{ Program to demonstrate the PackTime and UnPackTime functions. }

var
  DT : DateTime;
  Time : longint;
begin
  with DT do
  begin
    Year := 2023;
    Month := 3;
    Day := 300;
    Hour := 20;
    Min := 11;
    Sec := 11;
  end;
  PackTime(DT, Time);
  WriteLn('Packed Time : ', Time);
  UnPackTime(Time, DT);
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

//  readln;
end.
