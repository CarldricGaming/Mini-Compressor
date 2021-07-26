library MC_Freearc;

uses
  Windows, System.SysUtils, System.IOUtils;

procedure Exec(sExe, sCommandLine: string; wait: Boolean); stdcall; external 'Aio_FP.dll';

procedure FreearcCompress(Source, Output, Memory, Method, Password: string); stdcall;
var
  FACommands, FAMemory , FAMethod, FAArchive, FAPassword, FASource : string;
begin
  FAMemory := '-lc' + Memory + ' -ld' + Memory;
  FACommands:= 'a -ma9 -ds ' + FAMemory + ' -di -i1 -ep1 -ed -r -s; -w_Temp\ ';
  FAMethod :=  Method + ' ';
  FAPassword:= '-hp -p"' + Password + '" ';
  FAArchive := '"' + Output + '" ';
  FASource := '"' + Source + '\*"';

  if Password <> '' then
    Exec(IncludeTrailingBackslash(GetCurrentDir) + 'Bin\Arc\arc.exe',
      FACommands + FAMethod + FAPassword + FAArchive + FASource, true);
  if Password = '' then
    Exec(IncludeTrailingBackslash(GetCurrentDir) + 'Bin\Arc\arc.exe',
      FACommands + FAMethod + FAArchive + FASource, true);

  if DirectoryExists(IncludeTrailingBackslash(GetCurrentDir) + '_Temp') then
    TDirectory.Delete(IncludeTrailingBackslash(GetCurrentDir) + '_Temp',True);
end;

exports FreearcCompress;

begin
end.
