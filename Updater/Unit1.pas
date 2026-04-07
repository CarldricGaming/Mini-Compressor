unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.Net.HttpClient,
  System.Net.URLClient,
  System.Net.HttpClientComponent,
  System.JSON,
  System.Math,
  Winapi.ShellAPI,
  MC_DLL;

const
  RELEASE_URL =
    'https://github.com/CarldricGaming/Mini-Compressor/releases/latest';

{$R *.dfm}

function GetAnySource(FileSource: string): PChar;
begin
  if FileSource <> '' then
    Result := PChar(IncludeTrailingBackslash(GetCurrentDir) + FileSource);
end;

function GetAppVersion: string;
begin
  Result := IniRead(GetAnySource('..\Version.ini'), 'Version', 'Current');
end;

function CompareVersions(const V1, V2: string): Integer;
var
  A1, A2: TArray<string>;
  I, N1, N2: Integer;
begin
  A1 := V1.Replace('v','').Split(['.']);
  A2 := V2.Replace('v','').Split(['.']);

  for I := 0 to Max(Length(A1), Length(A2)) - 1 do
  begin
    if I < Length(A1) then
      N1 := StrToIntDef(A1[I], 0)
    else
      N1 := 0;

    if I < Length(A2) then
      N2 := StrToIntDef(A2[I], 0)
    else
      N2 := 0;

    if N1 > N2 then Exit(1);
    if N1 < N2 then Exit(-1);
  end;

  Result := 0; // equal
end;

// ===== ///

procedure TForm1.FormCreate(Sender: TObject);
var
  HTTP: TNetHTTPClient;
  Resp: IHTTPResponse;
  JSON: TJSONObject;
  LatestVersion: string;
  CompareResult: Integer;
begin
  HTTP:= TNetHTTPClient.Create(nil);
  try
    HTTP.UserAgent := 'MiniCompressor-Updater';

    Resp := HTTP.Get(
      'https://api.github.com/repos/CarldricGaming/Mini-Compressor/releases/latest'
    );

    if Resp.StatusCode <> 200 then
    begin
      MessageBox(Handle,'Failed to update.' +#13 +
        'Please check your connection first.', 'No internet connection.', MB_ICONEXCLAMATION or MB_OK);
      Exit;
    end;

    JSON := TJSONObject.ParseJSONValue(Resp.ContentAsString) as TJSONObject;
    try
      LatestVersion := JSON.GetValue('tag_name').Value;
      CompareResult := CompareVersions(LatestVersion, GetAppVersion);

      case CompareResult of
        1:
          if MessageBox(Handle,'New updates available' +#13 +
            'Do you want to go website and grab the latest version?', 'New Updates.', MB_ICONINFORMATION or MB_OKCANCEL) = MB_OK then
             ShellExecute(0, 'open', PChar(RELEASE_URL), nil, nil, 3);

        0:
          MessageBox(Handle,'Your software is up to date.' +#13 +
            'No need to update this time.', 'You''re good to go.', MB_ICONINFORMATION or MB_OK);

       -1:
          MessageBox(Handle,'You''re running a newer version (BETA) version.',
            'You''re on a BETA mode.', MB_ICONINFORMATION or MB_OK);
      end;

    finally
      JSON.Free;
    end;

  finally
    HTTP.Free;
  end;
  Halt(1);
end;

end.
