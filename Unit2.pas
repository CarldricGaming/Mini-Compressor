unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, FMX.Menus,
  MMSystem, Winapi.Windows, FMX.Objects, FMX.Ani, FMX.Layouts, System.Rtti,
  FMX.Grid.Style, FMX.Grid, FMX.Edit;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    MenuBar1: TMenuBar;
    MenuItem1: TMenuItem;
    Image1: TImage;
    Panel2: TPanel;
    FloatAnimation1: TFloatAnimation;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    FloatAnimation2: TFloatAnimation;
    StringGrid1: TStringGrid;
    StringColumn1: TStringColumn;
    StringColumn2: TStringColumn;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  MC_Dll,
  Unit1;

{$R *.fmx}

function GetAnySource(FileSource: string): PChar;
begin
  if FileSource <> '' then
    Result := PChar(IncludeTrailingBackslash(GetCurrentDir) + FileSource);
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  if FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
    Rectangle1.Fill.Bitmap.Bitmap.LoadFromFile(GetAnySource('..\Resources\Wallpaper.jpg'))
  else
  if not FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Resources\Wallpaper.jpg"', 'Error',
      MB_ICONERROR or MB_OK);
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
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
    Label1.Text := 'Mini Compressor AIO - v' +IniRead(GetAnySource('..\Version.ini') , 'Version' ,'Current')
  else
  if not FileExists(GetAnySource('..\Version.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Version.ini"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  StringGrid1.RowCount:= 32;
  // The Name of Creator
  StringGrid1.Cells[0,0] := '7-Zip';
    StringGrid1.Cells[1,0] := 'Igor Pavlov and Shelwien';

  StringGrid1.Cells[0,1] := 'Anvil Forge Recompressor';
    StringGrid1.Cells[1,1] := 'Edison007@FileForums and ProFrager';

  StringGrid1.Cells[0,2] := 'Razor Archiver';
    StringGrid1.Cells[1,2] := 'Christian Martelock';

  StringGrid1.Cells[0,3] := 'CSArc';
    StringGrid1.Cells[1,3] := 'Siyuan Fu';

  StringGrid1.Cells[0,4] := 'SQUID Demo Compressor';
    StringGrid1.Cells[1,4] := 'Ilya Muravyov';

  StringGrid1.Cells[0,5] := 'Freearc, SREP and FAZip';
    StringGrid1.Cells[1,5] := 'Bulat Ziganshin';

  StringGrid1.Cells[0,6] := 'ISDONE, LOLZ, UELR and MSC';
    StringGrid1.Cells[1,6] := 'ProFrager';

  StringGrid1.Cells[0,7] := 'lzturbo';
    StringGrid1.Cells[1,7] := 'Hamid Buzidi';

  StringGrid1.Cells[0,8] := 'Noodle';
    StringGrid1.Cells[1,8] := 'Ramiro Cruzo';

  StringGrid1.Cells[0,9] := 'DisksPan, ZTool, pZLib and XTool';
    StringGrid1.Cells[1,9] := 'Razor12911@FileForums';

  StringGrid1.Cells[0,10] := 'Precomp';
    StringGrid1.Cells[1,10] := 'Christian Schneider';

  StringGrid1.Cells[0,11] := 'ECM';
    StringGrid1.Cells[1,11] := 'Neill Corlett';

  StringGrid1.Cells[0,12] := 'NanoZip';
    StringGrid1.Cells[1,12] := 'Sami Runsas';

  StringGrid1.Cells[0,13] := 'UHARC';
    StringGrid1.Cells[1,13] := 'Uwe Herklotz';

  StringGrid1.Cells[0,14] := 'Graphics Studio & Game File Scanner';
    StringGrid1.Cells[1,14] := 'Razor12911@FileForums';

  StringGrid1.Cells[0,15] := 'OSCDIMG';
    StringGrid1.Cells[1,15] := 'Microsoft';

  StringGrid1.Cells[0,16] := 'WinRAR';
    StringGrid1.Cells[1,16] := 'Alexander Roshal';

  StringGrid1.Cells[0,17] := 'Inno Setup';
    StringGrid1.Cells[1,17] := 'Jordan Russell';

  StringGrid1.Cells[0,18] := 'Directory Sclicer';
    StringGrid1.Cells[1,18] := 'Mircea Dragomir';

  StringGrid1.Cells[0,19] := 'Masked Compression';
    StringGrid1.Cells[1,19] := 'panker1992@FileForums';

  StringGrid1.Cells[0,20] := 'Selft-Extract SFX';
    StringGrid1.Cells[1,20] := 'gozarck@FileForums';

  StringGrid1.Cells[0,21] := 'hkSFV';
    StringGrid1.Cells[1,21] := 'Big-O Software';

  StringGrid1.Cells[0,22] := 'ZCM';
    StringGrid1.Cells[1,22] := 'Nania Francesco Antonio';

  StringGrid1.Cells[0,23] := 'SafeCopy';
    StringGrid1.Cells[1,23] := 'Roman Ish';

  StringGrid1.Cells[0,24] := 'Installer Creator';
    StringGrid1.Cells[1,24] := 'Razor12911@FileForums and Kitsune1982@FileForums';

  StringGrid1.Cells[0,25] := 'PMT - Parallel Multithreaded encoder/decoder';
    StringGrid1.Cells[1,25] := '78372@FileForums';

  StringGrid1.Cells[0,26] := 'LRZip';
    StringGrid1.Cells[1,26] := 'Con Kolivas & gozarck@FileForums';

  StringGrid1.Cells[0,27] := 'AllDup';
    StringGrid1.Cells[1,27] := 'MTSD';

  StringGrid1.Cells[0,28] := 'Metro UI';
    StringGrid1.Cells[1,28] := 'Gupta@FileForums & Razor12911@FileForums';

  StringGrid1.Cells[0,29] := 'CmdOut Library';
    StringGrid1.Cells[1,29] := 'Ele@FileForums';

  StringGrid1.Cells[0,30] := 'XHash Library';
    StringGrid1.Cells[1,30] := 'BLACKFIRE69@FileForums';

  StringGrid1.Cells[0,31] := 'Bass Library';
    StringGrid1.Cells[1,31] := 'Un4seen Developments';
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  FloatAnimation2.Enabled:= False;
  FloatAnimation2.Enabled:= True;
end;

end.
