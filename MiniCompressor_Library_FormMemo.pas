unit MiniCompressor_Library_FormMemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm9 = class(TForm)
    MC_ExecuteFile: TLabel;
    MC_Memo: TMemo;
    MC_Code: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

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
  Form9.MC_Memo.Lines.BeginUpdate;
  try
    Form9.Caption:= ACaption;
    Form9.MC_Memo.Lines.Text:= AText;
    Form9.MC_Memo.Perform(EM_LINESCROLL, 0, Form9.MC_Memo.Lines.Count);
  finally
    Form9.MC_Memo.Lines.EndUpdate;
  end;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
  Application.ProcessMessages;
  Sleep(150);

  ISCmdInit(Handle);
  if ISCmdRun(MC_ExecuteFile.Caption, '', @UpdateLine) then
    MC_Code.Caption := '1' else
    MC_Code.Caption := '0';

  Application.ProcessMessages;
  Sleep(150);
end;

end.
