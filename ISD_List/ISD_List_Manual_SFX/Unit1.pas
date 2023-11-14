unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.StdCtrls, FMX.ExtCtrls;

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
  Windows, IniFiles;

{$R *.fmx}

function GetAnySource(Dir: string): PChar;
begin
  if Dir <> '' then
    Result:= PChar(IncludeTrailingBackslash(GetCurrentDir) + Dir);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  TxtFileToConvert: TPopupBox;
  ConvertToIni: TIniFile;
  i: Integer;
begin
  if FileExists(GetAnySource('ISD_List_Manual_SFX.txt')) then
  begin
    TxtFileToConvert := TPopupBox.Create(nil);
    TxtFileToConvert.Items.LoadFromFile(GetAnySource('ISD_List_Manual_SFX.txt'));

    Application.ProcessMessages;
    Sleep(150);

    //ShowMessage('Your lines total: ' +IntToStr(TxtFileToConvert.Items.Count));

    if FileExists(GetAnySource('ISD_List_Manual_SFX.txt')) then
      DeleteFile(GetAnySource('ISD_List_Manual_SFX.txt'));

    ConvertToIni := TIniFile.Create(GetAnySource('ISD_List_Manual_SFX.ini'));
    i := 0;
    repeat
      i := i + 1;
      TxtFileToConvert.ItemIndex := i - 1;
      ConvertToIni.WriteString('ISDone_Files', IntToStr(i), TxtFileToConvert.Text);
    until i = TxtFileToConvert.Items.Count;

    TxtFileToConvert.Free;
    ConvertToIni.Free;
  end;

  Halt(1);
end;

end.
