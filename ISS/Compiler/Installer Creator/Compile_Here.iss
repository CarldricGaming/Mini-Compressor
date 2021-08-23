#define GameName            "IC Compiler"
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
SetupIconFile=IC.ico
DirExistsWarning=no
MinVersion= 0,6.1
DisableProgramGroupPage=yes
DisableWelcomePage=yes
DisableReadyPage=yes

[Files]
Source: "Script.iss"; DestDir: "{tmp}"; Flags: dontcopy

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
  ErrorCode: integer;
  IC_Output: string;
begin
  //if FileExists(ExpandConstant('{src}\MC.exe')) then
  //  Exec2(ExpandConstant('{src}\MC.exe'),'',false)
  //else
  ExtractTemporaryFile('Script.iss');

  IC_Output := GetIniString('Files', 'OutputDir', '', ExpandConstant('{src}\Temp\Setup.ini'));

  AppProcessMessages;
  Sleep(150);

  Exec(ExpandConstant('{src}\..\..\Resources\IC_Protect.exe'),'', '',SW_SHOWNORMAL,ewWaitUntilTerminated,ErrorCode);

  AppProcessMessages;
  Sleep(150);

  if FileExists(ExpandConstant('{src}\..\..\Resources\ISD_List.txt')) then
    DeleteFile(ExpandConstant('{src}\..\..\Resources\ISD_List.txt'));
  if FileExists(ExpandConstant('{src}\..\..\Resources\Setup.db')) then
    FileCopy(ExpandConstant('{src}\..\..\Resources\Setup.db'),IC_Output +'\Setup.db',false);

  AppProcessMessages;
  Sleep(150);

  if FileExists(ExpandConstant('{src}\..\..\Resources\Setup.db')) then
    DeleteFile(ExpandConstant('{src}\..\..\Resources\Setup.db'));

  AppProcessMessages;
  Sleep(150);

  if FileExists(ExpandConstant('{tmp}\Script.iss')) then
    FileCopy(ExpandConstant('{tmp}\Script.iss'),ExpandConstant('{src}\Compiler.engine'),false);

  if FileExists(ExpandConstant('{src}\..\IS5\Compil32.exe')) then
    Exec(ExpandConstant('{src}\..\IS5\Compil32.exe'),'/cc "' + ExpandConstant('{src}\Compiler.engine') +'"','',SW_SHOWNORMAL,ewWaitUntilTerminated,ErrorCode);

  AppProcessMessages;
  Sleep(2000);

  DeleteFile(ExpandConstant('{src}\Compiler.engine'));

  Result:=False;
end;