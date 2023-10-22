unit Unit5;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo;

type
  TForm5 = class(TForm)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Panel1: TPanel;
    FloatAnimation1: TFloatAnimation;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Panel2: TPanel;
    Memo1: TMemo;
    Layout2: TLayout;
    Rectangle2: TRectangle;
    FloatAnimation2: TFloatAnimation;
    Image1: TImage;
    Label6: TLabel;
    Arc1: TArc;
    FloatAnimation3: TFloatAnimation;
    FA_SingleTime: TTimer;
    FloatAnimation4: TFloatAnimation;
    FA_SplitTime: TTimer;
    SevenZip_Time: TTimer;
    FA_SingleTime2: TTimer;
    FA_SplitTime2: TTimer;
    SevenZip_Time2: TTimer;
    FloatAnimation5: TFloatAnimation;
    XHash_ProcessingTime: TTimer;
    Rectangle3: TRectangle;
    FloatAnimation6: TFloatAnimation;
    procedure FormCreate(Sender: TObject);
    procedure Memo1ChangeTracking(Sender: TObject);
    procedure FA_SingleTimeTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FA_SplitTimeTimer(Sender: TObject);
    procedure SevenZip_TimeTimer(Sender: TObject);
    procedure FA_SingleTime2Timer(Sender: TObject);
    procedure FA_SplitTime2Timer(Sender: TObject);
    procedure SevenZip_Time2Timer(Sender: TObject);
    procedure FloatAnimation5Finish(Sender: TObject);
    procedure XHash_ProcessingTimeTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GenHashMD5FreeARCCallback(FileName: WideString; FileSize: extended;
      FileProgress, TotalProgress, TotalFiles, FileCounted,
      StatusCode: Integer): Boolean;
  end;

var
  Form5: TForm5;

implementation

uses
  MMSystem,
  Winapi.Windows,
  XHashNet,
  Unit1;

{$R *.fmx}

var
  CancelAll: Boolean    = False;
  PauseAll: Boolean     = False;
  Ok, Bad, Missing: Integer;
  HashErrCode: Integer  = H_ERROR_GENERAL;

function GetAnySource(FileSource: string): PChar;
begin
  if FileSource <> '' then
    Result := PChar(IncludeTrailingBackslash(GetCurrentDir) + FileSource);
end;

function TForm5.GenHashMD5FreeARCCallback(FileName: WideString; FileSize: extended;
  FileProgress, TotalProgress, TotalFiles, FileCounted,
  StatusCode: Integer): Boolean;
begin
  Label1.Text := 'FileName:' +#9+
    Format(VC_CURFILE, [ExtractFileName(FileName)]);

  Label2.Text := 'Position:' +#9#9+
    Format(VC_CURPOS, [ByteOrTb((FileSize * FileProgress) / 100), ByteOrTb(FileSize)]);

  Label3.Text := 'Percentage:' +#9+
    Format(VC_CURPCT, [IntToStr(FileProgress)]);

  ProgressBar1.Value := FileProgress;
  ProgressBar2.Value := TotalProgress;

  Label5.Text := 'Total:' +#9#9+
    Format(VC_CURPCT, [IntToStr(TotalProgress)]);

  // === Status Code ===

  HashErrCode := StatusCode;

  if HashErrCode = H_FILE_HASHING_DONE then
    Memo1.Lines.Add(FileName + '  ... Done!');

  Label4.Text := 'Files:' +#9#9+
    Format(VC_GEN_STATUS_MSG, [FileCounted, TotalFiles]);

  Application.ProcessMessages;
  Result := CancelAll;
end;

