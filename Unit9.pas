unit Unit9;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Winapi.MMSystem,
  Winapi.Windows, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo;

type
  TForm9 = class(TForm)
    StyleBook1: TStyleBook;
    Expander1: TExpander;
    Panel1: TPanel;
    Button1: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses
  MC_Dll;

{$R *.fmx}

function GetAnySource(FileSource: string): PChar;
begin
  if FileSource <> '' then
    Result := PChar(IncludeTrailingBackslash(GetCurrentDir) + FileSource);
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
  Memo1.Lines.SaveToFile(GetAnySource('..\Compression\FreeArc\arc.ini'));
  sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  MessageBox(0,
    'Configuration saved.',
    'OK', MB_ICONINFORMATION or MB_OK);
end;

procedure TForm9.FormCreate(Sender: TObject);
var
  LoadSkinConfig: string;
  Apply_Skin: string;
  Skin_Set1, Skin_Set2: string;
  Skin_SS_Set: string;

begin
  if FileExists(GetAnySource('..\Resources\Skin\_Skin.ini')) then
  begin
    LoadSkinConfig:= GetAnySource('..\Resources\Skin\_Skin.Ini');
    Apply_Skin := '..\Resources\Skin\';
    Skin_Set1:= IniRead(LoadSkinConfig,'Skin_Use','Set');
    Skin_Set2:= IniRead(LoadSkinConfig,'Skin_Files',Skin_Set1);
    StyleBook1.LoadFromFile(GetAnySource(Apply_Skin) +Skin_Set2);
  end
  else
  if not FileExists(GetAnySource('..\Resources\Skin\_Skin.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Resources\Skin\_Skin.ini"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Compression\FreeArc\arc.ini')) then
    Memo1.Lines.LoadFromFile(GetAnySource('..\Compression\FreeArc\arc.ini')) else
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Compression\FreeARC\arc.ini"', 'Error',
      MB_ICONERROR or MB_OK);
  end;
end;

end.
