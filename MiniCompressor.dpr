program MiniCompressor;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  FMX.ApplicationHelper in 'FMX.ApplicationHelper.pas',
  uTotalCpuUsagePct in 'uTotalCpuUsagePct.pas',
  AIO_FP in 'AIO_FP.pas',
  XHashNet in 'XHashNet.pas',
  CmdOut in 'CmdOut.pas',
  Unit5 in 'Unit5.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
