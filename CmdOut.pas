unit CmdOut;

interface

type
  TConsoleCallback = procedure(const ACaption, AText: WideString);

function ISCmdInit(const WinHandle: LongInt): Boolean; stdcall;
  external 'cmdout.dll';
function ISCmdRun(const ExeFile, ExePara: widestring;
  Callback: TConsoleCallback): Boolean; stdcall; external 'cmdout.dll';
function ISCmdSuspend: Boolean; stdcall; external 'cmdout.dll';
function ISCmdResume: Boolean; stdcall; external 'cmdout.dll';
function ISCmdStop: Boolean; stdcall; external 'cmdout.dll';

function ISCmdCusKill(const AppName: WideString): Boolean; stdcall; external 'cmdout.dll';
function ISCmdCusSuspend(const AppName: WideString): Boolean; stdcall; external 'cmdout.dll';
function ISCmdCusResume(const AppName: WideString): Boolean; stdcall; external 'cmdout.dll';

implementation

end.
