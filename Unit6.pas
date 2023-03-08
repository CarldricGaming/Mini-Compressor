unit Unit6;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Objects, FMX.Ani,
  FMX.Layouts;

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
    procedure TrackBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

{$R *.fmx}

function GetAnySource(FileSource: string): PChar;
begin
  if FileSource <> '' then
    Result := PChar(IncludeTrailingBackslash(GetCurrentDir) + FileSource);
end;

procedure TForm6.Button1Click(Sender: TObject);
var
  ChangeMP3File: string;
begin
  OpenDialog1.FileName := '';
  OpenDialog1.Title:= 'Choose your music';
  OpenDialog1.Filter:= '.mp3|*.mp3|All Files|*.*';

  OpenDialog1.Execute;
  ChangeMP3File := OpenDialog1.FileName;

  if ChangeMP3File = '' then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Failed to change music.', 'Error',
      MB_ICONEXCLAMATION or MB_OK);
  end
  else
  if ChangeMP3File <> '' then
  begin
    BASS_ChannelStop(Form1.BassMusicPlayer);
    BASS_StreamFree(Form1.BassMusicPlayer);
    Form1.BassMusicFile := PChar(ChangeMP3File);
    Form1.BassMusicPlayer := BASS_StreamCreateFile(false, Form1.BassMusicFile, 0, 0,
      BASS_SAMPLE_LOOP {$IFDEF UNICODE} or BASS_UNICODE {$ENDIF});
    BASS_ChannelPlay(Form1.BassMusicPlayer, True);

    CopyFile(PChar(ChangeMP3File), GetAnySource('..\Resources\Music.mp3'),
      False);
  end;
end;

procedure TForm6.FormCreate(Sender: TObject);
var
  BASS_Volume: string;
begin
  BASS_Volume := IniRead(GetAnySource('..\Resources\BASS_Setting.ini'),
    'BASS', 'Volume');
  TrackBar1.Value := StrToFloat(BASS_Volume);
  Rectangle1.Fill.Bitmap.Bitmap.LoadFromFile(GetAnySource('..\Resources\Wallpaper.jpg'));
end;

procedure TForm6.TrackBar1Change(Sender: TObject);
begin
  BASS_ChannelSetAttribute(Form1.BassMusicPlayer, BASS_ATTRIB_VOL, TrackBar1.Value / 100);
  IniCreate(GetAnySource('..\Resources\BASS_Setting.ini'), 'BASS', 'Volume',
    FloatToStr(Round(TrackBar1.Value)));
end;

end.
