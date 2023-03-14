library MiniCompressor_Library;

uses
  Windows, IniFiles, ShellAPI, VCL.Forms;

function IniRead(Filez, A, B: string): string; stdcall;
var
  IniFileME: TIniFile;
begin
  IniFileME:= TIniFile.Create(Filez);
  with IniFileME do
  try
    Result:= IniFileME.ReadString(A, B, '');
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

procedure ExecAndWait(HandleForm: HWND; const AProgram, AParams, AWorking: string); stdcall;
var
  EAWInfo: TShellExecuteInfo;
  ExitCode: DWORD;
begin
  FillChar(EAWInfo, SizeOf(EAWInfo), 0);
  EAWInfo.cbSize:= SizeOf(TShellExecuteInfo);

  with EAWInfo do
  begin
    fMask := SEE_MASK_NOCLOSEPROCESS;
    Wnd := HandleForm;
    lpFile := PChar(AProgram);
    lpParameters := PChar(AParams);
    lpDirectory := PChar(AWorking);
    nShow := SW_SHOWNORMAL;
  end;

  if ShellExecuteEx(@EAWInfo) then
  begin
    repeat
      Application.ProcessMessages;
      GetExitCodeProcess(EAWInfo.hProcess, ExitCode);
    until (ExitCode <> STILL_ACTIVE) or Application.Terminated;
  end;
end;

procedure ExecAndNoWait(ACommand, AParams: string); stdcall;
begin
  ShellExecute(Application.Handle, 'open', PChar(ACommand), PChar(AParams), nil, SW_SHOWNORMAL);
end;

exports
  IniRead, IniCreate, ExecAndWait, ExecAndNoWait;

begin
end.
