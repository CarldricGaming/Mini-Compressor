#define GameName            "Launcher"
#define Publisher           "Carldric Clement"
#define Developer           "Carldric Clement"
#define GameVersion         "1.0"
#define InstallVersion      "1.0.0.0"

[Setup]
AppName={#GameName}
DefaultDirName={src}\Output
DefaultGroupName={#Publisher}\{#GameName}
InternalCompressLevel=ultra64
Compression=lzma2/ultra64
SolidCompression=no
AppVerName={#GameName}
AppVersion={#InstallVersion}
AppPublisher={#Publisher}
VersionInfoDescription={#GameName}
VersionInfoTextVersion={#InstallVersion}
VersionInfoVersion={#InstallVersion}
VersionInfoCompany={#Developer}
AppCopyright=© {#Developer}
OutputBaseFilename=MC_UpdateSFX
OutputDir=.
Uninstallable=no
SetupIconFile=MC_SFX.ico
DirExistsWarning=no
MinVersion= 0,6.1
DisableProgramGroupPage=yes
DisableWelcomePage=yes
DisableReadyPage=yes

[Files]
Source: "MC_UpdateSFX.bat"; DestDir: {tmp}; Flags: dontcopy;

[Code]
type
  TMsg = record hWnd: HWND; message: LongWord; wParam: Longint; lParam: Longint; Time: LongWord; pt: TPoint; end;

function PeekMessage(var lpMsg: TMsg; hWnd: HWND; wMsgFilterMin, wMsgFilterMax, wRemoveMsg: UINT): BOOL; external 'PeekMessageA@user32.dll stdcall';
function TranslateMessage(const lpMsg: TMsg): BOOL; external 'TranslateMessage@user32.dll stdcall';
function DispatchMessage(const lpMsg: TMsg): Longint; external 'DispatchMessageA@user32.dll stdcall';

procedure AppProcessMessages;
var
  Msg: TMsg;
begin
  while PeekMessage(Msg, 0, 0, 0, 1) do
  begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
  end;
end;

function InitializeSetup: Boolean;
var
  ResultCode: integer;
begin
  ExtractTemporaryFile('MC_UpdateSFX.bat');
  FileCopy(ExpandConstant('{tmp}\MC_UpdateSFX.bat'),ExpandConstant('{src}\MC_UpdateSFX.bat'),false);

  AppProcessMessages;
  Sleep(150);

  Exec(ExpandConstant('{src}\MC_UpdateSFX.bat'),'','',SW_SHOWNORMAL,ewWaitUntilTerminated,ResultCode);

  AppProcessMessages;
  Sleep(150);

  DeleteFile(ExpandConstant('{src}\MC_UpdateSFX.bat'));
  Result:=False;
end;