unit MC_DLL;

interface

(*
procedure Website(URL: string); stdcall; external 'Aio_FP.dll';
procedure Exec(sExe, sCommandLine: string; wait: Boolean); stdcall; external 'Aio_FP.dll';
function SelDir: string; stdcall; external 'Aio_FP.dll';
*)

function IniRead(Filez, A, B: string): string; stdcall; external 'MiniCompressor_Library.dll';
procedure IniCreate(Filez, A, B, C: string); stdcall; external 'MiniCompressor_Library.dll';

implementation

end.
