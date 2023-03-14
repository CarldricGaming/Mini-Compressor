unit MC_DLL;

interface

uses
  Winapi.Windows;

(*
procedure Website(URL: string); stdcall; external 'Aio_FP.dll';
procedure Exec(sExe, sCommandLine: string; wait: Boolean); stdcall; external 'Aio_FP.dll';
function SelDir: string; stdcall; external 'Aio_FP.dll';
*)

function IniRead(Filez, A, B: string): string; stdcall; external 'MiniCompressor_Library.dll';
procedure IniCreate(Filez, A, B, C: string); stdcall; external 'MiniCompressor_Library.dll';
procedure ExecAndWait(HandleForm: HWND; const AProgram, AParams, AWorking: string); stdcall; external 'MiniCompressor_Library.dll';
procedure ExecAndNoWait(ACommand, AParams: string); stdcall; external 'MiniCompressor_Library.dll';

implementation

end.
