unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Menus, FMX.TabControl,
  FMX.Objects, FMX.Edit, FMX.EditBox, FMX.NumberBox, FMX.ExtCtrls,
  FMX.ScrollBox, FMX.Memo, Winapi.Messages, Winapi.Windows, FMX.Platform.Win,
  Math, System.IOUtils, MMSystem;

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
    TabControl4: TTabControl;
    Button7: TButton;
    TabItem8: TTabItem;
    GroupBox11: TGroupBox;
    Label10: TLabel;
    Edit15: TEdit;
    ClearEditButton13: TClearEditButton;
    Label11: TLabel;
    Edit16: TEdit;
    ClearEditButton14: TClearEditButton;
    Label12: TLabel;
    Edit17: TEdit;
    ClearEditButton15: TClearEditButton;
    Label13: TLabel;
    NumberBox2: TNumberBox;
    GroupBox12: TGroupBox;
    Label14: TLabel;
    PopupBox4: TPopupBox;
    Label15: TLabel;
    PopupBox5: TPopupBox;
    Label16: TLabel;
    PopupBox6: TPopupBox;
    GroupBox13: TGroupBox;
    ImageControl1: TImageControl;
    Button8: TButton;
    GroupBox14: TGroupBox;
    Label17: TLabel;
    Edit18: TEdit;
    SearchEditButton5: TSearchEditButton;
    ClearEditButton16: TClearEditButton;
    CheckBox3: TCheckBox;
    Button9: TButton;
    TabItem9: TTabItem;
    GroupBox15: TGroupBox;
    Label18: TLabel;
    NumberBox3: TNumberBox;
    Label19: TLabel;
    NumberBox4: TNumberBox;
    Label20: TLabel;
    NumberBox5: TNumberBox;
    GroupBox16: TGroupBox;
    Label21: TLabel;
    NumberBox6: TNumberBox;
    Label22: TLabel;
    NumberBox7: TNumberBox;
    Label23: TLabel;
    NumberBox8: TNumberBox;
    Button10: TButton;
    TabItem10: TTabItem;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Memo5: TMemo;
    Button11: TButton;
    Button12: TButton;
    TabItem11: TTabItem;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Memo6: TMemo;
    TabItem12: TTabItem;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Memo7: TMemo;
    Button13: TButton;
    TabItem13: TTabItem;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Button14: TButton;
    Label36: TLabel;
    Label37: TLabel;
    Button15: TButton;
    TabItem14: TTabItem;
    GroupBox17: TGroupBox;
    ImageControl2: TImageControl;
    Button16: TButton;
    GroupBox18: TGroupBox;
    ImageControl3: TImageControl;
    Button17: TButton;
    GroupBox19: TGroupBox;
    Edit19: TEdit;
    SearchEditButton6: TSearchEditButton;
    ClearEditButton17: TClearEditButton;
    GroupBox20: TGroupBox;
    Edit20: TEdit;
    ClearEditButton18: TClearEditButton;
    Button18: TButton;
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
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    GroupBox24: TGroupBox;
    CheckBox4: TCheckBox;
    Edit26: TEdit;
    ClearEditButton23: TClearEditButton;
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
    procedure Button7Click(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure SearchEditButton5Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure SearchEditButton6Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Edit23Change(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure SearchEditButton7Click(Sender: TObject);
    procedure SearchEditButton8Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure Memo4ChangeTracking(Sender: TObject);
    procedure Memo8ChangeTracking(Sender: TObject);
    procedure Memo1ChangeTracking(Sender: TObject);
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
  TabControl4.TabIndex := 3;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  TabControl4.TabIndex := 4;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  TabControl4.TabIndex := 5;
end;

procedure TForm1.Button14Click(Sender: TObject);
var
  ReadError: HWND;
begin
  if FileExists(GetAnySource('..\Resources\ISD_List_Manual.txt')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(ReadError,'The resource still exists. Would create a new another one for you.',
      'Resource Exist', MB_ICONINFORMATION);

    DeleteFile(GetAnySource('..\Resources\ISD_List_Manual.txt'));

    Application.ProcessMessages;
    Sleep(150);

    Exec(GetAnySource('..\Resources\MC_Update.exe'),'',true);
  end
  else
  if not FileExists(GetAnySource('..\Resources\ISD_List_Manual.txt')) then
    Exec(GetAnySource('..\Resources\MC_Update.exe'),'',true);
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  TabControl4.TabIndex := 6;
end;

procedure TForm1.Button16Click(Sender: TObject);
var
  ChangeWizardJPG: string;
begin
  OpenDialog1.Title:= 'Choose your installer wizard';
  OpenDialog1.Filter := '.jpg|*.jpg';

  OpenDialog1.Execute;
  ChangeWizardJPG := OpenDialog1.FileName;

  if ChangeWizardJPG <> '' then
  begin
    ImageControl2.Bitmap.LoadFromFile(ChangeWizardJPG);
    CopyFile(PChar(ChangeWizardJPG),
      GetAnySource('..\Installer\Resource\WizardImage.jpg'),false);
  end;
end;

procedure TForm1.Button17Click(Sender: TObject);
var
  ChangeWizardAbout: string;
begin
  OpenDialog1.Title:= 'Choose your about wizard';
  OpenDialog1.Filter := '.png|*.png';

  OpenDialog1.Execute;
  ChangeWizardAbout := OpenDialog1.FileName;

  if ChangeWizardAbout <> '' then
  begin
    ImageControl3.Bitmap.LoadFromFile(ChangeWizardAbout);
    CopyFile(PChar(ChangeWizardAbout),
      GetAnySource('..\Installer\Resource\Logo.png'),false);
  end;
end;

procedure TForm1.Button18Click(Sender: TObject);
var
  SizeUninstWizard: Extended;
  SizeUninstWizardResult: Int64;
  OutputSetupDir: string;
  ReadError: HWND;
begin
  OutputSetupDir:= SelDir;

  Application.ProcessMessages;
  Sleep(150);

  SizeUninstWizard := NumberBox2.Value * 1024 * 1024;
  SizeUninstWizardResult := Round(SizeUninstWizard);

  IniCreate(GetAnySource('..\Installer\Config.ini'),'Setup','Name',Edit15.Text);
  IniCreate(GetAnySource('..\Installer\Config.ini'),'Setup','Publisher',Edit16.Text);
  IniCreate(GetAnySource('..\Installer\Config.ini'),'Setup','Version',Edit17.Text);
  IniCreate(GetAnySource('..\Installer\Config.ini'),'Setup','Size',NumberBox2.Text);
  IniCreate(GetAnySource('..\Installer\Config.ini'),'Setup','SizeUninst',IntToStr(SizeUninstWizardResult));

  IniCreate(GetAnySource('..\Installer\Config.ini'),'Option','CompressionType',PopupBox4.Text);
  IniCreate(GetAnySource('..\Installer\Config.ini'),'Option','CompressionSolid',PopupBox5.Text);
  IniCreate(GetAnySource('..\Installer\Config.ini'),'Option','CompressionThreads',PopupBox6.Text);

  if CheckBox3.IsChecked = True then
  begin
    IniCreate(GetAnySource('..\Installer\Config.ini'),'Option','DiskSpan','yes');
    IniCreate(GetAnySource('..\Installer\Config.ini'),'Game','Source',Edit18.Text);
  end
  else
  if CheckBox3.IsChecked = False then
    IniCreate(GetAnySource('..\Installer\Config.ini'),'Option','DiskSpan','no');

  IniCreate(GetAnySource('..\Installer\Config.ini'),'System','Processor',NumberBox3.Text);
  IniCreate(GetAnySource('..\Installer\Config.ini'),'System','VideoRAM',NumberBox4.Text);
  IniCreate(GetAnySource('..\Installer\Config.ini'),'System','RAM',NumberBox5.Text);

  IniCreate(GetAnySource('..\Installer\Config.ini'),'Windows','VersionMajor',NumberBox6.Text);
  IniCreate(GetAnySource('..\Installer\Config.ini'),'Windows','VersionMinor',NumberBox7.Text);
  IniCreate(GetAnySource('..\Installer\Config.ini'),'Windows','ServicePack',NumberBox8.Text);

  Memo5.Lines.SaveToFile(GetAnySource('..\Installer\Shortcut.txt'));
  Memo6.Lines.SaveToFile(GetAnySource('..\Installer\Archive.txt'));
  Memo7.Lines.SaveToFile(GetAnySource('..\Installer\Redist.txt'));

  IniCreate(GetAnySource('..\Installer\Config.ini'),'Additional','OutputDir',OutputSetupDir);
  IniCreate(GetAnySource('..\Installer\Config.ini'),'Additional','OutputExec',Edit20.Text);

  Application.ProcessMessages;
  Sleep(150);

  Exec(GetAnySource('..\Installer\Compiler.exe'),'',True);
  CopyFile(GetAnySource('..\Resources\Setup.db'),PChar(OutputSetupDir +'\Setup.db'),false);

  Application.ProcessMessages;
  Sleep(2000);

  DeleteFile(GetAnySource('..\Resources\Setup.db'));
  DeleteFile(GetAnySource('..\Installer\Redist.txt'));
  DeleteFile(GetAnySource('..\Installer\Archive.txt'));
  DeleteFile(GetAnySource('..\Installer\Shortcut.txt'));
  DeleteFile(GetAnySource('..\Installer\Config.ini'));
  DeleteFile(GetAnySource('..\Installer\Resource\Music.mp3'));
  DeleteFile(GetAnySource('..\Installer\Game.ico'));
  Edit19.Text := '';

  Application.ProcessMessages;
  Sleep(150);

  sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  MessageBox(ReadError,'Your compression was done.', 'Finished', MB_ICONINFORMATION);

  TabControl4.TabIndex := 0;
end;

procedure TForm1.Button19Click(Sender: TObject);
var
  IMGCommand, IMGSource, IMGOutput, IMGSolidFile, IMGResult: string;
  IMG_Handle: HWND;
  IMG_Error: Boolean;
  ReadError: HWND;
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
      MessageBox(ReadError,'Your ISO was done.', 'Finished', MB_ICONINFORMATION);
      Edit25.Text := 'Finished.';
    end
    else
    if not FileExists(Edit22.Text +'\' +IMGSolidFile) then
    begin
      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(ReadError,'The processing was done, But the file didnt exist.', 'Failed', MB_ICONEXCLAMATION);
      Edit25.Text := 'Process done. ISO file missing.';
    end;
  end
  else
  if IMG_Error = True then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(ReadError,'Failed to make ISO file.', 'Failed', MB_ICONEXCLAMATION);
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
  ReadError: HWND;
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
  Memo2.Lines.Add('    Method: ' + Edit4.Text);

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
      MessageBox(ReadError,'Your compression was done.', 'Finished', MB_ICONINFORMATION);
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
      MessageBox(ReadError,'Your compression was not done.', 'Failed', MB_ICONEXCLAMATION);
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
    MessageBox(ReadError,'Your compression was not done.', 'Failed', MB_ICONEXCLAMATION);
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
  Memo5.Lines.Clear;
  Memo5.Lines.Add('[ShortcutFile1]');
  Memo5.Lines.Add('Name=YourGame');
  Memo5.Lines.Add('File={app}\Game.exe');
  Memo5.Lines.Add('Icon={app}\Game.exe');
  Memo5.Lines.Add('Working={app}');
  Memo5.Lines.Add('Create=Both or Desktop or Startmenu');
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  Memo6.Lines.Clear;
  Memo6.Lines.Add('[ArchiveFile1]');
  Memo6.Lines.Add('Type=Freearc or 7Zip or Rar');
  Memo6.Lines.Add('Source={src}\YourFile.arc');
  Memo6.Lines.Add('Output={app}');
  Memo6.Lines.Add('Disk=1');
  Memo6.Lines.Add('Password=YourPass');
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
  Memo7.Lines.Clear;
  Memo7.Lines.Add('[RedistInstall1]');
  Memo7.Lines.Add('Name=YourComponent');
  Memo7.Lines.Add('Exec={src}\Component.Exe');
  Memo7.Lines.Add('Params=');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TabControl2.TabIndex := 0;
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
  ReadError: HWND;
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

  Command7z := 'a -bb3 -r0 ';
  Thread7z := '-mmt' +PopupBox3.Text +' ';
  Method7z := '-m' +PopupBox2.Text +' ';
  Password7z := '-p' +Edit10.Text +' ';
  Archive7z := '"' +Edit9.Text +'\' +Edit11.Text +'" ';
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
      MessageBox(ReadError,'Your compression was done.', 'Finished', MB_ICONINFORMATION);
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
      MessageBox(ReadError,'Your compression was not done.', 'Failed', MB_ICONEXCLAMATION);
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
    MessageBox(ReadError,'Your compression was not done.', 'Failed', MB_ICONEXCLAMATION);
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
  ChangeIMLogo: string;
begin
  OpenDialog1.Title := 'Locate your new Icon';
  OpenDialog1.Filter := '.ico|*.ico';

  OpenDialog1.Execute;
  ChangeIMLogo := OpenDialog1.FileName;

  if ChangeIMLogo <> '' then
  begin
    ImageControl1.Bitmap.LoadFromFile(ChangeIMLogo);
    CopyFile(PChar(ChangeIMLogo),GetAnySource('..\Installer\Game.ico'),false);
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
  if CheckBox3.IsChecked = True then
    Edit18.Enabled := True
  else
  if CheckBox3.IsChecked = False then
    Edit18.Enabled := False;
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
  Application.ProcessMessages;
  Sleep(150);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: int64;
  EnoughFA, Enough7za1, Enough7za2: boolean;
  WritePBFA, WritePB7za: string;
  TimeAndDateYo: TDateTime;
  ReadError: HWND;
begin
  sndPlaySound(GetAnySource('..\Resources\MC_Open.wav'),SND_NODEFAULT);
  TimeAndDateYo:= Now;
  MenuItem3.Text:= DateToStr(TimeAndDateYo) +' | ' +TimeToStr(TimeAndDateYo);

  if FileExists(GetAnySource('..\Installer\Resource\Logo.png')) then
    ImageControl3.Bitmap.LoadFromFile(GetAnySource('..\Installer\Resource\Logo.png'))
  else
  if not FileExists(GetAnySource('..\Installer\Resource\Logo.png')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(ReadError,'Missing file "Installer\Resource\Logo.png"', 'Error', MB_ICONERROR);
  end;

  if FileExists(GetAnySource('..\Installer\Resource\WizardImage.jpg')) then
    ImageControl2.Bitmap.LoadFromFile(GetAnySource('..\Installer\Resource\WizardImage.jpg'))
  else
  if not FileExists(GetAnySource('..\Installer\Resource\WizardImage.jpg')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(ReadError,'Missing file "Installer\Resource\WizardImage.jpg"', 'Error', MB_ICONERROR);
  end;

  if FileExists(GetAnySource('..\Installer\Resource\Icon.ico')) then
    ImageControl1.Bitmap.LoadFromFile(GetAnySource('..\Installer\Resource\Icon.ico'))
  else
  if not FileExists(GetAnySource('..\Installer\Resource\Icon.ico')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(ReadError,'Missing file "Installer\Resource\Icon.ico"', 'Error', MB_ICONERROR);
  end;

  if FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
    Image1.Bitmap.LoadFromFile(GetAnySource('..\Resources\Wallpaper.jpg'))
  else
  if not FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(ReadError,'Missing file "Resource\Wallpaper.jpg"', 'Error', MB_ICONERROR);
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
      MessageBox(ReadError,'Failed to read "Compression\FreeArc.ini"', 'Error', MB_ICONEXCLAMATION);
    end;
  end
  else
  if not FileExists(GetAnySource('..\Compression\FreeArc.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(ReadError,'Missing file "Compression\FreeArc.ini"', 'Error', MB_ICONERROR);
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
      MessageBox(ReadError,'Failed to read "Compression\7Zip.ini"', 'Error', MB_ICONEXCLAMATION);
    end;
  end
  else
  if not FileExists(GetAnySource('..\Compression\7Zip.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(ReadError,'Missing file "Compression\7Zip.ini"', 'Error', MB_ICONERROR);
  end;

  if FileExists(GetAnySource('..\Compression\OSCDIMG.ini')) then
  begin
    Edit23.Text := IniRead(GetAnySource('..\Compression\OSCDIMG.ini'),'Setting','cmd');
  end
  else
  if not FileExists(GetAnySource('..\Compression\OSCDIMG.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(ReadError,'Missing file "Compression\OSCDIMG.ini"', 'Error', MB_ICONERROR);
  end;

  if FileExists(GetAnySource('..\Resources\Music.mp3')) then
    B_PlayMusic(GetAnySource('..\Resources\Music.mp3'))
  else
  if not FileExists(GetAnySource('..\Resources\Music.mp3')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(ReadError,'Missing file "Resources\Music.mp3"', 'Error', MB_ICONERROR);
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
  ReadError: HWND;
begin
  OpenDialog1.FileName := '';
  OpenDialog1.Title:= 'Choose your wallpaper';
  OpenDialog1.Filter:= '.jpg|*.jpg|All Files|*.*';

  OpenDialog1.Execute;
  ChangeJPGFile := OpenDialog1.FileName;

  if ChangeJPGFile = '' then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    ShowMessage('Failed to change wallpaper.');
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
  ReadError: HWND;
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
    ShowMessage('Failed to change music.');
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
  Edit18.Text := SelDir;
end;

procedure TForm1.SearchEditButton6Click(Sender: TObject);
var
  ChangeMp3FileInstaller: string;
begin
  OpenDialog1.Title := 'Choose your music for installer';
  OpenDialog1.Filter := '.mp3|*.mp3';

  OpenDialog1.Execute;
  ChangeMp3FileInstaller := OpenDialog1.FileName;
  Edit19.Text := ChangeMp3FileInstaller;

  if ChangeMp3FileInstaller <> '' then
    CopyFile(PChar(ChangeMp3FileInstaller),
      GetAnySource('..\Installer\Resource\Music.mp3'),false);
end;

procedure TForm1.SearchEditButton7Click(Sender: TObject);
begin
  Edit21.Text := SelDir;
end;

procedure TForm1.SearchEditButton8Click(Sender: TObject);
begin
  Edit22.Text := SelDir;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  TimeAndDateYo: TDateTime;
begin
  TimeAndDateYo:= Now;
  MenuItem3.Text:= DateToStr(TimeAndDateYo) +' | ' +TimeToStr(TimeAndDateYo);
end;

end.
