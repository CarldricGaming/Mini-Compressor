unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Ani, FMX.Layouts,
  FMX.Gestures,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo,
  FMX.TabControl, FMX.Edit, winapi.windows, Math;

type
  TForm4 = class(TForm)
    ToolbarHolder: TLayout;
    ToolbarPopup: TPopup;
    ToolbarPopupAnimation: TFloatAnimation;
    ToolBar1: TToolBar;
    ToolbarApplyButton: TButton;
    ToolbarCloseButton: TButton;
    ToolbarAddButton: TButton;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    TabItem4: TTabItem;
    Label9: TLabel;
    Button7: TButton;
    Button8: TButton;
    Memo2: TMemo;
    ProgressBar1: TProgressBar;
    Label10: TLabel;
    Label11: TLabel;
    Edit7: TEdit;
    Label12: TLabel;
    procedure ToolbarCloseButtonClick(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    FGestureOrigin: TPointF;
    FGestureInProgress: Boolean;
    { Private declarations }
    procedure ShowToolbar(AShow: Boolean);
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

uses
  Unit1;

type
  TUnarcCallBack = function(what: PAnsiChar; int1, int2: Integer;
    str: PAnsiChar): Integer; stdcall;

const
  MyTitlez = 'Mini Compressor v20.4';
  LibraryAioFP = 'Aio_FP.dll';

  ErrCodeTableMax = 15;

  ErrCodeTable: array [1 .. ErrCodeTableMax] of PAnsiChar = (nil, // -1
    'Неизвестный метод сжатия архива!', // -2
    nil, // -3
    'Выходной блок данных слишком мал!', // -4
    'Не хватает памяти!', // -5
    'Невозможно считать данные!', // -6
    'Архив поврежден!', // -7
    'Необходимые функции не поддерживаются библиотекой!', // -8
    'Запрошенные данные уже были распакованы!', // -9
    nil, // -10
    'Невозможно записать данные на диск!', // -11
    'Не совпадает контрольная сумма!', // -12
    'Неверный пароль!', // -13
    'Заголовок архива поврежден!', // -14
    'Внутренняя ошибка библиотеки!'); // -15

  UnArcExcept0 = 'Произошла ошибка при распаковке!';
  UnArcExcept1 = 'Произошла ошибка при распаковке: ';
  UnArcExcept2 = 'Unarc.dll вернул код ошибки: ';

var
  CfgOptExt, PassOptExt, WorkOptExt: PAnsiChar;
  LastExtractedFile, ExtractedFile, InputFileExt, OutputPathExt: string;
  totalUncompressedMb, Percent, LastPercent: Integer;
  UnarcDone, UnarcError: Boolean;
  Cancel: Integer;
  UnarDLLHandle: THandle = 0;
  StartUnpackTime, DeltaTime: Cardinal;
  ProcessStarted: Boolean = false;

  FreeArcExtract: function(callback: TUnarcCallBack;
    cmd1, cmd2, cmd3, cmd4, cmd5, cmd6, cmd7, cmd8, cmd9, cmd10: PAnsiChar)
    : Integer; cdecl;

procedure Exec(sExe, sCommandLine: string; wait: Boolean); stdcall;
  external LibraryAioFP;
function SelDir: string; stdcall; external LibraryAioFP;
procedure FreearcCompress(Source, Output, Memory, Method, Password: string);
  stdcall; external 'MC_Freearc.dll';

function GetExePath(Instance: THandle): string;
var
  TheFileName: array [0 .. 511] of Char;
begin
  FillChar(TheFileName, sizeof(TheFileName), #0);
  GetModuleFileName(Instance, TheFileName, sizeof(TheFileName));
  result := string(TheFileName);
end;

function MyUnarcCallBack(what: PAnsiChar; Mb, sizeArc: Integer; str: PAnsiChar)
  : Integer; stdcall;
var
  ArcErrCode: Integer;
  ArcErrStr: PAnsiChar;
begin
  if what = 'filename' then
  begin
    ExtractedFile := string(str);
    // Form1.Memo1.Lines.Add('Распаковывается '+string(str)+'...');
  end
  else if what = 'origsize' then
    totalUncompressedMb := Mb
  else if (what = 'write') and (totalUncompressedMb > 0) then
    Percent := round((Mb / totalUncompressedMb) * 1000)
  else if (what = 'quit') and (Mb < 0) and (Mb <> -10) then
  begin
    ArcErrCode := abs(Mb);
    ArcErrStr := nil;
    if ArcErrCode <= ErrCodeTableMax then
    begin
      ArcErrStr := ErrCodeTable[ArcErrCode];
    end;
    if ArcErrStr <> nil then
    begin
      if str <> nil then
      begin
        Form4.Memo2.Lines.Add(UnArcExcept1 + ArcErrStr);
        Form4.Memo2.Lines.Add(UnArcExcept2 + IntToStr(-ArcErrCode));
        Form4.Memo2.Lines.Add(string(str));
      end
      else
      begin
        Form4.Memo2.Lines.Add(UnArcExcept1 + ArcErrStr);
        Form4.Memo2.Lines.Add(UnArcExcept2 + IntToStr(-ArcErrCode));
      end;
    end
    else if str <> nil then
    begin
      Form4.Memo2.Lines.Add(UnArcExcept0);
      Form4.Memo2.Lines.Add(UnArcExcept2 + IntToStr(-ArcErrCode));
      Form4.Memo2.Lines.Add(string(str));
    end
    else
    begin
      Form4.Memo2.Lines.Add(UnArcExcept0);
      Form4.Memo2.Lines.Add(UnArcExcept2 + IntToStr(-ArcErrCode));
    end;
    UnarcError := true;
  end;
  if UnarcError then
    result := -127
  else
    result := 0;
end;

procedure UnarcThread(data: Integer); stdcall;
var
  x, y: Integer;
  cmd: array [1 .. 6] of PAnsiChar;
label ExitUnarc;
begin
  if FreeArcExtract(@MyUnarcCallBack, 'l', '--',
    PAnsiChar(AnsiToUtf8(InputFileExt)), nil, nil, nil, nil, nil, nil, nil) >= 0
  then
  begin
    cmd[1] := CfgOptExt;
    cmd[2] := PassOptExt;
    cmd[3] := WorkOptExt;
    cmd[4] := PAnsiChar(AnsiToUtf8('-dp' + OutputPathExt));
    cmd[5] := '--';
    cmd[6] := PAnsiChar(AnsiToUtf8(InputFileExt));
    for x := 1 to 3 do
      while cmd[x] = nil do
      begin
        for y := x + 1 to 6 do
          cmd[y - 1] := cmd[y];
        cmd[6] := nil;
      end;
    FreeArcExtract(@MyUnarcCallBack, 'x', '-o+', cmd[1], cmd[2], cmd[3], cmd[4],
      cmd[5], cmd[6], nil, nil);
  end
  else
    UnarcError := true;
  UnarcDone := true;
  ExitThread(0);
end;

function ArcExtract(InputFile, OutputPath, Password, CfgFile, WorkPath: string;
  MemoMe: TMemo; LB_Percent, LB_Extract: TLabel;
  ProgressExtract: TProgressBar): Boolean;
var
  sa: TSecurityAttributes;
  ThreadID: Cardinal;
begin
  result := false;
  try
    repeat
      if (InputFile = '') or not FileExists(InputFile) then
      begin
        MemoMe.Lines.Add('CHECK IT FIRST!! WRONG DIRECTION!!');
        break;
      end;
      if (CfgFile <> '') and FileExists(CfgFile) then
        CfgOptExt := PAnsiChar(AnsiToUtf8('-cfg' + CfgFile))
      else
        CfgOptExt := nil;
      if Password <> '' then
        PassOptExt := PAnsiChar(AnsiToUtf8('-p' + Password))
      else
        PassOptExt := nil;
      if (WorkPath <> '') then
        WorkOptExt := PAnsiChar(AnsiToUtf8('-w' + WorkPath))
      else
        WorkOptExt := nil;
      Percent := 0;
      LastPercent := 0;
      totalUncompressedMb := 0;
      ExtractedFile := '';
      LastExtractedFile := '';
      UnarcDone := false;
      UnarcError := false;
      InputFileExt := InputFile;
      OutputPathExt := OutputPath;
      if UnarDLLHandle = 0 then
      begin
        UnarDLLHandle :=
          LoadLibrary(PWideChar(ExtractFilePath(GetExePath(Hinstance)) +
          'Bin\arc_u\unarc.dll'));
        if UnarDLLHandle = 0 then
        begin
          MemoMe.Lines.Add('unarc.dll is missing!!');
          break;
        end;
        FreeArcExtract := GetProcAddress(UnarDLLHandle, 'FreeArcExtract');
      end;
      StartUnpackTime := GetTickCount;
      sa.nLength := sizeof(sa);
      sa.bInheritHandle := true;
      sa.lpSecurityDescriptor := nil;
      BeginThread(@sa, 0, @UnarcThread, nil, 0, ThreadID);
      while not UnarcDone do
      begin
        Application.ProcessMessages;
        sleep(25);
        if Cancel < 0 then
          UnarcError := true;
        ProgressExtract.Value := Percent;
        DeltaTime := (GetTickCount - StartUnpackTime) div 1000;
        if { (DeltaTime>0)and } (Percent > LastPercent) and (Percent <> 0) then
        begin
          LastPercent := Percent;
          LB_Percent.Text := IntToStr(Percent div 10) + '.' +
            IntToStr(Percent mod 10) + '%';
          LB_Extract.Text := 'Extracting: ' +
            IntToStr(round(DeltaTime / (Percent / 1000) - DeltaTime)) + ' ';
        end;
        if ExtractedFile <> LastExtractedFile then
        begin
          MemoMe.Lines.Add('Extracting: ' + ExtractedFile);
          LastExtractedFile := ExtractedFile;
        end;
      end;
      result := not UnarcError;
    until true;
  except
    MemoMe.Lines.Add('LoL! Your File seen to be trouble at you now!');
  end;
end;

function GetDirSize(dir: string; subdir: Boolean): Int64;
var
  rec: TSearchRec;
  found: Integer;
begin
  result := 0;
  if dir[Length(dir)] <> '\' then
    dir := dir + '\';
  found := FindFirst(dir + '*.*', faAnyFile, rec);
  while found = 0 do
  begin
    Inc(result, rec.Size);
    if (rec.Attr and faDirectory > 0) and (rec.Name[1] <> '.') and
      (subdir = true) then
      Inc(result, GetDirSize(dir + rec.Name, true));
    found := FindNext(rec);
  end;
  System.SysUtils.FindClose(rec);
end;

function ConvertBytes(Bytes: Int64): string;
const
  Description: Array [0 .. 8] of string = ('Bytes', 'KB', 'MB', 'GB', 'TB',
    'PB', 'EB', 'ZB', 'YB');
var
  i: Integer;
begin
  i := 0;

  while Bytes > Power(1024, i + 1) do
    Inc(i);

  result := FormatFloat('###0.##', Bytes / IntPower(1024, i)) + ' ' +
    Description[i];
end;

function GetFileSize(p_sFilePath: string): Int64;
var
  oFile: file of Byte;
begin
  // Result := -1;
  AssignFile(oFile, p_sFilePath);
  try
    Reset(oFile);
    result := FileSize(oFile);
  finally
    CloseFile(oFile);
  end;
end;

// ================================================================================

procedure TForm4.FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkEscape then
    ShowToolbar(not ToolbarPopup.IsOpen);
end;

procedure TForm4.ToolbarCloseButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm4.Button1Click(Sender: TObject);
var
  DateAndTimeZ: TDateTime;
  FAError: Boolean;
begin
  Caption := 'Processing...';
  Button3.Visible := false;
  Button6.Visible := false;
  TabControl1.TabIndex := 2;

  DateAndTimeZ := Now;
  Memo1.Lines.Add(MyTitlez + ' - Compressing...');
  Memo1.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
    TimeToStr(DateAndTimeZ));
  Memo1.Lines.Add('');
  Memo1.Lines.Add('    Source: ' + Edit1.Text);
  Memo1.Lines.Add('    Output: ' + Edit2.Text);
  Memo1.Lines.Add('    Method: ' + Edit4.Text);

  FreearcCompress(Edit1.Text, Edit2.Text, Edit3.Text, Edit4.Text, Edit7.Text);

  if FileExists(Edit2.Text) then
    FAError := false;
  if not FileExists(Edit2.Text) then
    FAError := true;
  Button3.Visible := true;
  Button6.Visible := true;

  if FAError = false then
  begin
    Caption := 'Finished.';
    DateAndTimeZ := Now;
    Memo1.Lines.Add('');
    Memo1.Lines.Add('RESULT:');
    Memo1.Lines.Add('');
    Memo1.Lines.Add('    Original Size:   ' +
      ConvertBytes(GetDirSize(Edit1.Text + '\', true)));
    Memo1.Lines.Add('    Compressed Size: ' +
      ConvertBytes(GetFileSize(Edit2.Text)));
    Memo1.Lines.Add('');
    Memo1.Lines.Add('Thank you for using ' + MyTitlez);
    Memo1.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
      TimeToStr(DateAndTimeZ));
    Memo1.GoToTextEnd;
    if FileExists(IncludeTrailingBackslash(GetCurrentDir) + 'ArcTools.ini') then
      DeleteFile(PWideChar(IncludeTrailingBackslash(GetCurrentDir) +
        'ArcTools.ini'));
  end
  else if FAError = true then
  begin
    Caption := 'Failed.';
    DateAndTimeZ := Now;
    Memo1.Lines.Add('');
    Memo1.Lines.Add('LOOKS LIKE THERE IS A PROBLEM ABOUT FREEARC!');
    Memo1.Lines.Add('PLEASE CONTACT ABOUT PROBLEM!');
    Memo1.Lines.Add('');
    Memo1.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
      TimeToStr(DateAndTimeZ));
    Memo1.GoToTextEnd;
    if FileExists(IncludeTrailingBackslash(GetCurrentDir) + 'ArcTools.ini') then
      DeleteFile(PWideChar(IncludeTrailingBackslash(GetCurrentDir) +
        'ArcTools.ini'));
  end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  if FileExists('.\_Output\Result.log', false) then
    DeleteFile('.\_Output\Result.log');
  Close;
end;

procedure TForm4.Button4Click(Sender: TObject);
var
  FACommands, FAArchive, FAOutput: string;
  DateAndTimeZ: TDateTime;
begin
  FAArchive := '"' + Edit5.Text + '"';
  FAOutput := '-dp"' + Edit6.Text + '"';
  FACommands := 'x ' + FAArchive + ' -o+ ' + FAOutput;

  Caption := 'Processing...';
  Button7.Visible := false;
  Button8.Visible := false;
  TabControl1.TabIndex := 3;

  DateAndTimeZ := Now;
  Memo2.Lines.Add(MyTitlez + ' - Decompressing...');
  Memo2.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
    TimeToStr(DateAndTimeZ));
  Memo2.Lines.Add('');
  Memo2.Lines.Add('  Source:');
  Memo2.Lines.Add('    * ' + Edit2.Text);
  Memo2.Lines.Add('');
  Memo2.Lines.Add('  Output:');
  Memo2.Lines.Add('    * ' + Edit1.Text);
  Memo2.Lines.Add('');
  Memo2.Lines.Add('  Result:');
  Memo2.Lines.Add('    * ' + 'Bin\Arc_\Unarc.exe' + ' ' + FACommands);
  Memo2.Lines.Add('');
  Memo2.Lines.Add('ENJOY. :D');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('');

  if ProcessStarted then
    exit;
  ProcessStarted := true;
  ProgressBar1.Max := 1000;
  ProgressBar1.Value := 0;
  Cancel := 0;
  if not ArcExtract(Edit5.Text, Edit6.Text, '', '', '', Memo2, Label10, Label11,
    ProgressBar1) then
  begin
    Memo2.Lines.Add('');
    Memo2.Lines.Add('Extract failed!');
    ProgressBar1.Value := 0;
  end
  else
  begin
    Memo2.Lines.Add('');
    Memo2.Lines.Add('Finished. You are unpack size is ' +
      IntToStr(totalUncompressedMb) + ' MB.');
    ProgressBar1.Value := 1000;
  end;
  ProcessStarted := false;
  Label10.Text := '';
  Label11.Text := '';

  Caption := 'Finished.';
  Button7.Visible := true;
  Button8.Visible := true;
  TabControl1.TabIndex := 3;

  DateAndTimeZ := Now;
  Memo2.Lines.Add('');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('Thank you for using ' + MyTitlez);
  Memo2.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
    TimeToStr(DateAndTimeZ));
  Memo2.GoToTextEnd;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.Button6Click(Sender: TObject);