procedure TForm5.FA_SplitTime2Timer(Sender: TObject);
begin
  FA_SplitTime2.Enabled := False;
  Memo1.Lines.Clear;

  CancelAll := False;
  HashErrCode := H_ERROR_GENERAL;

  if CalculateHashesForDir(Form1.Edit32.Text + '\Hash.md5', Form1.Edit32.Text,
    2, GenHashMD5FreeARCCallback) <> H_PROCESS_DONE then
  begin
    Memo1.Lines.Add(#10'>>> Process ErrorCode:  ' + IntToStr(HashErrCode));

    MessageBox(0, 'Error:  Hash Generation failed!', 'XHashNext',
      MB_OK or MB_ICONEXCLAMATION);
  end;

  XHash_ProcessingTime.Enabled := True;
  FloatAnimation6.Enabled := True;
end;

procedure TForm5.FA_SplitTimeTimer(Sender: TObject);
begin
  FloatAnimation4.Enabled := True;
  FloatAnimation1.Enabled := True;
  FA_SplitTime.Enabled := False;
  FA_SplitTime2.Enabled := True;
end;

procedure TForm5.FloatAnimation5Finish(Sender: TObject);
begin
  Close;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  if FileExists(GetAnySource('..\Resources\MD5Check.png')) then
    Image1.Bitmap.LoadFromFile(GetAnySource('..\Resources\MD5Check.png'))
  else
  if not FileExists(GetAnySource('..\Resources\MD5Check.png')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Resources\MD5Check.png"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
    Rectangle2.Fill.Bitmap.Bitmap.LoadFromFile(GetAnySource('..\Resources\Wallpaper.jpg'))
  else
  if not FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Resource\Wallpaper.jpg"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
    Rectangle1.Fill.Bitmap.Bitmap.LoadFromFile(GetAnySource('..\Resources\Wallpaper.jpg'))
  else
  if not FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Resource\Wallpaper.jpg"', 'Error',
      MB_ICONERROR or MB_OK);
  end;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
  FloatAnimation2.Enabled:= False;
  FloatAnimation2.Enabled:= True;
end;

procedure TForm5.Memo1ChangeTracking(Sender: TObject);
begin
  Memo1.GoToTextEnd;
end;

procedure TForm5.SevenZip_Time2Timer(Sender: TObject);
begin
  SevenZip_Time2.Enabled := False;

  Memo1.Lines.Clear;

  CancelAll := False;
  HashErrCode := H_ERROR_GENERAL;

  if CalculateHashesForDir(Form1.Edit8.Text + '\Hash.md5', Form1.Edit8.Text,
    2, GenHashMD5FreeARCCallback) <> H_PROCESS_DONE then
  begin
    Memo1.Lines.Add(#10'>>> Process ErrorCode:  ' + IntToStr(HashErrCode));

    MessageBox(0, 'Error:  Hash Generation failed!', 'XHashNext',
      MB_OK or MB_ICONEXCLAMATION);
  end;

  XHash_ProcessingTime.Enabled := True;
  FloatAnimation6.Enabled := True;
end;

procedure TForm5.SevenZip_TimeTimer(Sender: TObject);
begin
  FloatAnimation4.Enabled := True;
  FloatAnimation1.Enabled := True;
  SevenZip_Time.Enabled := False;
  SevenZip_Time2.Enabled := True;
end;

procedure TForm5.XHash_ProcessingTimeTimer(Sender: TObject);
begin
  XHash_ProcessingTime.Enabled := False;
  FloatAnimation6.Enabled := False;
  Rectangle3.Opacity:= 0;

  if MessageBox(0,'Do you want to save your result?','Creating MD5',
    MB_YESNO or MB_ICONQUESTION) = ID_YES then
    Memo1.Lines.SaveToFile(Form1.Edit2.Text + '\MD5Result.txt');

  FloatAnimation5.Enabled := True;
end;

procedure TForm5.FA_SingleTime2Timer(Sender: TObject);
begin
  FA_SingleTime2.Enabled:= False;

  Memo1.Lines.Clear;

  CancelAll := False;
  HashErrCode := H_ERROR_GENERAL;

  if CalculateHashesForDir(Form1.Edit1.Text + '\Hash.md5', Form1.Edit1.Text,
    2, GenHashMD5FreeARCCallback) <> H_PROCESS_DONE then
  begin
    Memo1.Lines.Add(#10'>>> Process ErrorCode:  ' + IntToStr(HashErrCode));

    MessageBox(0, 'Error:  Hash Generation failed!', 'XHashNext',
      MB_OK or MB_ICONEXCLAMATION);
  end;

  XHash_ProcessingTime.Enabled := True;
  FloatAnimation6.Enabled := True;
end;

procedure TForm5.FA_SingleTimeTimer(Sender: TObject);
begin
  FloatAnimation4.Enabled := True;
  FloatAnimation1.Enabled := True;

  FA_SingleTime.Enabled := False;
  FA_SingleTime2.Enabled:= True;
end;

end.
