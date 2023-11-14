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

  Application.ProcessMessages;
  Sleep(150);

  Exec(ExpandConstant('{src}\..\..\Resources\IC_Protect.exe'),'', '',SW_SHOWNORMAL,ewWaitUntilTerminated,ErrorCode);

  Application.ProcessMessages;
  Sleep(150);

  Application.ProcessMessages;
  Sleep(150);

  if FileExists(ExpandConstant('{tmp}\Script.iss')) then
    FileCopy(ExpandConstant('{tmp}\Script.iss'),ExpandConstant('{src}\Compiler.engine'),false);

  if FileExists(ExpandConstant('{src}\..\IS5\Compil32.exe')) then
    Exec(ExpandConstant('{src}\..\IS5\Compil32.exe'),'/cc "' + ExpandConstant('{src}\Compiler.engine') +'"','',SW_SHOWNORMAL,ewWaitUntilTerminated,ErrorCode);

  Application.ProcessMessages;
  Sleep(2000);

  DeleteFile(ExpandConstant('{src}\Compiler.engine'));

  if FileExists(ExpandConstant('{src}\..\..\Resources\ISD_List.ini')) then
    DeleteFile(ExpandConstant('{src}\..\..\Resources\ISD_List.ini'));

  Result:=False;
end;