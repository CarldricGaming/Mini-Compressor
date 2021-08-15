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
OutputBaseFilename=ISDone_List_Manual
OutputDir=.
Uninstallable=no
SetupIconFile=MAINICON.ico
DirExistsWarning=no
MinVersion= 0,6.1
DisableProgramGroupPage=yes
DisableWelcomePage=yes
DisableReadyPage=yes

[Files]
Source: "ISDone_List_Manual.bat"; DestDir: {tmp}; Flags: dontcopy;

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
  ExtractTemporaryFile('ISDone_List_Manual.bat');
  FileCopy(ExpandConstant('{tmp}\ISDone_List_Manual.bat'),ExpandConstant('{src}\ISDone_List_Manual.bat'),false);

  AppProcessMessages;
  Sleep(150);

  Exec(ExpandConstant('{src}\ISDone_List_Manual.bat'),'','',SW_SHOWNORMAL,ewWaitUntilTerminated,ResultCode);

  AppProcessMessages;
  Sleep(150);

  DeleteFile(ExpandConstant('{src}\ISDone_List_Manual.bat'));
  Result:=False;
end;