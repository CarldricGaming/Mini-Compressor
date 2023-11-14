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
OutputBaseFilename=MC_SFX2
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

  Application.ProcessMessages;
  Sleep(150);

  if FileExists(ExpandConstant('{tmp}\Script.iss')) then
    FileCopy(ExpandConstant('{tmp}\Script.iss'),ExpandConstant('{src}\..\MC_SFX.engine'),false);
  if FileExists(ExpandConstant('{tmp}\MC_SFX.ico')) then
    FileCopy(ExpandConstant('{tmp}\MC_SFX.ico'),ExpandConstant('{src}\..\MC_SFX.ico'),false);

  if FileExists(ExpandConstant('{src}\..\Tools\IS5\Compil32.exe')) then
    Exec(ExpandConstant('{src}\..\Tools\IS5\Compil32.exe'),'/cc "' + ExpandConstant('{src}\\..\MC_SFX.engine') +'"','',SW_SHOWNORMAL,ewWaitUntilTerminated,ERRCode);

  Application.ProcessMessages;
  Sleep(2000);

  if FileExists(ExpandConstant('{src}\..\MC.exe')) then
    FileCopy(ExpandConstant('{src}\..\MC.exe'),ExpandConstant('{src}\..\MC.sfx'),false);

  Application.ProcessMessages;
  Sleep(2000);

  //if FileExists(ExpandConstant('{src}\..\Compression\MC.sfx')) then
  //  DeleteFile(ExpandConstant('{src}\..\Compression\MC.sfx'));
  //if FileExists(ExpandConstant('{src}\..\Compression\Setup.db')) then
  //  DeleteFile(ExpandConstant('{src}\..\Compression\Setup.db'));

  Application.ProcessMessages;
  Sleep(150);

  //if FileExists(ExpandConstant('{src}\..\MC.sfx')) then
  //  FileCopy(ExpandConstant('{src}\..\MC.sfx'),ExpandConstant('{src}\..\Compression\MC.sfx'),false);

  Application.ProcessMessages;
  Sleep(150);


  Application.ProcessMessages;
  Sleep(2000);

  DeleteFile(ExpandConstant('{src}\..\MC_SFX.engine'));
  DeleteFile(ExpandConstant('{src}\..\MC_SFX.ico'));
  DeleteFile(ExpandConstant('{src}\..\MC.exe'));
  //DeleteFile(ExpandConstant('{src}\..\MC.sfx'));

  if FileExists(ExpandConstant('{src}\ISD_List_Manual_SFX.ini')) then
    DeleteFile(ExpandConstant('{src}\ISD_List_Manual_SFX.ini'));

  if FileExists(ExpandConstant('{src}\ISD_List.ini')) then
    DeleteFile(ExpandConstant('{src}\ISD_List.ini'));

  Result:=False;
end;