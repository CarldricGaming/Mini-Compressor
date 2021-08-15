#define GameName            "Mini Compressor Self-Extracting"
#define Publisher           "Carldric Clement"
#define Developer           "Carldric Clement"
#define GameVersion         "1.0"
#define InstallVersion      "1.0.0.0"
#define NeedInstallSize     "0"

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
OutputBaseFilename=MC
OutputDir=.
Uninstallable=no
SetupIconFile=MC_SFX.ico
DirExistsWarning=no
MinVersion= 0,6.1
DisableProgramGroupPage=yes
DisableWelcomePage=yes
DisableReadyPage=yes

[Files]
Source: "Resources\ISDone\english.ini"; DestDir: "{tmp}"; Flags: "dontcopy";
Source: "Resources\ISDone\ISDone.dll"; DestDir: "{tmp}"; Flags: "dontcopy";
Source: "Resources\7za.exe"; DestDir: "{tmp}"; Flags: "dontcopy";

[Languages]
Name: "eng"; MessagesFile: "compiler:Languages\english.isl";

[Messages]
ButtonNext=Install
ButtonCancel=Cancel
ButtonWizardBrowse=Browse
SetupAppTitle={#GameName}
BeveledLabel=Masked x86

[UninstallDelete]
Type: "filesandordirs"; Name: "{app}";

[Code]
var
FilesFound: Integer;
FreeMB, TotalMB: Cardinal;
memo: TNewMemo;
TimeLabel,LabelPct,LabelPct2,LabelTime, DirEditLabel, ProgressLabel, StatusLabel: Tlabel;
PBar,PBar2: TNewProgressBar;
ISDoneCancel:integer;
ISDoneError:boolean;
PCFVer:double;
const
PCFonFLY=true;
notPCFonFLY=false;

type
TCallback = function (OveralPct,CurrentPct: integer;CurrentFile,TimeStr1,TimeStr2,TimeStr3:PAnsiChar): longword;

function WrapCallback(callback:TCallback; paramcount:integer):longword;external 'wrapcallback@files:ISDone.dll stdcall delayload';
function ISArcExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath, ExtractedPath: AnsiString; DeleteInFile:boolean; Password, CfgFile, WorkPath: AnsiString; ExtractPCF: boolean ):boolean; external 'ISArcExtract@files:ISDone.dll stdcall delayload';
function IS7ZipExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath: AnsiString; DeleteInFile:boolean; Password: AnsiString):boolean; external 'IS7zipExtract@files:ISDone.dll stdcall delayload';
function ISRarExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath: AnsiString; DeleteInFile:boolean; Password: AnsiString):boolean; external 'ISRarExtract@files:ISDone.dll stdcall delayload';
function ISPrecompExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString; DeleteInFile:boolean):boolean; external 'ISPrecompExtract@files:ISDone.dll stdcall delayload';
function ISSRepExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString; DeleteInFile:boolean):boolean; external 'ISSrepExtract@files:ISDone.dll stdcall delayload';
function ISxDeltaExtract(CurComponent:Cardinal; PctOfTotal:double; minRAM,maxRAM:integer; InName, DiffFile, OutFile: AnsiString; DeleteInFile, DeleteDiffFile:boolean):boolean; external 'ISxDeltaExtract@files:ISDone.dll stdcall delayload';
function ISPackZIP(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString;ComprLvl:integer; DeleteInFile:boolean):boolean; external 'ISPackZIP@files:ISDone.dll stdcall delayload';
function ShowChangeDiskWindow(Text, DefaultPath, SearchFile:AnsiString):boolean; external 'ShowChangeDiskWindow@files:ISDone.dll stdcall delayload';
function Exec2 (FileName, Param: PAnsiChar;Show:boolean):boolean; external 'Exec2@files:ISDone.dll stdcall delayload';
function ISFindFiles(CurComponent:Cardinal; FileMask:AnsiString; var ColFiles:integer):integer; external 'ISFindFiles@files:ISDone.dll stdcall delayload';
function ISPickFilename(FindHandle:integer; OutPath:AnsiString; var CurIndex:integer; DeleteInFile:boolean):boolean; external 'ISPickFilename@files:ISDone.dll stdcall delayload';
function ISGetName(TypeStr:integer):PAnsichar; external 'ISGetName@files:ISDone.dll stdcall delayload';
function ISFindFree(FindHandle:integer):boolean; external 'ISFindFree@files:ISDone.dll stdcall delayload';
function ISExec(CurComponent:Cardinal; PctOfTotal,SpecifiedProcessTime:double; ExeName,Parameters,TargetDir,OutputStr:AnsiString;Show:boolean):boolean; external 'ISExec@files:ISDone.dll stdcall delayload';
function SrepInit(TmpPath:PAnsiChar;VirtMem,MaxSave:Cardinal):boolean; external 'SrepInit@files:ISDone.dll stdcall delayload';
function PrecompInit(TmpPath:PAnsiChar;VirtMem:cardinal;PrecompVers:single):boolean; external 'PrecompInit@files:ISDone.dll stdcall delayload';
function FileSearchInit(RecursiveSubDir:boolean):boolean; external 'FileSearchInit@files:ISDone.dll stdcall delayload';
function ISDoneInit(RecordFileName:AnsiString; TimeType,Comp1,Comp2,Comp3:Cardinal; WinHandle, NeededMem:longint; callback:TCallback):boolean; external 'ISDoneInit@files:ISDone.dll stdcall';
function ISDoneStop:boolean; external 'ISDoneStop@files:ISDone.dll stdcall';
function ChangeLanguage(Language:AnsiString):boolean; external 'ChangeLanguage@files:ISDone.dll stdcall delayload';
function SuspendProc:boolean; external 'SuspendProc@files:ISDone.dll stdcall';
function ResumeProc:boolean; external 'ResumeProc@files:ISDone.dll stdcall';
//=-==-==-==-==-==-=-
function InitializeSetup:boolean;
begin
  ExtractTemporaryFile('english.ini');
  if FileExists(ExpandConstant('{src}\Setup.db')) then
    Result := True
  else
  begin
    MsgBox('Missing file "Setup.db"', mbCriticalError, MB_OK);
  end;
