program MiniCompressor;

uses
  FMX.Forms,
  Unit2 in 'Unit2.pas' {Form2} ,
  Unit3 in 'Unit3.pas' {Form3} ,
  Unit4 in 'Unit4.pas' {Form4} ,
  Unit5 in 'Unit5.pas' {Form5} ,
  Unit6 in 'Unit6.pas' {Form6} ,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
