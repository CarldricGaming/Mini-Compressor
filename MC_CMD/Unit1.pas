unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Memo2: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

type
  TConsoleCallback = procedure(const ACaption, AText: WideString);

function ISCmdInit(const WinHandle: LongInt): Boolean; stdcall; external 'cmdout.dll';
function ISCmdRun(const ExeFile, ExePara: widestring; Callback: TConsoleCallback): Boolean; stdcall; external 'cmdout.dll';
function ISCmdSuspend: Boolean; stdcall; external 'cmdout.dll';
function ISCmdResume: Boolean; stdcall; external 'cmdout.dll';
function ISCmdStop: Boolean; stdcall; external 'cmdout.dll';

function ISCmdCusKill(const AppName: WideString): Boolean; stdcall; external 'cmdout.dll';
function ISCmdCusSuspend(const AppName: WideString): Boolean; stdcall; external 'cmdout.dll';
function ISCmdCusResume(const AppName: WideString): Boolean; stdcall; external 'cmdout.dll';

procedure UpdateLine(const ACaption, AText: WideString);
begin
  Form1.Memo1.Lines.BeginUpdate;
  try
    Form1.Caption:= ACaption;
    Form1.Memo1.Lines.Text:= AText;
    Form1.Memo1.Perform(EM_LINESCROLL, 0, Form1.Memo1.Lines.Count);
  finally
    Form1.Memo1.Lines.EndUpdate;
  end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Memo1.Align:= alClient;
  Label1.Visible:= False;

  if Label1.Caption <> '' then
  begin
    ISCmdInit(Form1.Handle);
    if ISCmdRun(Label1.Caption, '', @UpdateLine) then
    begin
      Memo2.Lines.Clear;
      Memo2.Lines.Add('[MC_Code]');
      Memo2.Lines.Add('Result=1');
      Memo2.Lines.SaveToFile('MC_CMD.ini');
    end else begin
      Memo2.Lines.Clear;
      Memo2.Lines.Add('[MC_Code]');
      Memo2.Lines.Add('Result=1');
      Memo2.Lines.SaveToFile('MC_CMD.ini');
    end;

    Memo1.Lines.SaveToFile('MC_CMD_Log.txt');
    Application.ProcessMessages;
    Sleep(2000);
    Application.Terminate;
  end else if Label1.Caption = '' then
  begin
    Memo1.Lines.Add('Failed to load parameters execute.');
    Memo1.Lines.Add('Please try again. Click this "Memo" to exit.');

    Memo2.Lines.Clear;
    Memo2.Lines.Add('[MC_Code]');
    Memo2.Lines.Add('Result=1');
    Memo2.Lines.SaveToFile('MC_CMD.ini');
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  Memo1.Lines.Clear;
  Memo2.Visible:= False;
  Label1.Caption := '';

  for i := 1 to System.ParamCount do
  begin
    if ParamStr(i) <> '' then
      Label1.Caption := ParamStr(i);
  end;
end;

procedure TForm1.Memo1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