end;
//=-==-==-==-==-==-=-
function Floater(Float: Extended; Value: Integer): String;
begin
Result:= Format('%.'+IntToStr(Value)+'n', [Float]); StringChange(Result, ',', ',');
while ((Result[Length(Result)] = '0') or (Result[Length(Result)] = ',')) and (Pos(',', Result) > 0) do
SetLength(Result, Length(Result)-1);
end;
//=-==-==-==-==-==-=-
function ProgressCallback(OveralPct,CurrentPct: integer;CurrentFile,TimeStr1,TimeStr2,TimeStr3:PAnsiChar): longword;
var
x1, x2: Extended;
begin
x1:=WizardForm.ProgressGauge.Position;
x2:=WizardForm.ProgressGauge.Max;
if OveralPct <= WizardForm.ProgressGauge.Max then
WizardForm.ProgressGauge.Position := OveralPct;
if WizardForm.ProgressGauge.Max <> 0 then begin
PBar.Position := WizardForm.ProgressGauge.Position;
PBar.Max := WizardForm.ProgressGauge.Max;
PBar2.Position := WizardForm.ProgressGauge.Position;
PBar2.Max := WizardForm.ProgressGauge.Max;
PBar.Max := WizardForm.ProgressGauge.Max;
LabelPct.Caption := Floater((x1 * 100) / x2,2)+'%';
LabelPct2.Caption := Floater((x1 * 100) / x2,2)+'%';
end;
//if CurrentPct<=1000 then PBar2.Position := CurrentPct;
//LabelPct2.Caption := IntToStr(CurrentPct div 10)+'.'+chr(48 + CurrentPct mod 10)+'%';
TimeLabel.Caption:=TimeStr3;
Memo.Lines.Add('Extraction: ' + CurrentFile);
Result := ISDoneCancel;
end;
//=-==-==-==-==-==-=-
procedure CancelButtonOnClick(Sender: TObject);
begin
SuspendProc;
PBar2.State := npbsPaused;
if MsgBox(SetupMessage(msgExitSetupMessage), mbConfirmation, MB_YESNO) = IDYES then ISDoneCancel:=1;
PBar2.State := npbsNormal;
ResumeProc;
end;
//=-==-==-==-==-==-=-
function CheckError:boolean;
begin
result:= not ISDoneError;
end;
//=-==-==-==-==-==-=-
function NumToStr(Float: Extended): String;
begin
Result:= format('%.2n', [Float]); StringChange(Result, ',', '.');
while (Result[Length(Result)] = '0')or((Result[Length(Result)] = '.')and(Pos('.', Result) > 0)) do
SetLength(Result, Length(Result)-1);
end;