var
  SaveTXT: string;
begin
  SaveTXT := SelDir;
  if SaveTXT <> '' then
  begin
    Memo1.Lines.SaveToFile(SaveTXT + '\Result1.txt');
  end;
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
var
  DX, DY: Single;
begin
  if EventInfo.GestureID = igiPan then
  begin
    if (TInteractiveGestureFlag.gfBegin in EventInfo.Flags) and
      ((Sender = ToolbarPopup) or (EventInfo.Location.y > (ClientHeight - 70)))
    then
    begin
      FGestureOrigin := EventInfo.Location;
      FGestureInProgress := true;
    end;

    if FGestureInProgress and (TInteractiveGestureFlag.gfEnd in EventInfo.Flags)
    then
    begin
      FGestureInProgress := false;
      DX := EventInfo.Location.x - FGestureOrigin.x;
      DY := EventInfo.Location.y - FGestureOrigin.y;
      if (abs(DY) > abs(DX)) then
        ShowToolbar(DY < 0);
    end;
  end
end;

procedure TForm4.ShowToolbar(AShow: Boolean);
begin
  ToolbarPopup.Width := ClientWidth;
  ToolbarPopup.PlacementRectangle.Rect :=
    TRectF.Create(0, ClientHeight - ToolbarPopup.Height, ClientWidth - 1,
    ClientHeight - 1);
  ToolbarPopupAnimation.StartValue := ToolbarPopup.Height;
  ToolbarPopupAnimation.StopValue := 0;

  ToolbarPopup.IsOpen := AShow;
end;

end.
