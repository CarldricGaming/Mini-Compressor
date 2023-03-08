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
OutputBaseFilename=Out3
OutputDir=.
Uninstallable=no
SetupIconFile=MAINICON.ico
DirExistsWarning=no
MinVersion= 0,6.1
DisableProgramGroupPage=yes
DisableWelcomePage=yes
DisableReadyPage=yes

[Files]
Source: "ISDone_List_Manual_SFX.bat"; DestDir: {tmp}; Flags: dontcopy;

[Code]
function InitializeSetup: Boolean;
var
  ResultCode: integer;
begin
  ExtractTemporaryFile('ISDone_List_Manual_SFX.bat');
  FileCopy(ExpandConstant('{tmp}\ISDone_List_Manual_SFX.bat'),ExpandConstant('{src}\ISDone_List_Manual_SFX.bat'),false);

  Application.ProcessMessages;
  Sleep(150);

  Exec(ExpandConstant('{src}\ISDone_List_Manual_SFX.bat'),'','',SW_SHOWNORMAL,ewWaitUntilTerminated,ResultCode);

  Application.ProcessMessages;
  Sleep(150);

  DeleteFile(ExpandConstant('{src}\ISDone_List_Manual_SFX.bat'));
  Result:=False;
end;