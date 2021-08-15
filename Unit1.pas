unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Menus, FMX.TabControl,
  FMX.Objects, FMX.Edit, FMX.EditBox, FMX.NumberBox, FMX.ExtCtrls,
  FMX.ScrollBox, FMX.Memo, Winapi.Messages, Winapi.Windows, FMX.Platform.Win,
  Math, System.IOUtils, MMSystem, FMX.SpinBox;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    StyleBook1: TStyleBook;
    TabControl1: TTabControl;
    MenuBar1: TMenuBar;
    MenuBar2: TMenuBar;
    MenuItem1: TMenuItem;
    Image1: TImage;
    TabItem1: TTabItem;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    SearchEditButton1: TSearchEditButton;
    ClearEditButton1: TClearEditButton;
    SearchEditButton2: TSearchEditButton;
    ClearEditButton2: TClearEditButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    NumberBox1: TNumberBox;
    Label4: TLabel;
    Edit3: TEdit;
    PasswordEditButton1: TPasswordEditButton;
    ClearEditButton3: TClearEditButton;
    GroupBox3: TGroupBox;
    PopupBox1: TPopupBox;
    Edit4: TEdit;
    ClearEditButton4: TClearEditButton;
    GroupBox4: TGroupBox;
    Edit5: TEdit;
    ClearEditButton5: TClearEditButton;
    Button1: TButton;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    Edit6: TEdit;
    Memo1: TMemo;
    Button2: TButton;
    GroupBox5: TGroupBox;
    Edit7: TEdit;
    ClearEditButton6: TClearEditButton;
    TabControl2: TTabControl;
    Memo2: TMemo;
    Button3: TButton;
    TabItem4: TTabItem;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Edit8: TEdit;
    SearchEditButton3: TSearchEditButton;
    ClearEditButton7: TClearEditButton;
    Label6: TLabel;
    Edit9: TEdit;
    SearchEditButton4: TSearchEditButton;
    ClearEditButton8: TClearEditButton;
    TabControl3: TTabControl;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    GroupBox7: TGroupBox;
    Label7: TLabel;
    PopupBox2: TPopupBox;
    Label8: TLabel;
    PopupBox3: TPopupBox;
    Label9: TLabel;
    Edit10: TEdit;
    PasswordEditButton2: TPasswordEditButton;
    ClearEditButton9: TClearEditButton;
    GroupBox8: TGroupBox;
    Edit11: TEdit;
    ClearEditButton10: TClearEditButton;
    Button4: TButton;
    Edit12: TEdit;
    Memo3: TMemo;
    Memo4: TMemo;
    Button5: TButton;
    Button6: TButton;
    GroupBox9: TGroupBox;
    Edit13: TEdit;
    ClearEditButton11: TClearEditButton;
    CheckBox1: TCheckBox;
    Timer1: TTimer;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    CheckBox2: TCheckBox;
    GroupBox10: TGroupBox;
    Edit14: TEdit;
    ClearEditButton12: TClearEditButton;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    OpenDialog1: TOpenDialog;
    TabItem7: TTabItem;
    TabItem15: TTabItem;
    TabControl5: TTabControl;
    TabItem16: TTabItem;
    TabItem17: TTabItem;
    GroupBox21: TGroupBox;
    Label38: TLabel;
    Edit21: TEdit;
    ClearEditButton19: TClearEditButton;
    Label39: TLabel;
    Edit22: TEdit;
    ClearEditButton20: TClearEditButton;
    SearchEditButton7: TSearchEditButton;
    SearchEditButton8: TSearchEditButton;
    GroupBox22: TGroupBox;
    Edit23: TEdit;
    ClearEditButton21: TClearEditButton;
    GroupBox23: TGroupBox;
    Edit24: TEdit;
    ClearEditButton22: TClearEditButton;
    Button19: TButton;
    Edit25: TEdit;
    Memo8: TMemo;
    Button20: TButton;
    Button21: TButton;
    GroupBox24: TGroupBox;
    CheckBox4: TCheckBox;
    Edit26: TEdit;
    ClearEditButton23: TClearEditButton;
    MenuItem21: TMenuItem;
    TabControl4: TTabControl;
    Button7: TButton;
    TabItem8: TTabItem;
    GroupBox11: TGroupBox;
    Label10: TLabel;
    Edit15: TEdit;
    ClearEditButton13: TClearEditButton;
    Label11: TLabel;
    NumberBox2: TNumberBox;
    GroupBox12: TGroupBox;
    Label12: TLabel;
    Edit16: TEdit;
    ClearEditButton14: TClearEditButton;
    Label13: TLabel;
    SpinBox1: TSpinBox;
    Label14: TLabel;
    GroupBox13: TGroupBox;
    Label15: TLabel;
    Edit17: TEdit;
    ClearEditButton15: TClearEditButton;
    Label16: TLabel;
    Edit18: TEdit;
    ClearEditButton16: TClearEditButton;
    Label17: TLabel;
    Edit19: TEdit;
    ClearEditButton17: TClearEditButton;
    GroupBox14: TGroupBox;
    Panel2: TPanel;
    Image2: TImage;
    Button8: TButton;
    GroupBox15: TGroupBox;
    CheckBox3: TCheckBox;
    Edit20: TEdit;
    SearchEditButton5: TSearchEditButton;
    ClearEditButton18: TClearEditButton;
    Button9: TButton;
    TabItem9: TTabItem;
    GroupBox16: TGroupBox;
    Label18: TLabel;
    SpinBox2: TSpinBox;
    Label19: TLabel;
    SpinBox3: TSpinBox;
    Label20: TLabel;
    SpinBox4: TSpinBox;
    Label21: TLabel;
    SpinBox5: TSpinBox;
    Label22: TLabel;
    Edit27: TEdit;
    ClearEditButton24: TClearEditButton;
    GroupBox17: TGroupBox;
    Label23: TLabel;
    NumberBox3: TNumberBox;
    Label24: TLabel;
    NumberBox4: TNumberBox;
    GroupBox18: TGroupBox;
    Edit28: TEdit;
    ClearEditButton25: TClearEditButton;
    Button10: TButton;
    TabItem10: TTabItem;
    Memo5: TMemo;
    Button11: TButton;
    Button12: TButton;
    NumberBox5: TNumberBox;
    Button13: TButton;
    TabItem11: TTabItem;
    Memo6: TMemo;
    Button14: TButton;
    Button15: TButton;
    NumberBox6: TNumberBox;
    Button16: TButton;
    TabItem12: TTabItem;
    Memo7: TMemo;
    Button17: TButton;
    Button18: TButton;
    TabItem13: TTabItem;
    Button22: TButton;
    Button23: TButton;
    Memo9: TMemo;
    NumberBox7: TNumberBox;
    Button24: TButton;
    TabItem14: TTabItem;
    GroupBox19: TGroupBox;
    Panel3: TPanel;
    Image3: TImage;
    Button25: TButton;
    GroupBox20: TGroupBox;
    Edit29: TEdit;
    SearchEditButton6: TSearchEditButton;
    ClearEditButton26: TClearEditButton;
    GroupBox25: TGroupBox;
    Label25: TLabel;
    Edit30: TEdit;
    SearchEditButton9: TSearchEditButton;
    ClearEditButton27: TClearEditButton;
    Label26: TLabel;
    Edit31: TEdit;
    ClearEditButton28: TClearEditButton;
    Button26: TButton;
    Button27: TButton;
    TabItem18: TTabItem;
    Button28: TButton;
    Memo10: TMemo;
    Panel4: TPanel;
    Button29: TButton;
    Button30: TButton;
    OpenDialog2: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure PopupBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SearchEditButton3Click(Sender: TObject);
    procedure SearchEditButton4Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure Edit23Change(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure SearchEditButton7Click(Sender: TObject);
    procedure SearchEditButton8Click(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure Memo4ChangeTracking(Sender: TObject);
    procedure Memo8ChangeTracking(Sender: TObject);
    procedure Memo1ChangeTracking(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure SearchEditButton5Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure SearchEditButton6Click(Sender: TObject);
    procedure SearchEditButton9Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

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

procedure UpdateLine(const ACaption, AText: WideString);
var
  FormHandle: HWND;
begin
  FormHandle:= TWinWindowHandle(Form1.Memo1).Wnd;
  Form1.Edit6.Text := ACaption;
  Form1.Memo1.Lines.Clear;
  Form1.Memo1.Lines.Add(AText);
  SendMessage(FormHandle, EM_LINESCROLL, 0, Form1.Memo1.Lines.Count);
end;

procedure UpdateLine2(const ACaption, AText: WideString);
var
  FormHandle2: HWND;
begin
  FormHandle2:= TWinWindowHandle(Form1.Memo4).Wnd;
  Form1.Edit12.Text := ACaption;
  Form1.Memo4.Lines.Clear;
  Form1.Memo4.Lines.Add(AText);
  SendMessage(FormHandle2, EM_LINESCROLL, 0, Form1.Memo4.Lines.Count);
end;

procedure UpdateLine3(const ACaption, AText: WideString);
var
  FormHandle3: HWND;
begin
  FormHandle3:= TWinWindowHandle(Form1.Memo8).Wnd;
  Form1.Edit25.Text := ACaption;
  Form1.Memo8.Lines.Clear;
  Form1.Memo8.Lines.Add(AText);
  SendMessage(FormHandle3, EM_LINESCROLL, 0, Form1.Memo8.Lines.Count);
end;

procedure Website(URL: string); stdcall; external 'Aio_FP.dll';
procedure Exec(sExe, sCommandLine: string; wait: Boolean); stdcall; external 'Aio_FP.dll';
function SelDir: string; stdcall; external 'Aio_FP.dll';
procedure B_PlayMusic(Files: string); stdcall; external 'Aio_FP.dll';
procedure B_PauseMusic; stdcall; external 'Aio_FP.dll';
procedure B_ResumeMusic; stdcall; external 'Aio_FP.dll';
procedure B_StopMusic; stdcall; external 'Aio_FP.dll';

function IniRead(Filez, A, B: string): string; stdcall; external 'MC_Ini.dll';
procedure IniCreate(Filez, A, B, C: string); stdcall; external 'MC_Ini.dll';

function GetAnySource(FileSource: string): PChar;
begin
  if FileSource <> '' then
    Result := PChar(IncludeTrailingBackslash(GetCurrentDir) + FileSource);
end;

function GetDirSize(dir: string; subdir: Boolean): Int64;
var
  rec: TSearchRec;
  found: int64;
begin
  result := 0;
  if dir[Length(dir)] <> '\' then
    dir := dir + '\';
  found := FindFirst(dir + '*.*', faAnyFile, rec);
  while found = 0 do
  begin
    Inc(result, rec.Size);
    if (rec.Attr and faDirectory > 0) and (rec.Name[1] <> '.') and
      (subdir = true) then
      Inc(result, GetDirSize(dir + rec.Name, true));
    found := FindNext(rec);
  end;
  System.SysUtils.FindClose(rec);
end;

function ConvertBytes(Bytes: Int64): string;
const
  Description: Array [0 .. 8] of string = ('Bytes', 'KB', 'MB', 'GB', 'TB',
    'PB', 'EB', 'ZB', 'YB');
var
  i: Int64;
begin
  i := 0;

  while Bytes > Power(1024, i + 1) do
    Inc(i);

  result := FormatFloat('###0.##', Bytes / IntPower(1024, i)) + ' ' +
    Description[i];
end;

function GetFileSize(p_sFilePath: string): Int64;
var
  oFile: file of Byte;
begin
  // Result := -1;
  AssignFile(oFile, p_sFilePath);
  try
    Reset(oFile);
    result := FileSize(oFile);
  finally
    CloseFile(oFile);
  end;
end;

//========== _+_ ==========

procedure TForm1.Button10Click(Sender: TObject);
begin
  TabControl4.TabIndex := 2;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  Memo5.Lines.Clear;
  NumberBox5.Text:= '1';
  Memo5.Lines.Add('[Exe' +NumberBox5.Text +']');
  Memo5.Lines.Add('Name=');
  Memo5.Lines.Add('File={app}');
  Memo5.Lines.Add('Parameters=');
  Memo5.Lines.Add('WorkingDir={app}');
  Memo5.Lines.Add('Comment=');
  Memo5.Lines.Add('IconFileName={app}');
  Memo5.Lines.Add('Flags=createonlyiffileexists');
  Memo5.Lines.Add('GroupShortCut=0');
  Memo5.Lines.Add('GroupIconName=');
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Memo5.Lines.Add('');
  NumberBox5.Value:= NumberBox5.Value + 1;
  Memo5.Lines.Add('[Exe' +NumberBox5.Text +']');
  Memo5.Lines.Add('Name=');
  Memo5.Lines.Add('File={app}');
  Memo5.Lines.Add('Parameters=');
  Memo5.Lines.Add('WorkingDir={app}');
  Memo5.Lines.Add('Comment=');
  Memo5.Lines.Add('IconFileName={app}');
  Memo5.Lines.Add('Flags=createonlyiffileexists');
  Memo5.Lines.Add('GroupShortCut=0');
  Memo5.Lines.Add('GroupIconName=');
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  TabControl4.TabIndex := 3;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  Memo6.Lines.Clear;
  NumberBox6.Text:= '1';
  Memo6.Lines.Add('[Redist' +NumberBox6.Text +']');
  Memo6.Lines.Add('Name=');
  Memo6.Lines.Add('FileName={src}');
  Memo6.Lines.Add('Parameters=');
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  NumberBox6.Value:= NumberBox6.Value + 1;
  Memo6.Lines.Add('');
  Memo6.Lines.Add('[Redist' +NumberBox6.Text +']');
  Memo6.Lines.Add('Name=');
  Memo6.Lines.Add('FileName={src}');
  Memo6.Lines.Add('Parameters=');
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  TabControl4.TabIndex := 4;
end;

procedure TForm1.Button17Click(Sender: TObject);
var
  InfoFileChange: string;
begin
  OpenDialog1.Title := 'Choose your info file';
  OpenDialog1.Filter := 'Info.txt|info.txt|.txt|*.txt|All files|*.*';
  OpenDialog1.Execute;
  InfoFileChange := OpenDialog1.FileName;

  if FileExists(InfoFileChange) then
  begin
    Memo7.Lines.Clear;
    Memo7.Lines.LoadFromFile(InfoFileChange);
    Application.ProcessMessages;
    Sleep(150);
    Memo7.Lines.SaveToFile(GetAnySource('..\Installer\Info.txt'));
  end
  else
  if not FileExists(InfoFileChange) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0, 'Failed to loaded Info file.', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
  end;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  TabControl4.TabIndex := 5;
end;

procedure TForm1.Button19Click(Sender: TObject);
var
  IMGCommand, IMGSource, IMGOutput, IMGSolidFile, IMGResult: string;
  IMG_Handle: HWND;
  IMG_Error: Boolean;
begin
  TabControl5.TabIndex := 1;
  Button20.Visible:= False;
  Button21.Visible:= False;
  Memo8.Lines.Clear;
  Edit25.Text := 'Processing...';

  Application.ProcessMessages;
  Sleep(150);

  IMGCommand := Edit23.Text +' ';
  IMGSource := '"' +Edit21.Text +'" ';
  IMGSolidFile := Edit24.Text;
  IMGOutput := '"' +Edit22.Text +'\' +IMGSolidFile +'"';
  IMGResult := IMGCommand +IMGSource +IMGOutput;

  Application.ProcessMessages;
  Sleep(150);

  IMG_Handle := TWinWindowHandle(Form1).Wnd;
  IMG_Error := False;
  ISCmdInit(IMG_Handle);

  if ISCmdRun(GetAnySource('..\Compression\OSCDIMG\oscdimg.exe'), IMGResult,
    @UpdateLine3) then
    IMG_Error:= False
  else
    IMG_Error:= True;
  Edit25.Text := 'Processing...';

  Application.ProcessMessages;
  Sleep(150);

  if IMG_Error = False then
  begin
    if FileExists(Edit22.Text +'\' +IMGSolidFile) then
    begin
      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'Your ISO was done.', 'Finished',
        MB_ICONINFORMATION or MB_OK);
      Edit25.Text := 'Finished.';
    end
    else
    if not FileExists(Edit22.Text +'\' +IMGSolidFile) then
    begin
      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'The processing was done, But the file didnt exist.', 'Failed',
        MB_ICONEXCLAMATION or MB_OK);
      Edit25.Text := 'Process done. ISO file missing.';
    end;
  end
  else
  if IMG_Error = True then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Failed to make ISO file.', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
    Edit25.Text := 'Failed.';
  end;

  Button20.Visible:= True;
  Button21.Visible:= True;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  FA_Command, FA_Memory, FA_Password, FA_Method, FA_Source, FA_Output,
  FA_Archive, FA_Result: string;

  FA_Handle: HWND;
  FA_Error: boolean;
  DateAndTimeZ: TDateTime;
  SFXOutput, SFXCommand: string;
begin
  TabControl2.TabIndex := 1;
  Button2.Visible:= False;
  Button3.Visible:= False;
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
  Edit6.Text:= 'Compressing...';

  if CheckBox2.IsChecked = True then
    SFXOutput := Edit2.Text
  else
  if CheckBox2.IsChecked = False then
    SFXOutput := '';

  Application.ProcessMessages;
  Sleep(150);

  FA_Command := Edit7.Text +' ';
  FA_Memory := '-lc' +NumberBox1.Text +' -ld' +NumberBox1.Text +' ';
  FA_Password := '-hp -p"' +Edit3.Text +'" ';

  Application.ProcessMessages;
  Sleep(150);

  if PopupBox1.Text = '[CUSTOM]' then
    FA_Method := '-m' +Edit4.Text +' '
  else
  if PopupBox1.Text <> '' then
    FA_Method := '-m' +PopupBox1.Text +' ';

  FA_Archive := '' +Edit5.Text;
  FA_Output := '"' +Edit2.Text +'\' +FA_Archive +'" ';
  FA_Source := '"' +Edit1.Text +'\*"';

  Application.ProcessMessages;
  Sleep(150);

  if Edit3.Text <> '' then
    FA_Result := '' +FA_Command +FA_Memory +FA_Password +FA_Method
    +FA_Output +FA_Source
  else
  if Edit3.Text = '' then
    FA_Result := '' +FA_Command +FA_Memory +FA_Method +FA_Output +FA_Source;

  Application.ProcessMessages;
  Sleep(150);

  DateAndTimeZ := Now;
  Memo2.Lines.Add('Mini Compressor AIO - Compressing...');
  Memo2.Lines.Add('Date & Time: ' +DateToStr(DateAndTimeZ) +' | ' +TimeToStr(DateAndTimeZ));
  Memo2.Lines.Add('');
  Memo2.Lines.Add('    Source: ' +Edit1.Text);
  Memo2.Lines.Add('    Output: ' +Edit2.Text +'\' +Edit5.Text);
  Memo2.Lines.Add('    Method: ' +FA_Method);

  FA_Handle := TWinWindowHandle(Form1).Wnd;
  FA_Error := False;
  ISCmdInit(FA_Handle);

  if ISCmdRun(GetAnySource('..\Compression\FreeArc\Arc.exe'), FA_Result,
    @UpdateLine) then
    FA_Error:= False
  else
    FA_Error:= True;
  Edit6.Text:= 'Processing...';

  Application.ProcessMessages;
  Sleep(150);

  if DirectoryExists(IncludeTrailingBackslash(GetCurrentDir) + '_Temp') then
    TDirectory.Delete(IncludeTrailingBackslash(GetCurrentDir) + '_Temp',True);

  Application.ProcessMessages;
  Sleep(150);

  if FA_Error = False then
  begin
    if FileExists(Edit2.Text +'\' +Edit5.Text) then
    begin
      DateAndTimeZ := Now;
      Memo2.Lines.Add('');
      Memo2.Lines.Add('RESULT:');
      Memo2.Lines.Add('');
      Memo2.Lines.Add('    Original Size:   ' +
        ConvertBytes(GetDirSize(Edit1.Text + '\', true)));
      Memo2.Lines.Add('    Compressed Size: ' +
        ConvertBytes(GetFileSize(Edit2.Text +'\' +Edit5.Text)));
      Memo2.Lines.Add('');
      Memo2.Lines.Add('Thank you for using Mini Compressor AIO');
      Memo2.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
        TimeToStr(DateAndTimeZ));
      Memo2.GoToTextEnd;

      if SFXOutput <> '' then
      begin
        SFXCommand:= 'copy /b "' +GetAnySource('..\Compression\MC.sfx') +'" + "'
          +Edit2.Text +'\' +Edit5.Text + '" "' + SFXOutput + '\' + Edit14.Text + '"';

        IniCreate(SFXOutput +'\records.ini','Record1','Type','Freearc');
        IniCreate(SFXOutput +'\records.ini','Record1','Source','{src}\' +Edit14.Text);
        IniCreate(SFXOutput +'\records.ini','Record1','Output','{app}');
        IniCreate(SFXOutput +'\records.ini','Record1','Disk','1');
        IniCreate(SFXOutput +'\records.ini','Record1','Password',Edit3.Text);

        with TMemo.Create(nil) do
        try
          Lines.Add('@echo off');
          Lines.Add('title SFX Processing...');
          Lines.Add(SFXCommand +' > nul');
          Lines.Add('timeout 2 > nul');
          Lines.SaveToFile(GetAnySource('SFX_Make.bat'));
        finally
          Free;
        end;

        CopyFile(GetAnySource('..\Compression\Setup.db'),
          PChar(SFXOutput +'\Setup.db'),false);

        Application.ProcessMessages;
        Sleep(150);

        Exec(GetAnySource('SFX_Make.bat'),'',true);

        Application.ProcessMessages;
        Sleep(150);

        if FileExists(Edit2.Text +'\' +Edit5.Text) then
          DeleteFile(PChar(Edit2.Text +'\' +Edit5.Text));

        if FileExists(GetAnySource('SFX_Make.bat')) then
          DeleteFile(GetAnySource('SFX_Make.bat'));

        Application.ProcessMessages;
        Sleep(150);
      end;

      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'Your compression was done.', 'Finished',
        MB_ICONINFORMATION or MB_OK);
      Edit6.Text:= 'Finished.';
    end
    else
    if not FileExists(Edit2.Text +'\' +Edit5.Text) then
    begin
      DateAndTimeZ := Now;
      Memo2.Lines.Add('');
      Memo2.Lines.Add('LOOKS LIKE THERE IS A PROBLEM ABOUT FREEARC!');
      Memo2.Lines.Add('PLEASE CONTACT ABOUT PROBLEM!');
      Memo2.Lines.Add('');
      Memo2.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
        TimeToStr(DateAndTimeZ));
      Memo2.GoToTextEnd;
      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'Your compression was not done.', 'Failed',
        MB_ICONEXCLAMATION or MB_OK);
      Edit6.Text:= 'Failed.';

      if FileExists(Edit2.Text +'\freearc1.tmp') then
        DeleteFile(PChar(Edit2.Text +'\freearc1.tmp'));
    end;
  end
  else
  if FA_Error = True then
  begin
    DateAndTimeZ := Now;
    Memo2.Lines.Add('');
    Memo2.Lines.Add('LOOKS LIKE THERE IS A PROBLEM ABOUT FREEARC!');
    Memo2.Lines.Add('PLEASE CONTACT ABOUT PROBLEM!');
    Memo2.Lines.Add('');
    Memo2.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
      TimeToStr(DateAndTimeZ));
    Memo2.GoToTextEnd;
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Your compression was not done.', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
    Edit6.Text:= 'Failed.';
  end;
  Button2.Visible := True;
  Button3.Visible := True;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  Memo8.Lines.SaveToFile(SelDir +'\OSCDIMG_Result.txt');
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  TabControl5.TabIndex := 0;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  NumberBox7.Text := '1';
  Memo9.Lines.Clear;
  Memo9.Lines.Add('[Archive' +NumberBox7.Text +']');
  Memo9.Lines.Add('Type=Freearc or 7Zip or Rar');
  Memo9.Lines.Add('Source={src}');
  Memo9.Lines.Add('Output={app}');
  Memo9.Lines.Add('Disk=1');
  Memo9.Lines.Add('Password=');
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  NumberBox7.Value := NumberBox7.Value + 1;
  Memo9.Lines.Add('');
  Memo9.Lines.Add('[Archive' +NumberBox7.Text +']');
  Memo9.Lines.Add('Type=Freearc or 7Zip or Rar');
  Memo9.Lines.Add('Source={src}');
  Memo9.Lines.Add('Output={app}');
  Memo9.Lines.Add('Disk=1');
  Memo9.Lines.Add('Password=');
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
  TabControl4.TabIndex := 6;
end;

procedure TForm1.Button25Click(Sender: TObject);
var
  BGImageChange: string;
begin
  OpenDialog1.Title := 'Choose your background installer.';
  OpenDialog1.Filter := '.jpg|*.jpg|All files|*.*';
  OpenDialog1.Execute;
  BGImageChange := OpenDialog1.FileName;

  if FileExists(BGImageChange) then
  begin
    Image3.Bitmap.LoadFromFile(BGImageChange);
    CopyFile(PChar(BGImageChange), GetAnySource('..\Installer\Graphics\Background.jpg'), false);
  end
  else
  if not FileExists(BGImageChange) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'), SND_ASYNC);
    MessageBox(0,'Failed to change bacground installer.', 'Error',
      MB_ICONEXCLAMATION or MB_OK);
  end;
end;

procedure TForm1.Button26Click(Sender: TObject);
var
  IM_Error: boolean;
  IM_Output: string;
begin
  IM_Output := Edit30.Text +'\' +Edit31.Text +'.exe';

  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Installer', 'Name', Edit15.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Installer', 'Size', NumberBox2.Text);
  if CheckBox3.IsChecked = True then
    IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Installer', 'MC', '1');
  if CheckBox3.IsChecked = False then
  begin
    IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Installer', 'MC', '0');
    IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Installer', 'Files', Edit20.Text);
  end;
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Theme', 'Color', Edit16.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Theme', 'Dark', SpinBox1.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Game', 'DESCRIPTION', Edit17.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Game', 'Genre', Edit18.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Game', 'Rating', Edit18.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Watermark', 'Who', Edit28.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'System', 'CPUCores', SpinBox2.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'System', 'CPUSpeed', SpinBox3.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'System', 'RAMSize', SpinBox4.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'System', 'GPUSize', SpinBox5.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'System', 'GPUDX', Edit27.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'System', 'OSVersion', NumberBox3.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'System', 'OSBuild', NumberBox4.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Additional', 'OutputDir', Edit30.Text);
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Additional', 'OutputExec', Edit31.Text);

  Memo5.Lines.SaveToFile(GetAnySource('..\Installer\Exec.ini'));
  Memo6.Lines.SaveToFile(GetAnySource('..\Installer\Redist.ini'));
  Memo9.Lines.SaveToFile(GetAnySource('..\Installer\Archive.ini'));

  Application.ProcessMessages;
  Sleep(150);

  Exec(GetAnySource('..\Installer\Compiler.exe'), '', True);

  Application.ProcessMessages;
  Sleep(150);

  if FileExists(IM_Output) then
  begin
    CopyFile(GetAnySource('..\Resources\Setup.db'), PChar(Edit30.Text +'\Setup.db'), false);

    Application.ProcessMessages;
    Sleep(2000);

    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0, 'Installation was finish to make.', 'Finished',
      MB_ICONINFORMATION or MB_OK);
  end
  else
  if not FileExists(IM_Output) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0, 'Installation was failed to make.', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
  end;
  DeleteFile(GetAnySource('..\Installer\Setup.ini'));
  DeleteFile(GetAnySource('..\Installer\Exec.ini'));
  DeleteFile(GetAnySource('..\Installer\Redist.ini'));
  DeleteFile(GetAnySource('..\Installer\Archive.ini'));
  DeleteFile(GetAnySource('..\Resources\Setup.db'));
  TabControl4.TabIndex := 0;
end;

procedure TForm1.Button27Click(Sender: TObject);
begin
  TabControl4.TabIndex := 7;
end;

procedure TForm1.Button28Click(Sender: TObject);
begin
  if FileExists(GetAnySource('..\Resources\ISD_List_Manual.txt')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0, 'Looks like the file still exist. Would create another one.', 'Resource Exist',
      MB_ICONINFORMATION or MB_OK);
    DeleteFile(GetAnySource('..\Resources\ISD_List_Manual.txt'));
    Exec(GetAnySource('..\Resources\MC_Update.exe'), '', True);
  end
  else
  if not FileExists(GetAnySource('..\Resources\ISD_List_Manual.txt')) then
    Exec(GetAnySource('..\Resources\MC_Update.exe'), '', True);
end;

procedure TForm1.Button29Click(Sender: TObject);
var
  FileNameProj: string;
begin
  OpenDialog2.Title := 'Locate to save';
  OpenDialog2.Filter := '.imp|*.imp';
  OpenDialog2.FileName := '';
  OpenDialog2.Execute;
  FileNameProj := OpenDialog2.FileName +'.imp';

  Application.ProcessMessages;
  Sleep(150);

  if FileNameProj <> '' then
  begin
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'Installer', 'Name', Edit15.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'Installer', 'Size', NumberBox2.Text);
    if CheckBox3.IsChecked = True then
      IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'Installer', 'MC', '1');
    if CheckBox3.IsChecked = False then
    begin
      IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'Installer', 'MC', '0');
      IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'Installer', 'Files', Edit20.Text);
    end;
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'Theme', 'Color', Edit16.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'Theme', 'Dark', SpinBox1.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'Game', 'DESCRIPTION', Edit17.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'Game', 'Genre', Edit18.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'Game', 'Rating', Edit18.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'Watermark', 'Who', Edit28.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'CPUCores', SpinBox2.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'CPUSpeed', SpinBox3.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'RAMSize', SpinBox4.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'GPUSize', SpinBox5.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'GPUDX', Edit27.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'OSVersion', NumberBox3.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'OSBuild', NumberBox4.Text);

    Memo5.Lines.SaveToFile(GetAnySource('..\Resources\Project\Exec.ini'));
    Memo6.Lines.SaveToFile(GetAnySource('..\Resources\Project\Redist.ini'));
    Memo9.Lines.SaveToFile(GetAnySource('..\Resources\Project\Archive.ini'));

    if FileExists(GetAnySource('..\Installer\Graphics\Background.jpg')) then
      CopyFile(GetAnySource('..\Installer\Graphics\Background.jpg'),
        GetAnySource('..\Resources\Project\Graphics\Background.jpg'),false);

    if FileExists(GetAnySource('..\Installer\Info.txt')) then
      CopyFile(GetAnySource('..\Installer\Info.txt'),
        GetAnySource('..\Resources\Project\Info.txt'),false);

    if FileExists(GetAnySource('..\Installer\Graphics\Music.mp3')) then
      CopyFile(GetAnySource('..\Installer\Graphics\Music.mp3'),
        GetAnySource('..\Resources\Project\Graphics\Music.mp3'),false);

    if FileExists(GetAnySource('..\Installer\Game.ico')) then
      CopyFile(GetAnySource('..\Installer\Game.ico'),
        GetAnySource('..\Resources\Project\Game.ico'),false);

    Application.ProcessMessages;
    Sleep(150);

    Exec(GetAnySource('..\Resources\7za.exe'),'a -bb3 -r0 -mmt2 -mx9 -pIMP "'
      +FileNameProj +'.7z" "' +GetAnySource('..\Resources\Project') +'\*"', true);

    Application.ProcessMessages;
    Sleep(150);

    DeleteFile(GetAnySource('..\Resources\Project\Setup.ini'));
    DeleteFile(GetAnySource('..\Resources\Project\Exec.ini'));
    DeleteFile(GetAnySource('..\Resources\Project\Redist.ini'));
    DeleteFile(GetAnySource('..\Resources\Project\Archive.ini'));

    if FileExists(GetAnySource('..\Resources\Project\Graphics\Background.jpg')) then
      DeleteFile(GetAnySource('..\Resources\Project\Graphics\Background.jpg'));

    if FileExists(GetAnySource('..\Resources\Project\Graphics\Music.mp3')) then
      DeleteFile(GetAnySource('..\Resources\Project\Graphics\Music.mp3'));

    if FileExists(GetAnySource('..\Resources\Project\Game.ico')) then
      DeleteFile(GetAnySource('..\Resources\Project\Game.ico'));

    if FileExists(GetAnySource('..\Resources\Project\Info.txt')) then
      DeleteFile(GetAnySource('..\Resources\Project\Info.txt'));

    Application.ProcessMessages;
    Sleep(150);

    RenameFile(PChar(FileNameProj +'.7z'),PChar(FileNameProj));

    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  end
  else
  if FileNameProj = '' then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0, 'Failed to save project.', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TabControl2.TabIndex := 0;
end;

procedure TForm1.Button30Click(Sender: TObject);
var
  LoadProj: string;
  MC_Check: string;
begin
  OpenDialog1.Title := 'Locate your project';
  OpenDialog1.Filter := '.imp|*.imp';
  OpenDialog1.FileName := '';
  OpenDialog1.Execute;
  LoadProj := OpenDialog1.FileName;

  if LoadProj <> '' then
  begin
    Image3.Bitmap.LoadFromFile(GetAnySource('..\Resources\None.bmp'));

    Application.ProcessMessages;
    Sleep(150);

    Exec(GetAnySource('..\Resources\7za.exe'),
      'x -pIMP -O"' +GetAnySource('..\Resources\Project') +'" "'
      +PChar(LoadProj) +'"', true);

    Application.ProcessMessages;
    Sleep(150);

    Edit15.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Installer', 'Name');
    NumberBox2.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Installer', 'Size');
    MC_Check := IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Installer', 'MC');
    if MC_Check = '1' then
      CheckBox3.IsChecked:= True
    else
    if MC_Check = '0' then
    begin
      CheckBox3.IsChecked:= False;
      Edit20.Text := IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Installer', 'Files');
    end;
    Edit16.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Theme', 'Color');
    SpinBox1.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Theme', 'Dark');
    Edit17.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Game', 'DESCRIPTION');
    Edit18.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Game', 'Genre');
    Edit18.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Game', 'Rating');
    Edit28.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Watermark', 'Who');
    SpinBox2.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'CPUCores');
    SpinBox3.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'CPUSpeed');
    SpinBox4.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'RAMSize');
    SpinBox5.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'GPUSize');
    Edit27.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'GPUDX');
    NumberBox3.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'OSVersion');
    NumberBox4.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'OSBuild');

    Memo5.Lines.LoadFromFile(GetAnySource('..\Resources\Project\Exec.ini'));
    Memo6.Lines.LoadFromFile(GetAnySource('..\Resources\Project\Redist.ini'));
    Memo9.Lines.LoadFromFile(GetAnySource('..\Resources\Project\Archive.ini'));

    Memo7.Lines.LoadFromFile(GetAnySource('..\Resources\Project\Info.txt'));
    Memo7.Lines.SaveToFile(GetAnySource('..\Installer\Info.txt'));

    if FileExists(GetAnySource('..\Resources\Project\Graphics\Background.jpg')) then
      CopyFile(GetAnySource('..\Resources\Project\Graphics\Background.jpg'),
        GetAnySource('..\Installer\Graphics\Background.jpg'), false);

    if FileExists(GetAnySource('..\Resources\Project\Graphics\Music.mp3')) then
      CopyFile(GetAnySource('..\Resources\Project\Graphics\Music.mp3'),
        GetAnySource('..\Installer\Graphics\Music.mp3'), false);

    if FileExists(GetAnySource('..\Resources\Project\Game.ico')) then
      CopyFile(GetAnySource('..\Resources\Project\Game.ico'),
        GetAnySource('..\Installer\Game.ico'), false);

    Application.ProcessMessages;
    Sleep(150);

    DeleteFile(GetAnySource('..\Resources\Project\Setup.ini'));
    DeleteFile(GetAnySource('..\Resources\Project\Exec.ini'));
    DeleteFile(GetAnySource('..\Resources\Project\Redist.ini'));
    DeleteFile(GetAnySource('..\Resources\Project\Archive.ini'));

    if FileExists(GetAnySource('..\Resources\Project\Graphics\Background.jpg')) then
      DeleteFile(GetAnySource('..\Resources\Project\Graphics\Background.jpg'));

    if FileExists(GetAnySource('..\Resources\Project\Graphics\Music.mp3')) then
      DeleteFile(GetAnySource('..\Resources\Project\Graphics\Music.mp3'));

    if FileExists(GetAnySource('..\Resources\Project\Game.ico')) then
      DeleteFile(GetAnySource('..\Resources\Project\Game.ico'));

    if FileExists(GetAnySource('..\Resources\Project\Info.txt')) then
      DeleteFile(GetAnySource('..\Resources\Project\Info.txt'));

    Application.ProcessMessages;
    Sleep(150);

    Image2.Bitmap.LoadFromFile(GetAnySource('..\Installer\Game.ico'));
    Image3.Bitmap.LoadFromFile(GetAnySource('..\Installer\Graphics\Background.jpg'));

    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  end
  else
  if LoadProj = '' then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0, 'Failed to load project.', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  FA_Report: string;
