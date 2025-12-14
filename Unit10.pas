unit Unit10;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Winapi.Windows,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Objects, FMX.Ani,
  MMSystem, FMX.Edit, FMX.TabControl, ShellApi, FMX.Platform.Win;

type
  TForm10 = class(TForm)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    FloatAnimation1: TFloatAnimation;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    FloatAnimation2: TFloatAnimation;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.fmx}

uses
  System.JSON,
  System.Net.HttpClient,
  System.Net.HttpClientComponent,
  MC_Dll,
  Unit1;

const
  RELEASE_URL =
    'https://github.com/CarldricGaming/Mini-Compressor/releases/latest';

function GetAnySource(FileSource: string): PChar;
begin
  if FileSource <> '' then
    Result := PChar(IncludeTrailingBackslash(GetCurrentDir) + FileSource);
end;

procedure TForm10.Button1Click(Sender: TObject);
begin
  ShellExecute(FmxHandleToHWND(Handle), 'open', PChar(RELEASE_URL), nil, nil, SW_SHOWNORMAL);
  Close;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
  FloatAnimation2.Enabled:= True;
  Timer1.Enabled:= True;
end;

procedure TForm10.FormActivate(Sender: TObject);
begin
  if FileExists(GetAnySource('..\Resources\Updater.jpg')) then
    Rectangle1.Fill.Bitmap.Bitmap.LoadFromFile(GetAnySource('..\Resources\Updater.jpg'))
  else
  if not FileExists(GetAnySource('..\Resources\Updater.jpg')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(FmxHandleToHWND(Handle),'Missing file' +#13 +#13
      +'"Resources\Updater.jpg"', 'Error',
      MB_ICONERROR or MB_OK);
  end;
end;

procedure TForm10.FormCreate(Sender: TObject);
var
  HTTP: TNetHTTPClient;
  Resp: IHTTPResponse;
  JSON: TJSONObject;
  LatestVersion: string;
begin
  HTTP:= TNetHTTPClient.Create(nil);
  try
    HTTP.UserAgent := 'MiniCompressor-Updater';

    Resp := HTTP.Get(
      'https://api.github.com/repos/CarldricGaming/Mini-Compressor/releases/latest'
    );

    if Resp.StatusCode <> 200 then
    begin
      MessageBox(FmxHandleToHWND(Handle),'Failed to update.' +#13 +
        'Please check your connection first.', 'No internet connection.', MB_ICONEXCLAMATION or MB_OK);
      Exit;
    end;

    JSON := TJSONObject.ParseJSONValue(Resp.ContentAsString) as TJSONObject;
    try
      LatestVersion := JSON.GetValue('tag_name').Value;
      Edit1.Text := LatestVersion;
    finally
      JSON.Free;
    end;
  finally
    HTTP.Free;
  end;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
  FloatAnimation1.Enabled:= False;
  FloatAnimation1.Enabled:= True;
end;

procedure TForm10.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=  False;
  Close;
end;

end.
