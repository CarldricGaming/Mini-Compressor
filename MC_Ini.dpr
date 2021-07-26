library MC_Ini;

uses
  Windows, IniFiles;

function IniRead(Filez, A, B, C: string): string; stdcall;
var
  IniFileME: TIniFile;
begin
  IniFileME:= TIniFile.Create(Filez);
  with IniFileME do
  try
    Result:= IniFileME.ReadString(A, B, C);
  finally
    IniFileME.Free;
  end;
end;

procedure IniCreate(Filez, A, B, C: string); stdcall;
var
  IniFileME: TIniFile;
begin
  IniFileME:= TIniFile.Create(Filez);
  with IniFileME do
  try
    IniFileME.WriteString(A, B, C);
  finally
    IniFileME.Free;
  end;
end;

exports
  IniRead, IniCreate;

begin
end.