begin
  FA_Report := SelDir;
  if FA_Report <> '' then
  begin
    Memo2.Lines.SaveToFile(FA_Report +'\MC_Result1.txt');
    Memo1.Lines.SaveToFile(FA_Report +'\MC_Result2.txt');
  end
  else
  if FA_Report = '' then
    ShowMessage('Failed to save.');
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Command7z, Thread7z, Method7z, Password7z, Archive7z, Source7z,
  Result7z: string;
  DateAndTimeZ: TDateTime;
  Handle7z: HWND;
  Error7z: Boolean;
  SFXOutput, SFXCommand: string;
begin
  TabControl3.TabIndex:= 1;
  Button6.Visible := False;
  Button5.Visible := False;
  Memo3.Lines.Clear;
  Memo4.Lines.Clear;
  Edit12.Text:= 'Compressing...';

  if CheckBox4.IsChecked = True then
    SFXOutput:= Edit9.Text
  else
  if CheckBox4.IsChecked = False then
    SFXOutput:= '';

  Application.ProcessMessages;
  Sleep(150);

  Command7z := Edit13.Text +' ';
  Thread7z := '-mmt' +PopupBox3.Text +' ';
  Method7z := '-m' +PopupBox2.Text +' ';
  Password7z := '-p' +Edit10.Text +' ';
  Archive7z := '"' +GetAnySource('temp.7z') +'" ';
  Source7z := '"' +Edit8.Text +'\*"';

  Application.ProcessMessages;
  Sleep(150);

  if Edit10.Text <> '' then
    Result7z := Command7z +Thread7z +Method7z +Password7z +Archive7z +Source7z
  else
  if Edit10.Text = '' then
    Result7z := Command7z +Thread7z +Method7z +Archive7z +Source7z;

  DateAndTimeZ := Now;
  Memo3.Lines.Add('Mini Compressor AIO - Compressing...');
  Memo3.Lines.Add('Date & Time: ' +DateToStr(DateAndTimeZ) +' | ' +TimeToStr(DateAndTimeZ));
  Memo3.Lines.Add('');
  Memo3.Lines.Add('    Source: ' +Edit8.Text);
  Memo3.Lines.Add('    Output: ' +Edit9.Text +'\' +Edit11.Text);
  Memo3.Lines.Add('    Method: ' +Method7z);

  Handle7z:= TWinWindowHandle(Form1).Wnd;
  Error7z:= False;
  ISCmdInit(Handle7z);

  if ISCmdRun(GetAnySource('..\Compression\7-Zip\7z.exe'), Result7z,
    @UpdateLine2) then
    Error7z:= False
  else
    Error7z:= True;
  Edit12.Text:= 'Processing...';

  Application.ProcessMessages;
  Sleep(150);

  if FileExists(GetAnySource('temp.7z')) then
  begin
    CopyFile(GetAnySource('temp.7z'),PChar(Edit9.Text +'\' +Edit11.Text),false);

    Application.ProcessMessages;
    Sleep(2000);

    DeleteFile(GetAnySource('temp.7z'));
  end
  else
  if not FileExists(GetAnySource('temp.7z')) then
    Error7z := True;

  if Error7z = False then
  begin
    if FileExists(Edit9.Text +'\' +Edit11.Text) then
    begin
      DateAndTimeZ := Now;
      Memo3.Lines.Add('');
      Memo3.Lines.Add('RESULT:');
      Memo3.Lines.Add('');
      Memo3.Lines.Add('    Original Size:   ' +
        ConvertBytes(GetDirSize(Edit8.Text + '\', true)));
      Memo3.Lines.Add('    Compressed Size: ' +
        ConvertBytes(GetFileSize(Edit9.Text +'\' +Edit11.Text)));
      Memo3.Lines.Add('');
      Memo3.Lines.Add('Thank you for using Mini Compressor AIO');
      Memo3.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
        TimeToStr(DateAndTimeZ));
      Memo3.GoToTextEnd;

      if SFXOutput <> '' then
      begin
        SFXCommand:= 'copy /b "' +GetAnySource('..\Compression\7z.sfx') +'" + "'
          +Edit9.Text +'\' +Edit11.Text + '" "' + SFXOutput + '\' + Edit26.Text + '"';

        with TMemo.Create(nil) do
        try
          Lines.Add('@echo off');
          Lines.Add('title SFX Processing...');
          Lines.Add(SFXCommand +' > nul');
          Lines.Add('timeout 2 > nul');
          Lines.SaveToFile(GetAnySource('SFX_Make.bat'));
        finally
          Free;
        end;

        Application.ProcessMessages;
        Sleep(150);

        Exec(GetAnySource('SFX_Make.bat'),'',true);

        Application.ProcessMessages;
        Sleep(150);

        if FileExists(Edit9.Text +'\' +Edit11.Text) then
          DeleteFile(PChar(Edit9.Text +'\' +Edit11.Text));

        if FileExists(GetAnySource('SFX_Make.bat')) then
          DeleteFile(GetAnySource('SFX_Make.bat'));

        Application.ProcessMessages;
        Sleep(150);
      end;

      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'Your compression was done.', 'Finished',
        MB_ICONINFORMATION or MB_OK);
      Edit12.Text:= 'Finished.';
    end
    else
    if not FileExists(Edit9.Text +'\' +Edit11.Text) then
    begin
      DateAndTimeZ := Now;
      Memo3.Lines.Add('');
      Memo3.Lines.Add('LOOKS LIKE THERE IS A PROBLEM ABOUT FREEARC!');
      Memo3.Lines.Add('PLEASE CONTACT ABOUT PROBLEM!');
      Memo3.Lines.Add('');
      Memo3.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
        TimeToStr(DateAndTimeZ));
      Memo3.GoToTextEnd;
      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'Your compression was not done.', 'Failed',
        MB_ICONEXCLAMATION or MB_OK);
      Edit12.Text:= 'Failed.';
    end;
  end
  else
  if Error7z = True then
  begin
    DateAndTimeZ := Now;
    Memo3.Lines.Add('');
    Memo3.Lines.Add('LOOKS LIKE THERE IS A PROBLEM ABOUT FREEARC!');
    Memo3.Lines.Add('PLEASE CONTACT ABOUT PROBLEM!');
    Memo3.Lines.Add('');
    Memo3.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
      TimeToStr(DateAndTimeZ));
    Memo3.GoToTextEnd;
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Your compression was not done.', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
    Edit12.Text:= 'Failed.';
  end;
  Button6.Visible := True;
  Button5.Visible := True;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  TabControl3.TabIndex := 0;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  Report7z: string;
begin
  Report7z:= Seldir;
  if Report7z <> '' then
  begin
    Memo3.Lines.SaveToFile(Seldir + '\MC_Result1.txt');
    Memo4.Lines.SaveToFile(Seldir + '\MC_Result1.txt');
  end
  else
  if Report7z = '' then
    ShowMessage('Failed to saved.');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  TabControl4.TabIndex := 0;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  IconImageChange: string;
begin
  OpenDialog1.Title := 'Choose your new icon';
  OpenDialog1.Filter := '.ico|*.ico|All files|*.*';
  OpenDialog1.Execute;
  IconImageChange := OpenDialog1.FileName;

  if FileExists(IconImageChange) then
  begin
    Image2.Bitmap.LoadFromFile(IconImageChange);
    CopyFile(PChar(IconImageChange),GetAnySource('..\Installer\Game.ico'),false);
  end
  else
  if not FileExists(IconImageChange) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Failed to change icon.', 'Error',
      MB_ICONEXCLAMATION or MB_OK);
  end;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  TabControl4.TabIndex := 1;
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
  if CheckBox1.IsChecked = True then
    B_PauseMusic
  else
  if CheckBox1.IsChecked = False then
    B_ResumeMusic;
end;

procedure TForm1.CheckBox2Change(Sender: TObject);
begin
  if CheckBox2.IsChecked = True then
    Edit14.Enabled := True
  else
  if CheckBox2.IsChecked = False then
    Edit14.Enabled := False;
end;

procedure TForm1.CheckBox3Change(Sender: TObject);
begin
  if CheckBox3.IsChecked = False then
    Edit20.Enabled := True
  else
  if CheckBox3.IsChecked = True then
    Edit20.Enabled := False;
end;

procedure TForm1.CheckBox4Change(Sender: TObject);
begin
  if CheckBox4.IsChecked = True then
    Edit26.Enabled := True
  else
  if CheckBox4.IsChecked = False then
    Edit26.Enabled := False;
end;

procedure TForm1.Edit13Change(Sender: TObject);
begin
  IniCreate(GetAnySource('..\Compression\7Zip.ini'),'Setting','cmd',Edit13.Text);
end;

procedure TForm1.Edit23Change(Sender: TObject);
begin
  IniCreate(GetAnySource('..\Compression\OSCDIMG.ini'),'Setting','cmd',Edit23.Text);
end;

procedure TForm1.Edit7Change(Sender: TObject);
begin
  IniCreate(GetAnySource('..\Compression\FreeArc.ini'),'Setting','cmd',Edit7.Text);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  B_StopMusic;
  sndPlaySound(GetAnySource('..\Resources\MC_Close.wav'),SND_NODEFAULT);

  if FileExists(GetAnySource('..\Installer\Graphics\Music.mp3')) then
    DeleteFile(GetAnySource('..\Installer\Graphics\Music.mp3'));
  if FileExists(GetAnySource('..\Installer\Game.ico')) then
    DeleteFile(GetAnySource('..\Installer\Game.ico'));

  Application.ProcessMessages;
  Sleep(150);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: int64;
  EnoughFA, Enough7za1, Enough7za2: boolean;
  WritePBFA, WritePB7za: string;
  TimeAndDateYo: TDateTime;
begin
  sndPlaySound(GetAnySource('..\Resources\MC_Open.wav'),SND_NODEFAULT);
  TimeAndDateYo:= Now;
  MenuItem3.Text:= DateToStr(TimeAndDateYo) +' | ' +TimeToStr(TimeAndDateYo);

  if FileExists(GetAnySource('..\Installer\Graphics\Background.jpg')) then
    Image3.Bitmap.LoadFromFile(GetAnySource('..\Installer\Graphics\Background.jpg'))
  else
  if not FileExists(GetAnySource('..\Installer\Graphics\Background.jpg')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file "Installer\Graphics\Background.jpg"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Installer\Info.txt')) then
    Memo7.Lines.LoadFromFile(GetAnySource('..\Installer\Info.txt'))
  else
  if not FileExists(GetAnySource('..\Installer\Info.txt')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file "Installer\Info.txt"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Installer\Resources\Icon.ico')) then
    Image2.Bitmap.LoadFromFile(GetAnySource('..\Installer\Resources\Icon.ico'))
  else
  if not FileExists(GetAnySource('..\Installer\Resources\Icon.ico')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file "Installer\Resources\Icon.ico"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
    Image1.Bitmap.LoadFromFile(GetAnySource('..\Resources\Wallpaper.jpg'))
  else
  if not FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file "Resource\Wallpaper.jpg"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Compression\FreeArc.ini')) then
  begin
    Edit7.Text:= IniRead(GetAnySource('..\Compression\FreeArc.ini'),'Setting','cmd');

    i := 1;
    EnoughFA := False;
    repeat
      if IniRead(GetAnySource('..\Compression\FreeArc.ini'),'Method',inttostr(i)) <> '' then
      begin
        WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc.ini'),'Method',inttostr(i));
        PopupBox1.Items.Add(WritePBFA);
      end
      else
        EnoughFA := True;
      i := i + 1;
    until EnoughFA = True;
    if EnoughFA = True then
    begin
      PopupBox1.ItemIndex := 0;
      PopupBox1.Items.Add('[CUSTOM]');
      Edit4.Enabled := False;
    end
    else
    if EnoughFA = False then
    begin
      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'Failed to read "Compression\FreeArc.ini"', 'Error',
        MB_ICONEXCLAMATION or MB_OK);
    end;
  end
  else
  if not FileExists(GetAnySource('..\Compression\FreeArc.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file "Compression\FreeArc.ini"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Compression\7Zip.ini')) then
  begin
    Edit13.Text:= IniRead(GetAnySource('..\Compression\7Zip.ini'),'Setting','cmd');

    i := 1;
    Enough7za1 := False;
    repeat
      if IniRead(GetAnySource('..\Compression\7Zip.ini'),'Method',inttostr(i)) <> '' then
      begin
        WritePB7za := IniRead(GetAnySource('..\Compression\7Zip.ini'),'Method',inttostr(i));
        PopupBox2.Items.Add(WritePB7za);
      end
      else
        Enough7za1 := True;
      i := i + 1;
    until Enough7za1 = True;

    i := 1;
    Enough7za2 := False;
    repeat
      if IniRead(GetAnySource('..\Compression\7Zip.ini'),'Thread',inttostr(i)) <> '' then
      begin
        WritePB7za := IniRead(GetAnySource('..\Compression\7Zip.ini'),'Thread',inttostr(i));
        PopupBox3.Items.Add(WritePB7za);
      end
      else
        Enough7za2 := True;
      i := i + 1;
    until Enough7za2 = True;
    if (Enough7za1 = True) and (Enough7za2 = True) then
    begin
      PopupBox2.ItemIndex := 0;
      PopupBox3.ItemIndex := 0;
    end
    else
    if (Enough7za1 = False) and (Enough7za2 = False) then
    begin
      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'Failed to read "Compression\7Zip.ini"', 'Error',
        MB_ICONEXCLAMATION or MB_OK);
    end;
  end
  else
  if not FileExists(GetAnySource('..\Compression\7Zip.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file "Compression\7Zip.ini"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Compression\OSCDIMG.ini')) then
  begin
    Edit23.Text := IniRead(GetAnySource('..\Compression\OSCDIMG.ini'),'Setting','cmd');
  end
  else
  if not FileExists(GetAnySource('..\Compression\OSCDIMG.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file "Compression\OSCDIMG.ini"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Resources\Music.mp3')) then
    B_PlayMusic(GetAnySource('..\Resources\Music.mp3'))
  else
  if not FileExists(GetAnySource('..\Resources\Music.mp3')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file "Resources\Music.mp3"', 'Error',
      MB_ICONERROR or MB_OK);
  end;
end;

procedure TForm1.Memo1ChangeTracking(Sender: TObject);
begin
  Sleep(10);
  Memo1.GoToTextEnd;
end;

procedure TForm1.Memo4ChangeTracking(Sender: TObject);
begin
  Sleep(10);
  Memo4.GoToTextEnd;
end;

procedure TForm1.Memo8ChangeTracking(Sender: TObject);
begin
  Sleep(10);
  Memo8.GoToTextEnd;
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  Exec(GetAnySource('..\Tools\IS5\Compil32.exe'), '', False);
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  Exec(GetAnySource('..\Tools\SafeCopy\SafeCopyFree.exe'), '', False);
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  Exec(GetAnySource('..\Tools\GraphicStudio.exe'), '', False);
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  Exec(GetAnySource('..\Resources\MC_SFX.exe'), '', True);
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
  sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  Exec(GetAnySource('..\Resources\MC_UpdateSFX.exe'), '', True);
end;

procedure TForm1.MenuItem19Click(Sender: TObject);
var
  ChangeJPGFile: string;
begin
  OpenDialog1.FileName := '';
  OpenDialog1.Title:= 'Choose your wallpaper';
  OpenDialog1.Filter:= '.jpg|*.jpg|All Files|*.*';

  OpenDialog1.Execute;
  ChangeJPGFile := OpenDialog1.FileName;

  if ChangeJPGFile = '' then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Failed to change wallpaper.', 'Error',
      MB_ICONEXCLAMATION or MB_OK);
  end
  else
  if ChangeJPGFile <> '' then
  begin
    Image1.Bitmap.LoadFromFile(ChangeJPGFile);
    CopyFile(PChar(ChangeJPGFile), GetAnySource('..\Resources\Wallpaper.jpg'),
      False);
  end;
end;

procedure TForm1.MenuItem20Click(Sender: TObject);
var
  ChangeMP3File: string;
begin
  OpenDialog1.FileName := '';
  OpenDialog1.Title:= 'Choose your music';
  OpenDialog1.Filter:= '.mp3|*.mp3|All Files|*.*';

  OpenDialog1.Execute;
  ChangeMP3File := OpenDialog1.FileName;

  if ChangeMP3File = '' then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Failed to change music.', 'Error',
      MB_ICONEXCLAMATION or MB_OK);
  end
  else
  if ChangeMP3File <> '' then
  begin
    B_StopMusic;
    B_PlayMusic(ChangeMP3File);
    CopyFile(PChar(ChangeMP3File), GetAnySource('..\Resources\Music.mp3'),
      False);
  end;
end;

procedure TForm1.MenuItem21Click(Sender: TObject);
begin
  Exec(GetAnySource('..\Bin\SFXMaker.exe'), '', False);
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  Exec(GetAnySource('..\Tools\AllDup\AllDupPortable.exe'), '', False);
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  Exec(GetAnySource('..\Tools\DirectorySlicer\DirectorySclicer.exe'),'',False);
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  Exec(GetAnySource('..\Tools\GFS\GFS.exe'),'',False);
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  Exec(GetAnySource('..\Tools\InnoSProtect\InnoSProtect.exe'),'',False);
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  Exec(GetAnySource('..\Tools\InstallerCreator\Bin\InstallerCreator.exe'),'',False);
end;

procedure TForm1.PopupBox1Change(Sender: TObject);
var
  WritePBFA: string;
begin
  if PopupBox1.Text = '[CUSTOM]' then
  begin
    Edit4.Text := 'msc+static2+lzma';
    Edit4.Enabled := True;
  end
  else
  if PopupBox1.Text <> '' then
  begin
    WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc\arc.ini'),
      'Compression methods', PopupBox1.Text);
    Edit4.Text := WritePBFA;
    Edit4.Enabled := False;
  end;
end;

procedure TForm1.SearchEditButton1Click(Sender: TObject);
begin
  Edit1.Text := SelDir;
end;

procedure TForm1.SearchEditButton2Click(Sender: TObject);
begin
  Edit2.Text := SelDir;
end;

procedure TForm1.SearchEditButton3Click(Sender: TObject);
begin
  Edit8.Text := SelDir;
end;

procedure TForm1.SearchEditButton4Click(Sender: TObject);
begin
  Edit9.Text := SelDir;
end;

procedure TForm1.SearchEditButton5Click(Sender: TObject);
begin
  Edit20.Text := SelDir;
end;

procedure TForm1.SearchEditButton6Click(Sender: TObject);
var
  MusicInstaller: string;
begin
  OpenDialog1.Title := 'Choose your music installer.';
  OpenDialog1.Filter:= '.mp3|*.mp3|All files|*.*';
  OpenDialog1.Execute;

  MusicInstaller := OpenDialog1.FileName;
  Edit29.Text := MusicInstaller;
  if FileExists(MusicInstaller) then
  begin
    CopyFile(PChar(MusicInstaller), GetAnySource('..\Installer\Graphics\Music.mp3'), false);
  end
  else
  if not FileExists(MusicInstaller) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Failed to loaded music installer.', 'Error',
      MB_ICONEXCLAMATION or MB_OK);
  end;
end;

procedure TForm1.SearchEditButton7Click(Sender: TObject);
begin
  Edit21.Text := SelDir;
end;

procedure TForm1.SearchEditButton8Click(Sender: TObject);
begin
  Edit22.Text := SelDir;
end;

procedure TForm1.SearchEditButton9Click(Sender: TObject);
begin
  Edit30.Text := SelDir;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  TimeAndDateYo: TDateTime;
begin
  TimeAndDateYo:= Now;
  MenuItem3.Text:= DateToStr(TimeAndDateYo) +' | ' +TimeToStr(TimeAndDateYo);
end;

end.
