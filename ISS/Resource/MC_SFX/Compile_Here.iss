#define GameName            "SFX"
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
OutputBaseFilename=Out
OutputDir=.
Uninstallable=no
SetupIconFile=MC_SFX.ico
DirExistsWarning=no
MinVersion= 0,6.1
DisableProgramGroupPage=yes
DisableWelcomePage=yes
DisableReadyPage=yes

[Files]
Source: "Script.iss"; DestDir: "{tmp}"; Flags: dontcopy
Source: "MC_SFX.ico"; DestDir: "{tmp}"; Flags: dontcopy

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
  ERRCode: integer;
begin
  //if FileExists(ExpandConstant('{src}\MC.exe')) then
  //  Exec2(ExpandConstant('{src}\MC.exe'),'',false)
  //else

  ExtractTemporaryFile('Script.iss');
  ExtractTemporaryFile('MC_SFX.ico');

  Exec(ExpandConstant('{src}\MC_Protect.exe'),'','',SW_SHOWNORMAL,ewWaitUntilTerminated,ERRCode);

  AppProcessMessages;
  Sleep(150);

  if FileExists(ExpandConstant('{tmp}\Script.iss')) then
    FileCopy(ExpandConstant('{tmp}\Script.iss'),ExpandConstant('{src}\..\Script.iss'),false);
  if FileExists(ExpandConstant('{tmp}\MC_SFX.ico')) then
    FileCopy(ExpandConstant('{tmp}\MC_SFX.ico'),ExpandConstant('{src}\..\MC_SFX.ico'),false);

  if FileExists(ExpandConstant('{src}\..\Tools\IS5\Compil32.exe')) then
    Exec(ExpandConstant('{src}\..\Tools\IS5\Compil32.exe'),'/cc "' + ExpandConstant('{src}\\..\Script.iss') +'"','',SW_SHOWNORMAL,ewWaitUntilTerminated,ERRCode);

  AppProcessMessages;
  Sleep(2000);

  if FileExists(ExpandConstant('{src}\..\MC.exe')) then
    FileCopy(ExpandConstant('{src}\..\MC.exe'),ExpandConstant('{src}\..\MC.sfx'),false);

  AppProcessMessages;
  Sleep(2000);

  if FileExists(ExpandConstant('{src}\..\Compression\MC.sfx')) then
    DeleteFile(ExpandConstant('{src}\..\Compression\MC.sfx'));
  if FileExists(ExpandConstant('{src}\..\Compression\Setup.db')) then
    DeleteFile(ExpandConstant('{src}\..\Compression\Setup.db'));

  AppProcessMessages;
  Sleep(150);

  if FileExists(ExpandConstant('{src}\..\MC.sfx')) then
    FileCopy(ExpandConstant('{src}\..\MC.sfx'),ExpandConstant('{src}\..\Compression\MC.sfx'),false);

  AppProcessMessages;
  Sleep(150);

  if FileExists(ExpandConstant('{src}\Setup.db')) then
    FileCopy(ExpandConstant('{src}\Setup.db'),ExpandConstant('{src}\..\Compression\Setup.db'),false);

  AppProcessMessages;
  Sleep(2000);

  DeleteFile(ExpandConstant('{src}\..\Script.iss'));
  DeleteFile(ExpandConstant('{src}\..\MC_SFX.ico'));
  DeleteFile(ExpandConstant('{src}\..\MC.exe'));
  DeleteFile(ExpandConstant('{src}\..\MC.sfx'));
  DeleteFile(ExpandConstant('{src}\Setup.db'));

  if FileExists(ExpandConstant('{src}\ISD_List_Manual_SFX.txt')) then
    DeleteFile(ExpandConstant('{src}\ISD_List_Manual_SFX.txt'));

  if FileExists(ExpandConstant('{src}\ISD_List.txt')) then
    DeleteFile(ExpandConstant('{src}\ISD_List.txt'));

  Result:=False;
end;