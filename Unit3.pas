unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, MMSystem, Windows,
  FMX.Ani;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Panel2: TPanel;
    Image1: TImage;
    Label2: TLabel;
    Timer1: TTimer;
    Label3: TLabel;
    StyleNote: TStyleBook;
    Image2: TImage;
    FloatAnimation2: TFloatAnimation;
    Arc1: TArc;
    FloatAnimation1: TFloatAnimation;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

uses
  MC_DLL,
  Unit1;

function GetAnySource(FileSource: string): PChar;
begin
  if FileSource <> '' then
    Result := PChar(IncludeTrailingBackslash(GetCurrentDir) + FileSource);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  if FileExists(GetAnySource('MiniCompressor_Icon.ico')) then
    Image1.Bitmap.LoadFromFile(GetAnySource('MiniCompressor_Icon.ico'))
  else
  if not FileExists(GetAnySource('MiniCompressor_Icon.ico')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"MiniCompressor_Icon.ico"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Version.ini')) then
    Label1.Text := 'Mini Compressor AIO - v' +IniRead(GetAnySource('..\Version.ini'), 'Version', 'Current');
  if FileExists(GetAnySource('..\Version.ini')) then
    Label2.Text := IniRead(GetAnySource('..\Version.ini') , 'Version' ,'Copyright');

    if FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
      Image2.Bitmap.LoadFromFile(GetAnySource('..\Resources\Wallpaper.jpg'))
    else
    if not FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
    begin
      sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
      MessageBox(0,'Missing file' +#13 +#13
        +'"Resources\IM_Bg.jpg"', 'Error',
        MB_ICONERROR or MB_OK);
    end;

  Label2.Width := 297;
  //Form1.TabControl9.TabIndex := 0;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  FloatAnimation2.Enabled:= False;
  FloatAnimation2.Enabled:= True;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  //Form1.TabControl9.TabIndex := 1;
  Close;
end;

end.
