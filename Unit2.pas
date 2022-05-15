unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, FMX.Menus,
  MMSystem, Winapi.Windows, FMX.Objects;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    MenuBar1: TMenuBar;
    MenuItem1: TMenuItem;
    Image1: TImage;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Unit1;

{$R *.fmx}

function IniRead(Filez, A, B: string): string; stdcall; external 'MC_Ini.dll';
procedure IniCreate(Filez, A, B, C: string); stdcall; external 'MC_Ini.dll';

function GetAnySource(FileSource: string): PChar;
begin
  if FileSource <> '' then
    Result := PChar(IncludeTrailingBackslash(GetCurrentDir) + FileSource);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  if FileExists(GetAnySource('..\Version.ini')) then
    Label1.Text := 'Mini Compressor AIO - v' +IniRead(GetAnySource('..\Version.ini') , 'Version' ,'Current')
  else
  if not FileExists(GetAnySource('..\Version.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Version.ini"', 'Error',
      MB_ICONERROR or MB_OK);
  end;
end;

end.
