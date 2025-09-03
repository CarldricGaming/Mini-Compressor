unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Memo2: TMemo;
    Timer1: TTimer;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
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
  TCmdCallback = procedure(const ACaption, AText: WideString);

function ISCmdInit(const WinHandle: LongInt): Boolean; stdcall;
  external 'CmdOut.dll';
function ISCmdInterval(Const MSec: Cardinal): Boolean; stdcall; // Set Callback Interval: (MSec = 1 to 999 in milliseconds) (Default = 200)
  external 'CmdOut.dll';
procedure ISCmdAddCustomText(const Text: WideString); stdcall;
  external 'CmdOut.dll';
function ISCmdRun(const ExeFile, ExeParam, WorkingDir: WideString;
  Const Callback: TCmdCallback): Boolean; stdcall;
  external 'CmdOut.dll';
function ISCmdPause: Boolean; stdcall;
  external 'CmdOut.dll';
function ISCmdResume: Boolean; stdcall;
  external 'CmdOut.dll';
function ISCmdStop: Boolean; stdcall;
  external 'CmdOut.dll';
function ISCmdCustomPause(const AppName: WideString): Boolean; stdcall;
  external 'CmdOut.dll';
function ISCmdCustomResume(const AppName: WideString): Boolean; stdcall;
  external 'CmdOut.dll';
function ISCmdCustomStop(const AppName: WideString): Boolean; stdcall;
  external 'CmdOut.dll';
function ISCmdUpdateMemo(const MemoHandle: LongInt; NewMemoText: WideString): Boolean; stdcall;
  external 'CmdOut.dll';
function ISCmdGetError: Integer; stdcall;
  external 'CmdOut.dll';

procedure UpdateLine(const ACaption, AText: WideString);
begin
  Form1.Caption:= ACaption;
  ISCmdUpdateMemo(Form1.Memo1.Handle, AText);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  Memo1.Lines.Clear;
  Memo1.Visible:= False;
  Memo2.Visible:= False;
  Label1.Visible:= False;
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

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:= False;
  Memo1.Visible:= True;
  Memo1.Align:= alClient;

  if Label1.Caption <> '' then
  begin
    ISCmdInit(Form1.Handle);
    if ISCmdRun(Label1.Caption, '', '', @UpdateLine) then
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

end.