function MbOrTb(Float: Extended): String;
begin
if Float < 1024 then Result:= NumToStr(Float)+' MB' else
if Float/1024 < 1024 then Result:= NumToStr(Float/1024)+' GB' else
Result:= NumToStr(Float/(1024*1024))+' TB';
end;
//=-==-==-==-==-==-=-
function NextButtonClick(CurPageID: Integer): Boolean;
begin
Result := True;
if CurPageID = wpWelcome then begin
GetSpaceOnDisk(ExtractFileDrive(WizardForm.DirEdit.Text), True, FreeMB, TotalMB);
if FreeMB<{#NeedInstallSize} then begin
MsgBox('Not Enough Disk Space!'#13'Setup requires at least: '+MbOrTb({#NeedInstallSize})+' '+'of free space', mbError, mb_Ok);
Result := False ;
end;
end;
end;
//=-==-==-==-==-==-=-
procedure HideC;
begin
Memo.Hide;
DirEditLabel.Hide;
ProgressLabel.Hide;
WizardForm.DirBrowseButton.Hide;
WizardForm.DirEdit.Hide;
PBar.Hide;
PBar2.Hide;
StatusLabel.Hide;
end;
//=-==-==-==-==-==-=-
procedure InitializeWizard();
begin
with WizardForm do begin
Color:=clWhite;
Bevel1.Parent:=WizardForm;
Bevel1.SetBounds(9,240,WizardForm.ClientWidth-19,1);
InnerNotebook.Hide;
OuterNotebook.Hide;
ClientWidth:=WizardForm.ClientWidth+2;
ClientHeight:=280;
Position:=poScreenCenter;
Caption:='{#GameName}';

Memo := TNewMemo.Create(WizardForm);
with Memo do begin
Parent := WizardForm;
Font.Color:=$002F2F2F;
SetBounds(ScaleX(9), ScaleY(9), ScaleX(479), ScaleY(120));
Lines.Text := 'Showing. .  .';
end;

TimeLabel:=TLabel.Create(WizardForm);
with TimeLabel do begin
Parent:=WizardForm;
hide;
end;

with NextButton do begin
SetBounds(ScaleX(422), ScaleY(250), ScaleX(67), ScaleY(23));
Parent:=WizardForm;
end;

with CancelButton do begin
SetBounds(ScaleX(350), ScaleY(250), ScaleX(67), ScaleY(23));
Parent:=WizardForm;
end;

with DirBrowseButton do begin
Parent:=WizardForm;
SetBounds(ScaleX(428), ScaleY(151), ScaleX(60), ScaleY(23));
end;

with DirEdit do begin
Parent:=WizardForm;
SetBounds(ScaleX(9), ScaleY(153), ScaleX(410), ScaleY(21));
end;
end;

DirEditLabel:=TLabel.Create(WizardForm);
with DirEditLabel do begin
Parent:=WizardForm;
AutoSize:=true;
SetBounds(ScaleX(9), ScaleY(136), ScaleX(0), ScaleY(0));
Caption:='Directory:';
end;

ProgressLabel:=TLabel.Create(WizardForm);
with ProgressLabel do begin
Parent:=WizardForm;
AutoSize:=true;
SetBounds(ScaleX(9), ScaleY(190), ScaleX(0), ScaleY(0));
Caption:='Progress';
end;

PBar:=TNewProgressBar.Create(WizardForm);
with PBar do begin
Parent:=WizardForm;
SetBounds(ScaleX(0), ScaleY(0), ScaleX(0), 0);
Max:=1000;
Hide;
end;

PBar2:=TNewProgressBar.Create(WizardForm);
with PBar2 do begin
Parent:=WizardForm;
SetBounds(ScaleX(9), ScaleY(210), ScaleX(479), 20);
Max:=1000;
end;

LabelPct:=TLabel.Create(WizardForm);
with LabelPct do begin
Parent:=PBar;
AutoSize:=False;
Alignment:=taCenter;
SetBounds(ScaleX(0), ScaleY(4), ScaleX(447), ScaleY(23));
Font.Style:=[fsBold];
Hide;
end;

LabelPct2:=TLabel.Create(WizardForm);
with LabelPct2 do begin
Parent:=PBar2;
AutoSize:=False;
Alignment:=taCenter;
Font.Size:=9;
SetBounds(ScaleX(2), ScaleY(2), ScaleX(447), ScaleY(21));
Font.Style:=[fsBold];
end;

StatusLabel := TLabel.Create(WizardForm);
with StatusLabel do begin
Parent:=WizardForm;
AutoSize:=True;
Transparent:=True;
SetBounds(ScaleX(9), ScaleY(176), ScaleX(0), ScaleY(0));
end;
end;
//=-==-==-==-==-==-=-
procedure CurPageChanged(CurPageID: Integer);
begin
HideC;

case CurPageID of

wpWelcome: begin
end;

wpSelectDir: begin
DirEditLabel.Show;
ProgressLabel.Show;
WizardForm.DirBrowseButton.Show;
WizardForm.DirEdit.Show;
PBar2.Show;
memo.Show;
end;

wpInstalling: begin
DirEditLabel.Show;
ProgressLabel.Show;
WizardForm.DirBrowseButton.Show;
WizardForm.DirEdit.Show;
PBar2.Show;
memo.Show;
memo.Clear;
StatusLabel.Show;
WizardForm.DirBrowseButton.Enabled:=False;
WizardForm.DirEdit.Enabled:=False;
WizardForm.NextButton.Show;
WizardForm.NextButton.Enabled:=false;
end;

wpFinished: begin
DirEditLabel.Show;
ProgressLabel.Show;
WizardForm.DirBrowseButton.Show;
WizardForm.DirEdit.Show;
PBar2.Show;
LabelPct2.Caption:='Finish';
memo.Show;
PBar2.Position:=0;
memo.Text:='Finished!';
end;
end;

if (CurPageID = wpFinished) and ISDoneError then
begin
memo.Clear;
memo.Text:='Operation aborted!';
WizardForm.Caption:= SetupMessage(msgErrorTitle);
LabelPct2.Caption:='Finish with Error';
LabelPct2.Font.Color:= clMaroon;
end;
end;

procedure ISDoneFiles;
var
  SetupDB: string;
  TempISDone: string;
  SevenZipCommand: string;
  ErrorCode: integer;
begin
  ExtractTemporaryFile('7za.exe');
  SetupDB := ExpandConstant('{src}\Setup.db');
  TempISDone := ExpandConstant('{tmp}');
  SevenZipCommand := 'x -p"DontTouch" ' +SetupDB +' -o"' +TempISDone +'"';

  Exec(ExpandConstant('{tmp}\7za.exe'), SevenZipCommand, TempISDone, SW_HIDE, ewWaitUntilTerminated, ErrorCode);
end;
//=-==-==-==-==-==-=-
procedure CurStepChanged(CurStep: TSetupStep);
var
  res, i, ResCode: integer;
  Data1, Data2, Data3: Array of String;
begin
If CurStep = ssInstall then
  begin
    ISDoneFiles;
    WizardForm.CancelButton.OnClick := @CancelButtonOnClick;

    i:=1;
    if (GetIniString('Record' + IntToStr(i),'Type','',ExpandConstant('{src}\records.ini')) <> '') then
    begin
      WizardForm.ProgressGauge.Max:=0;
      repeat
        WizardForm.ProgressGauge.Max:= WizardForm.ProgressGauge.Max + 1000;
        i:= i + 1;
      until (GetIniString('Record' + IntToStr(i),'Type','',ExpandConstant('{src}\records.ini')) = '') ;
    end;

    if ISDoneInit(ExpandConstant('{tmp}\records.inf'), $F777, 0,0,0, MainForm.Handle, 512, @ProgressCallback) then begin
    repeat
    ChangeLanguage('English');
    if not SrepInit('',512,0) then
      ISDoneError := True;
    if not PrecompInit('',128,0) then
      ISDoneError := True;
    if not FileSearchInit(true) then
      ISDoneError := True;

      i:=1;
      if (GetIniString('Record' + IntToStr(i),'Type','',ExpandConstant('{src}\records.ini')) <> '') then
      begin
        SetArrayLength(Data1,5);
        SetArrayLength(Data2,5);
        SetArrayLength(Data3,5);
        repeat
          Data1[0]:=ExpandConstant(GetIniString('Record' + IntToStr(i),'Source','',ExpandConstant('{src}\records.ini')));
          Data1[1]:=ExpandConstant(GetIniString('Record' + IntToStr(i),'Output','',ExpandConstant('{src}\records.ini')));
          Data1[2]:=GetIniString('Record' + IntToStr(i),'Disk','1',ExpandConstant('{src}\records.ini'));
          Data1[3]:=GetIniString('Record' + IntToStr(i),'Type','',ExpandConstant('{src}\records.ini'));
          Data1[4]:=GetIniString('Record' + IntToStr(i),'Password','',ExpandConstant('{src}\records.ini'));

          if Data1[3] = 'Freearc' then begin
            if not FileExists(Data1[0]) then begin
              if MsgBox('Insert disc: ' + Data1[2], mbError, MB_OKCANCEL) = IDCANCEL then ISDoneError := True;
            end
            else
            begin
              if not ISArcExtract( 0, 0, Data1[0], Data1[1], '', false, Data1[4], ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'), False) then ISDoneError := True;
              i:= i + 1;
            end;
          end;

          if Data1[3] = '7Zip' then begin
            if not FileExists(Data1[0]) then begin
              if MsgBox('Insert disc: ' + Data1[2], mbError, MB_OKCANCEL) = IDCANCEL then ISDoneError := True;
            end
            else
            begin
              if not IS7ZipExtract( 0, 0, Data1[0], Data1[1], false, Data1[4]) then ISDoneError := True;
              i:= i + 1;
            end;
          end;

          if Data1[3] = 'Rar' then begin
            if not FileExists(Data1[0]) then begin
              if MsgBox('Insert disc: ' + Data1[2], mbError, MB_OKCANCEL) = IDCANCEL then ISDoneError := True;
            end
            else
            begin
              if not ISRarExtract( 0, 0, Data1[0], Data1[1], false, Data1[4]) then ISDoneError := True;
              i:= i + 1;
            end;
          end;

      until ((GetIniString('Record' + IntToStr(i),'Type','',ExpandConstant('{src}\records.ini')) = '') or (ISDoneError = True));
    end;
    until true;
    ISDoneStop;
    end;
  end;

  if (CurStep=ssPostInstall) and ISDoneError then begin
    Exec(ExpandConstant('{uninstallexe}'), '/VERYSILENT','', sw_Hide, ewWaitUntilTerminated, ResCode);
  end;
  end;


procedure CancelButtonClick(CurPageID: Integer; var Cancel, Confirm: Boolean);
begin
Confirm:=False;
end;


