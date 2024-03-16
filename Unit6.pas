unit Unit6;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Objects, FMX.Ani,
  FMX.Layouts, FMX.ExtCtrls;

type
  TForm6 = class(TForm)
    TrackBar1: TTrackBar;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Rectangle1: TRectangle;
    Layout1: TLayout;
    FloatAnimation1: TFloatAnimation;
    GroupBox3: TGroupBox;
    Timer1: TTimer;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    GroupBox4: TGroupBox;
    Edit1: TEdit;
    SearchEditButton1: TSearchEditButton;
    ClearEditButton1: TClearEditButton;
    PopupBox1: TPopupBox;
    procedure TrackBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure ClearEditButton1Click(Sender: TObject);
    procedure PopupBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  Windows,
  MMSystem,
  bass,
  MC_DLL,
  Unit1;

function TimeToString(Time: Longint): string;
begin
  if Time >= 3600000 then
    Result := Format('%d:%2.2d:%2.2d.%3.3d',[Time div 3600000,
                                            (Time mod 3600000) div 60000,
                                            (Time mod 60000) div 1000,
                                             Time mod 1000])
   else
     Result := Format('%d:%2.2d.%3.3d',[Time div 60000,
                                       (Time mod 60000) div 1000,
                                        Time mod 1000]);
end;

function GetTimePos : int64;
begin
  Result := Round(BASS_ChannelBytes2Seconds(Form1.BassMusicPlayer,
    BASS_ChannelGetPosition(Form1.BassMusicPlayer, BASS_POS_BYTE))*1000);
end;

function GetTimeLen : int64;
begin
  Result := Round(BASS_ChannelBytes2Seconds(Form1.BassMusicPlayer,
    BASS_ChannelGetLength(Form1.BassMusicPlayer, BASS_POS_BYTE))*1000);
end;

{$R *.fmx}

function GetAnySource(FileSource: string): PChar;
begin
  if FileSource <> '' then
    Result := PChar(IncludeTrailingBackslash(GetCurrentDir) + FileSource);
end;

procedure TForm6.Button1Click(Sender: TObject);
var
  ChangeMusicFile: string;
begin
  OpenDialog1.FileName := '';
  OpenDialog1.Title:= 'Choose your music';
  OpenDialog1.Filter:= 'MP3 File|*.mp3';

  OpenDialog1.Execute;
  ChangeMusicFile := OpenDialog1.FileName;

  if ChangeMusicFile = '' then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Failed to change music.', 'Error',
      MB_ICONEXCLAMATION or MB_OK);
  end
  else if ChangeMusicFile <> '' then
  begin
    Edit1.Text := '';
    BASS_ChannelStop(Form1.BassMusicPlayer);
    BASS_StreamFree(Form1.BassMusicPlayer);
    Form1.BassMusicFile := PChar(ChangeMusicFile);
    Form1.BassMusicPlayer := BASS_StreamCreateFile(false, Form1.BassMusicFile, 0, 0,
      BASS_SAMPLE_LOOP {$IFDEF UNICODE} or BASS_UNICODE {$ENDIF});
    BASS_ChannelPlay(Form1.BassMusicPlayer, True);

    CopyFile(PChar(ChangeMusicFile), GetAnySource('..\Resources\Music.mp3'),
      False);
    if CheckBox1.IsChecked then
      CheckBox1.IsChecked := False;
  end;
end;

procedure TForm6.CheckBox1Change(Sender: TObject);
begin
  case CheckBox1.IsChecked of
    True:
    begin
      CheckBox1.Text := '>';
      BASS_ChannelPause(Form1.BassMusicPlayer);
    end;
    False:
    begin
      CheckBox1.Text := '||';
      BASS_ChannelPlay(Form1.BassMusicPlayer, false);
    end;
  end;
end;

procedure TForm6.ClearEditButton1Click(Sender: TObject);
begin
  BASS_ChannelStop(Form1.BassMusicPlayer);
  BASS_StreamFree(Form1.BassMusicPlayer);
  Form1.BassMusicFile := PChar(GetAnySource('..\Resources\Music.mp3'));
  Form1.BassMusicPlayer := BASS_StreamCreateFile(False, Form1.BassMusicFile, 0, 0,
    BASS_SAMPLE_LOOP {$IFDEF UNICODE} or BASS_UNICODE {$ENDIF});
  BASS_ChannelPlay(Form1.BassMusicPlayer, True);
  IniCreate(GetAnySource('..\Resources\BASS_Setting.ini'),'BASS','Radio','');
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  PopupBox1.Items.LoadFromFile(GetAnySource('..\Resources\BASS_Radio.db'));
  PopupBox1.Items.Add('[Custom Url]');
  PopupBox1.ItemIndex:= 0;
  Edit1.Text := PopupBox1.Text;
  Form1.BassVolume := StrToFloat(IniRead(GetAnySource('..\Resources\BASS_Setting.ini'),
    'BASS', 'Volume'));
  TrackBar1.Value := Form1.BassVolume;
  Rectangle1.Fill.Bitmap.Bitmap.LoadFromFile(GetAnySource('..\Resources\Wallpaper.jpg'));
end;

procedure TForm6.PopupBox1Change(Sender: TObject);
begin
  Edit1.Text := PopupBox1.Text;
  if PopupBox1.Text = '[Custom Url]' then
    Edit1.Text := '';
end;

procedure TForm6.SearchEditButton1Click(Sender: TObject);
var
  BASS_UrlRadio: string;
begin
  if Edit1.Text <> '' then
  begin
    BASS_ChannelStop(Form1.BassMusicPlayer);
    BASS_StreamFree(Form1.BassMusicPlayer);
    BASS_UrlRadio := Edit1.Text;
    Form1.BassMusicPlayer := BASS_StreamCreateURL(PChar(BASS_UrlRadio),0,
      BASS_STREAM_BLOCK or BASS_STREAM_STATUS or BASS_STREAM_AUTOFREE {$IFDEF UNICODE} or BASS_UNICODE {$ENDIF},nil,0);

    BASS_ChannelSetSync(Form1.BassMusicPlayer, BASS_SYNC_META, 0, nil, nil);
    BASS_ChannelSetSync(Form1.BassMusicPlayer, BASS_SYNC_OGG_CHANGE, 0, nil, nil);
    BASS_ChannelSetSync(Form1.BassMusicPlayer, $10300, 0, nil, nil);
    BASS_ChannelSetSync(Form1.BassMusicPlayer, BASS_SYNC_STALL, 0, nil, nil);
    BASS_ChannelSetSync(Form1.BassMusicPlayer, BASS_SYNC_END, 0, nil, nil);

    BASS_ChannelPlay(Form1.BassMusicPlayer, False);
    IniCreate(GetAnySource('..\Resources\BASS_Setting.ini'),'BASS','Radio',
      BASS_UrlRadio);
  end else begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Failed to change music.', 'Error',
      MB_ICONEXCLAMATION or MB_OK);
  end;
end;

procedure TForm6.Timer1Timer(Sender: TObject);
begin
  Label1.Text :=  TimeToString(GetTimePos) + ' | ' + TimetoString(GetTimeLen);
  ProgressBar1.Max := GetTimeLen;
  ProgressBar1.Value := GetTimePos;
end;

procedure TForm6.TrackBar1Change(Sender: TObject);
begin
  BASS_ChannelSetAttribute(Form1.BassMusicPlayer, BASS_ATTRIB_VOL, Round(TrackBar1.Value) / 100);
  IniCreate(GetAnySource('..\Resources\BASS_Setting.ini'), 'BASS', 'Volume',
    FloatToStr(Round(TrackBar1.Value)));
end;

end.
