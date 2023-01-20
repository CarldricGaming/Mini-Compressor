unit AIO_FP;

interface

procedure Website(URL: string); stdcall; external 'Aio_FP.dll';
procedure Exec(sExe, sCommandLine: string; wait: Boolean); stdcall; external 'Aio_FP.dll';
function SelDir: string; stdcall; external 'Aio_FP.dll';
procedure B_PlayMusic(Files: string); stdcall; external 'Aio_FP.dll';
procedure B_PauseMusic; stdcall; external 'Aio_FP.dll';
procedure B_ResumeMusic; stdcall; external 'Aio_FP.dll';
procedure B_StopMusic; stdcall; external 'Aio_FP.dll';

function IniRead(Filez, A, B: string): string; stdcall; external 'MC_Ini.dll';
procedure IniCreate(Filez, A, B, C: string); stdcall; external 'MC_Ini.dll';

implementation

end.
