unit Unit7;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses
  Unit1,
  Windows,
  MMSystem;

{$R *.fmx}

function GetAnySource(Default: string): PChar;
begin
  Result := PChar(IncludeTrailingBackslash(GetCurrentDir) + '\' + Default);
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
  sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  MessageBox(0,
    'April Fool''s everyone. ' +#13#13 +'What a silly you are.',
    'HAHAHA!!!', MB_OK or MB_ICONEXCLAMATION);

  Form1.Caption := Form1.Caption + ' - EXPIRED!';
  Close;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  MessageBox(0,
    'April Fool''s everyone. ' +#13#13 +'What a silly you are.',
    'HAHAHA!!!', MB_OK or MB_ICONEXCLAMATION);

  Form1.Caption := Form1.Caption + ' - EXPIRED!';
  Close;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  MessageBox(0,
    'April Fool''s everyone. ' +#13#13 +'What a silly you are.',
    'HAHAHA!!!', MB_OK or MB_ICONEXCLAMATION);

  Form1.Caption := Form1.Caption + ' - EXPIRED!';
  Close;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
  sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  MessageBox(0,
    'April Fool''s everyone. ' +#13#13 +'What a silly you are.',
    'HAHAHA!!!', MB_OK or MB_ICONEXCLAMATION);

  Form1.Caption := Form1.Caption + ' - EXPIRED!';
  Close;
end;

end.
