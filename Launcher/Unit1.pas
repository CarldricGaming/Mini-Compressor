unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ShellApi;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure ExecAndNoWait(HandleForm: HWND; const AProgram, AParams, AWorking: string);
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
    //repeat
    //  Application.ProcessMessages;
    //  GetExitCodeProcess(EAWInfo.hProcess, ExitCode);
    //until (ExitCode <> STILL_ACTIVE) or Application.Terminated;
  end;
end;

function GetAnySource(FileSource: string): PChar;
begin
  if FileSource <> '' then
    Result := PChar(IncludeTrailingBackslash(GetCurrentDir) + FileSource);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ExecAndNoWait(Handle, GetAnySource('\Bin\MiniCompressor.exe'), '', GetAnySource('\Bin'));
  Halt(1);
end;

end.
