#define GameName            "InnoMaker Compiler"
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
OutputBaseFilename=Compiler
OutputDir=.
Uninstallable=no
SetupIconFile=Ico.ico
DirExistsWarning=no
DisableProgramGroupPage=yes
DisableWelcomePage=yes
DisableReadyPage=yes

[Files]
Source: "Script.iss"; DestDir: "{tmp}"; Flags: dontcopy

[Code]
//type
//  TMsg = record hWnd: HWND; message: LongWord; wParam: Longint; lParam: Longint; Time: LongWord; pt: TPoint; end;

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
  ERRCode: integer;
begin
  ExtractTemporaryFile('Script.iss');

  if GetIniString('Installer','MC','0',ExpandConstant('{src}\Setup.ini')) = '1' then
    Exec(ExpandConstant('{src}\..\Resources\MC_Protect2.exe'),'','',SW_SHOWNORMAL,ewWaitUntilTerminated,ERRCode);

  Application.ProcessMessages;
  Sleep(150);

  if FileExists(ExpandConstant('{tmp}\Script.iss')) then
    FileCopy(ExpandConstant('{tmp}\Script.iss'),ExpandConstant('{src}\Compiler.engine'),false);

  if FileExists(ExpandConstant('{src}\..\Tools\IS5\Compil32.exe')) then
    Exec(ExpandConstant('{src}\..\Tools\IS5\Compil32.exe'),'/cc "' + ExpandConstant('{src}\Compiler.engine') +'"','',SW_SHOWNORMAL,ewWaitUntilTerminated,ERRCode);

  Application.ProcessMessages;
  Sleep(2000);

  DeleteFile(ExpandConstant('{src}\Compiler.engine'));

  if FileExists(ExpandConstant('{src}\..\Resources\ISD_List.ini')) then
    DeleteFile(ExpandConstant('{src}\..\Resources\ISD_List.ini'));

  Result:=False;
end;