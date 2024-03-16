unit CmdOut;

interface

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

implementation

end.
