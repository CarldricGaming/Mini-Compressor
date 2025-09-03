unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Menus, FMX.TabControl,
  FMX.Objects, FMX.Edit, FMX.EditBox, FMX.NumberBox, FMX.ExtCtrls,
  FMX.ScrollBox, FMX.Memo, Winapi.Messages, Winapi.Windows, FMX.Platform.Win,
  Math, System.IOUtils, MMSystem, FMX.SpinBox, System.Win.Registry,
  FMX.Memo.Types, FMX.Layouts, psAPI, FMX.Ani, System.Rtti, FMX.Grid.Style,
  FMX.Grid;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    StyleBook1: TStyleBook;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    StyleBook2: TStyleBook;
    ArcTime1: TTimer;
    TabControl9: TTabControl;
    TabItem25: TTabItem;
    TabItem26: TTabItem;
    Image1: TImage;
    MenuBar1: TMenuBar;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    CheckBox1: TCheckBox;
    CheckBox8: TCheckBox;
    MenuBar2: TMenuBar;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem3: TMenuItem;
    TabControl8: TTabControl;
    TabItem23: TTabItem;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabControl6: TTabControl;
    TabItem19: TTabItem;
    TabControl2: TTabControl;
    TabItem2: TTabItem;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    SearchEditButton1: TSearchEditButton;
    ClearEditButton1: TClearEditButton;
    Label2: TLabel;
    Edit2: TEdit;
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
    GroupBox5: TGroupBox;
    Edit7: TEdit;
    ClearEditButton6: TClearEditButton;
    GroupBox10: TGroupBox;
    CheckBox2: TCheckBox;
    Edit14: TEdit;
    ClearEditButton12: TClearEditButton;
    Button36: TButton;
    TabItem3: TTabItem;
    Edit6: TEdit;
    Memo1: TMemo;
    Button2: TButton;
    Memo2: TMemo;
    Button3: TButton;
    Edit38: TEdit;
    Edit39: TEdit;
    Panel7: TPanel;
    Arc1: TArc;
    TabItem20: TTabItem;
    TabControl7: TTabControl;
    TabItem21: TTabItem;
    GroupBox26: TGroupBox;
    Label27: TLabel;
    Edit32: TEdit;
    SearchEditButton10: TSearchEditButton;
    ClearEditButton29: TClearEditButton;
    Label28: TLabel;
    Edit33: TEdit;
    SearchEditButton11: TSearchEditButton;
    ClearEditButton30: TClearEditButton;
    GroupBox27: TGroupBox;
    Label29: TLabel;
    SpinBox6: TSpinBox;
    Label31: TLabel;
    SpinBox7: TSpinBox;
    GroupBox28: TGroupBox;
    Edit35: TEdit;
    ClearEditButton32: TClearEditButton;
    Button31: TButton;
    Memo11: TMemo;
    GroupBox29: TGroupBox;
    Edit37: TEdit;
    ClearEditButton33: TClearEditButton;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Edit34: TEdit;
    Button37: TButton;
    TabItem22: TTabItem;
    Edit36: TEdit;
    Memo12: TMemo;
    Button32: TButton;
    Button33: TButton;
    Panel8: TPanel;
    Arc2: TArc;
    Edit40: TEdit;
    Edit41: TEdit;
    TabItem4: TTabItem;
    TabControl3: TTabControl;
    TabItem5: TTabItem;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Edit8: TEdit;
    SearchEditButton3: TSearchEditButton;
    ClearEditButton7: TClearEditButton;
    Label6: TLabel;
    Edit9: TEdit;
    SearchEditButton4: TSearchEditButton;
    ClearEditButton8: TClearEditButton;
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
    GroupBox9: TGroupBox;
    Edit13: TEdit;
    ClearEditButton11: TClearEditButton;
    GroupBox24: TGroupBox;
    CheckBox4: TCheckBox;
    Edit26: TEdit;
    ClearEditButton23: TClearEditButton;
    Button38: TButton;
    TabItem6: TTabItem;
    Edit12: TEdit;
    Memo3: TMemo;
    Memo4: TMemo;
    Button5: TButton;
    Button6: TButton;
    Panel9: TPanel;
    Arc3: TArc;
    Edit42: TEdit;
    Edit43: TEdit;
    TabItem15: TTabItem;
    TabControl5: TTabControl;
    TabItem16: TTabItem;
    GroupBox21: TGroupBox;
    Label38: TLabel;
    Edit21: TEdit;
    ClearEditButton19: TClearEditButton;
    SearchEditButton7: TSearchEditButton;
    Label39: TLabel;
    Edit22: TEdit;
    ClearEditButton20: TClearEditButton;
    SearchEditButton8: TSearchEditButton;
    GroupBox22: TGroupBox;
    Edit23: TEdit;
    ClearEditButton21: TClearEditButton;
    GroupBox23: TGroupBox;
    Edit24: TEdit;
    ClearEditButton22: TClearEditButton;
    Button19: TButton;
    TabItem17: TTabItem;
    Edit25: TEdit;
    Memo8: TMemo;
    Button20: TButton;
    Button21: TButton;
    TabItem7: TTabItem;
    TabControl4: TTabControl;
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
    GroupBox18: TGroupBox;
    Edit28: TEdit;
    ClearEditButton25: TClearEditButton;
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
    TabItem10: TTabItem;
    Memo5: TMemo;
    Button11: TButton;
    Button12: TButton;
    NumberBox5: TNumberBox;
    TabItem11: TTabItem;
    Memo6: TMemo;
    Button14: TButton;
    Button15: TButton;
    NumberBox6: TNumberBox;
    TabItem12: TTabItem;
    Memo7: TMemo;
    Button17: TButton;
    TabItem13: TTabItem;
    Button22: TButton;
    Button23: TButton;
    Memo9: TMemo;
    NumberBox7: TNumberBox;
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
    PopupBox5: TPopupBox;
    Label30: TLabel;
    TabItem18: TTabItem;
    Button28: TButton;
    Memo10: TMemo;
    Button7: TButton;
    Button9: TButton;
    Button10: TButton;
    Button13: TButton;
    Button16: TButton;
    Button18: TButton;
    Button24: TButton;
    Button26: TButton;
    Button27: TButton;
    Panel4: TPanel;
    Button29: TButton;
    Button30: TButton;
    Panel6: TPanel;
    Panel5: TPanel;
    Image4: TImage;
    GroupBox30: TGroupBox;
    PopupBox4: TPopupBox;
    Button34: TButton;
    Button35: TButton;
    Layout1: TLayout;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    FloatAnimation3: TFloatAnimation;
    SkinPic: TTimer;
    TabItem24: TTabItem;
    GroupBox31: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Edit44: TEdit;
    Edit45: TEdit;
    SearchEditButton12: TSearchEditButton;
    ClearEditButton31: TClearEditButton;
    SearchEditButton13: TSearchEditButton;
    ClearEditButton34: TClearEditButton;
    GroupBox32: TGroupBox;
    Label34: TLabel;
    PopupBox6: TPopupBox;
    PopupBox7: TPopupBox;
    NumberBox8: TNumberBox;
    ProgressBar1: TProgressBar;
    Button39: TButton;
    Memo13: TMemo;
    Button40: TButton;
    GroupBox33: TGroupBox;
    Edit46: TEdit;
    CheckBox9: TCheckBox;
    ProgressBar2: TProgressBar;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    MenuItem30: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem31: TMenuItem;
    Button41: TButton;
    MenuItem13: TMenuItem;
    CheckBox12: TCheckBox;
    Button42: TButton;
    CheckBox13: TCheckBox;
    Button43: TButton;
    CheckBox14: TCheckBox;
    Button44: TButton;
    Image5: TImage;
    Image6: TImage;
    GroupBox34: TGroupBox;
    CheckBox15: TCheckBox;
    PopupBox8: TPopupBox;
    Edit47: TEdit;
    ClearEditButton35: TClearEditButton;
    GroupBox35: TGroupBox;
    CheckBox16: TCheckBox;
    PopupBox9: TPopupBox;
    Edit48: TEdit;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
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
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Memo12ChangeTracking(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure SearchEditButton10Click(Sender: TObject);
    procedure SearchEditButton11Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure CheckBox7Change(Sender: TObject);
    procedure MenuItem28Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure MenuItem29Click(Sender: TObject);
    procedure PopupBox4Change(Sender: TObject);
    procedure ArcTime1Timer(Sender: TObject);
    procedure CheckBox8Change(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure SkinPicTimer(Sender: TObject);
    procedure SearchEditButton12Click(Sender: TObject);
    procedure SearchEditButton13Click(Sender: TObject);
    procedure PopupBox6Change(Sender: TObject);
    procedure Memo13ChangeTracking(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure MenuItem30Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure CheckBox12Change(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure CheckBox13Change(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure CheckBox14Change(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure CheckBox15Change(Sender: TObject);
    procedure PopupBox8Change(Sender: TObject);
    procedure CheckBox16Change(Sender: TObject);
    procedure PopupBox9Change(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure Memo1ChangeTracking(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      BassHandle, BassMusicPlayer: HWND;
      BassMusicFile: PChar;
      BassVolume: Single;

    function GenHashMultiCallback(FileName: WideString; FileSize: extended;
      FileProgress, TotalProgress, TotalFiles, FileCounted, StatusCode: Integer): Boolean;
    function ChkHashMultiCallback(FileName: WideString; FileSize: extended;
      FileProgress, TotalProgress, TotalFiles, FileCounted, StatusCode: Integer): Boolean;
  end;

var
  Form1: TForm1;

implementation

uses
  ShellApi,
  FMX.ApplicationHelper,
  uTotalCpuUsagePct,
  MC_DLL,
  CmdOut,
  XHashNet,
  bass,
  Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.fmx}

var
  CancelAll: Boolean    = False;
  PauseAll: Boolean     = False;
  Ok, Bad, Missing: Integer;
  HashErrCode: Integer  = H_ERROR_GENERAL;
var
  FA_IgnoreProtectRecover: Boolean;
  FA_IgnoreProtectRecover2: Boolean;

function ProcessMemory: longint;
var
  pmc: PPROCESS_MEMORY_COUNTERS;
  cb: Integer;
begin
  // Get the used memory for the current process
  cb := SizeOf(TProcessMemoryCounters);
  GetMem(pmc, cb);
  pmc^.cb := cb;
  if GetProcessMemoryInfo(GetCurrentProcess(), pmc, cb) then
     Result:= Longint(pmc^.WorkingSetSize);

  FreeMem(pmc);
end;

procedure UpdateLine(const ACaption, AText: WideString);
begin
  Form1.Memo1.Lines.Clear;
  Form1.Edit6.Text := ACaption;
  Form1.Memo1.Lines.Add(AText);
end;

procedure UpdateLine2(const ACaption, AText: WideString);
begin
  Form1.Memo4.Lines.Clear;
  Form1.Edit12.Text := ACaption;
  Form1.Memo4.Lines.Add(AText);
end;

procedure UpdateLine3(const ACaption, AText: WideString);
begin
  Form1.Memo8.Lines.Clear;
  Form1.Edit25.Text := ACaption;
  Form1.Memo8.Lines.Add(AText);
end;

procedure UpdateLine4(const ACaption, AText: WideString);
begin
  Form1.Memo12.Lines.Clear;
  Form1.Edit36.Text := ACaption;
  Form1.Memo12.Lines.Add(AText);
end;

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

function GetFileSize(p_sFilePath : string) : Int64;
var
  oFile : file of Byte;
begin
  Result := -1;
  AssignFile(oFile, p_sFilePath);
  try
    Reset(oFile);
    Result := FileSize(oFile);
  finally
    CloseFile(oFile);
  end;
end;

//========== _+_ ==========
//========== _+_ ==========
//========== _+_ ==========

function TForm1.GenHashMultiCallback(FileName: WideString; FileSize: extended;
  FileProgress, TotalProgress, TotalFiles, FileCounted,
  StatusCode: Integer): Boolean;
begin
  ProgressBar1.Value  := FileProgress;
  ProgressBar2.Value  := TotalProgress;

  case StatusCode of
    H_FILE_HASHING_DONE:
      Memo13.Lines.Add(FileName + '  ... Done!');

    -1,-4,-5,-6,-7,-8,-9,-10,-12,-13:
      Memo13.Lines.Add('>>> Error code:  ' + IntToStr(StatusCode));
  end;

  Edit46.Text := 'Files:' +#9#9+
    Format(VC_GEN_STATUS_MSG, [FileCounted, TotalFiles]);

  Application.ProcessMessages;
  Result := CancelAll;
end;

function TForm1.ChkHashMultiCallback(FileName: WideString; FileSize: extended;
  FileProgress, TotalProgress, TotalFiles, FileCounted,
  StatusCode: Integer): Boolean;
begin
  ProgressBar1.Value  := FileProgress;
  ProgressBar2.Value  := TotalProgress;

  case StatusCode of
    H_HASH_OK:
      begin
        Inc(ok);
        Memo13.Lines.Add(FileName + '  ... Ok!');
      end;

    H_BAD_FILE_HASH:
      begin
        Inc(bad);
        Memo13.Lines.Add(FileName + '  ... Bad!');
      end;

    H_FILE_NOT_FOUND:
      begin
        Inc(missing);
        Memo13.Lines.Add(FileName + '  ... Missing!');
      end;

    -1,-4,-5,-6,-7,-8,-9,-10,-11,-15:
      Memo13.Lines.Add('>>> Error code:  ' + IntToStr(StatusCode));
  end;

  Edit46.Text := 'Files:' +#9#9+
    Format(VC_STATUS_MSG, [FileCounted, TotalFiles, ok, bad, missing]);

  Application.ProcessMessages;
  Result := CancelAll;
end;

procedure TForm1.ArcTime1Timer(Sender: TObject);
var
  TotalCPUusagePercentage: Double;
begin
  TotalCPUusagePercentage := GetTotalCpuUsagePct();
  Edit38.Text := 'Memory: ' + ConvertBytes(ProcessMemory);
  Edit39.Text := 'CPU: ' + IntToStr(Round(TotalCPUusagePercentage)) + '%';
  Arc1.EndAngle := Round(TotalCPUusagePercentage * 3.5);

  Edit40.Text := 'Memory: ' + ConvertBytes(ProcessMemory);
  Edit41.Text := 'CPU: ' + IntToStr(Round(TotalCPUusagePercentage)) + '%';
  Arc2.EndAngle := Round(TotalCPUusagePercentage * 3.5);

  Edit42.Text := 'Memory: ' + ConvertBytes(ProcessMemory);
  Edit43.Text := 'CPU: ' + IntToStr(Round(TotalCPUusagePercentage)) + '%';
  Arc3.EndAngle := Round(TotalCPUusagePercentage * 3.5);
end;

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
  InfoFileChange:= '';
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
  Edit25.Visible := True;
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

  IMG_Handle := FmxHandleToHWND(Handle);
  IMG_Error := False;
  ISCmdInit(IMG_Handle);

  if ISCmdRun(GetAnySource('..\Compression\OSCDIMG\oscdimg.exe'), IMGResult,
    '', @UpdateLine3) then
    IMG_Error:= False else IMG_Error:= True;

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
    else if not FileExists(Edit22.Text +'\' +IMGSolidFile) then
    begin
      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'The processing was done, But the file didnt exist.', 'Failed',
        MB_ICONEXCLAMATION or MB_OK);
      Edit25.Text := 'Process done. ISO file missing.';
    end;
  end
  else if IMG_Error = True then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Failed to make ISO file.', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
    Edit25.Text := 'Failed.';
  end;

  Button20.Visible:= True;
  Button21.Visible:= True;
  Edit25.Visible := False;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  FA_Command, FA_Memory, FA_Password, FA_Method, FA_Source, FA_Output, FA_Out2,
  FA_Archive, FA_Temp, FA_Temp2, FA_Result: string;

  FA_Handle: HWND;
  FA_Error: boolean;
  FA_Exec: PChar;
  FA_Solo: TMemo;
  DateAndTimeZ: TDateTime;
  SFXOutput, SFXCommand: string;

  FA_Location: boolean;
  UNARC_Protect: boolean;
begin
  TabControl2.TabIndex := 1;
  Button2.Visible:= False;
  Button3.Visible:= False;
  Edit6.Visible := True;
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
  Edit6.Text:= 'Compressing...';
  Edit38.Visible := True;
  Edit39.Visible := True;
  ArcTime1.Enabled := True;
  Edit38.Text := '';
  Edit39.Text := '';
  CheckBox12.Visible:= True;
  Button42.Visible:= True;

  case CheckBox9.IsChecked of
    True:
    begin
      with TForm5.Create(nil) do
      try
        FA_SingleTime.Enabled:= True;
        ShowModal;
      finally
        Free;
      end;
    end;
  end;

  case CheckBox2.IsChecked of
    True:
      SFXOutput := Edit2.Text;
    False:
      SFXOutput := '';
  end;

  if (Edit1.Text <> '') or (Edit2.Text <> '') then
    FA_Location:= True else FA_Location:= False;

  Application.ProcessMessages;
  Sleep(150);

  FA_Command := Edit7.Text +' ' +Edit47.Text +' ';
  FA_Memory := '-lc' +NumberBox1.Text +' -ld' +NumberBox1.Text +' ';
  FA_Password := '-hp -p"' +Edit3.Text +'" ';

  Application.ProcessMessages;
  Sleep(150);

  if PopupBox1.Text = '[CUSTOM]' then
    FA_Method := '-m' +Edit4.Text +' '
  else if PopupBox1.Text <> '' then
    FA_Method := '-m' +PopupBox1.Text +' ';

  FA_Archive := '' +Edit5.Text;
  FA_Temp := GetAnySource('\arc\temp.arc');
  FA_Temp2 := '"' +FA_Temp +'" ';
  FA_Output := '"' +Edit2.Text +'\' +FA_Archive +'" ';
  FA_Out2 := '' +Edit2.Text +'\' +FA_Archive +'';
  FA_Source := '"' +Edit1.Text +'\*"';

  Application.ProcessMessages;
  Sleep(150);

  if Edit3.Text <> '' then
    FA_Result := '' +FA_Command +FA_Memory +FA_Password +FA_Method
    +FA_Temp2 +FA_Source
  else if Edit3.Text = '' then
    FA_Result := '' +FA_Command +FA_Memory +FA_Method +FA_Temp2 +FA_Source;

  Application.ProcessMessages;
  Sleep(150);

  DateAndTimeZ := Now;
  Memo2.Lines.Add('Mini Compressor AIO - Compressing...');
  Memo2.Lines.Add('Date & Time: ' +DateToStr(DateAndTimeZ) +' | ' +TimeToStr(DateAndTimeZ));
  Memo2.Lines.Add('');
  Memo2.Lines.Add('    Source: ' +Edit1.Text);
  Memo2.Lines.Add('    Output: ' +Edit2.Text +'\' +Edit5.Text);
  Memo2.Lines.Add('    Method: ' +FA_Method);
  Memo2.GoToTextEnd;

  FA_Handle := FmxHandleToHWND(Handle);
  FA_Error := False;

  if IniRead(GetAnySource('..\Resources\UnArc.Ini'), 'Config_UnArc', 'Protect') = '1' then
    UNARC_Protect:= True else UNARC_Protect:= False;

  case UNARC_Protect of
    True:
    begin
      FA_Exec:= PChar(IniRead(GetAnySource('..\Resources\UnArc.Ini'), 'Exec_Unarc', 'Protect'));
    end;
    False:
    begin
      FA_Exec:= PChar(IniRead(GetAnySource('..\Resources\UnArc.Ini'), 'Exec_Unarc', 'None'));
    end;
  end;

  with TMemo.Create(nil) do
  begin
    Lines.Add('@echo off');
    Lines.Add('title Mini Compressor - Compressing...');
    Lines.Add('"' + FA_Exec + '" ' +FA_Result +'');
    Lines.SaveToFile('Run_FA.bat');
    Free;
  end;

  Application.ProcessMessages;
  Sleep(150);

  if FA_Location = True then
  begin
    ExecAndWait(FA_Handle, GetAnySource('Cmd_MiniCompressor.exe'), GetAnySource('Run_FA.bat'), '');
    Memo1.Lines.LoadFromFile('MC_CMD_Log.txt');
    DeleteFile('MC_CMD_Log.txt');
    Edit6.Text:= 'Processing...';
  end else begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Where''s the Input and Output?'
      +#13 +'Please insert it and try again.', 'Failed',
      MB_ICONERROR or MB_OK);
  end;

  Application.ProcessMessages;
  Sleep(150);

  if IniRead(GetAnySource('MC_CMD.ini'), 'MC_Code', 'Result') = '1' then
    FA_Error := False else FA_Error := True;

  Application.ProcessMessages;
  Sleep(150);

  if FileExists(GetAnySource('Run_FA.bat')) then
    DeleteFile(GetAnySource('Run_FA.bat'));

  if FileExists(GetAnySource('MC_CMD.ini')) then
    DeleteFile(GetAnySource('MC_CMD.ini'));

  Application.ProcessMessages;
  Sleep(150);

  Edit6.Text:= 'Processing...';

  ArcTime1.Enabled := False;
  Edit38.Text := 'Ending...';
  Edit39.Text := 'Processing of Files Exists...';
  Arc1.EndAngle:= 0;

  Application.ProcessMessages;
  Sleep(150);

  if DirectoryExists(IncludeTrailingBackslash(GetCurrentDir) + '_Temp') then
    TDirectory.Delete(IncludeTrailingBackslash(GetCurrentDir) + '_Temp',True);

  Application.ProcessMessages;
  Sleep(150);

  case FA_Error of
    False:
    begin
      if FileExists(FA_Temp) then
      begin
        CopyFile(PChar(FA_Temp), PChar(FA_Out2), false);
        Application.ProcessMessages;
        Sleep(150);

        DateAndTimeZ := Now;
        Memo2.Lines.Add('');
        Memo2.Lines.Add('RESULT:');
        Memo2.Lines.Add('');
        Memo2.Lines.Add('    Original Size:   ' +
          ConvertBytes(GetDirSize(Edit1.Text + '\', true)));
        Memo2.Lines.Add('    Compressed Size: ' +
          ConvertBytes(GetDirSize(GetAnySource('\arc\'), true)));
        Memo2.Lines.Add('');
        Memo2.Lines.Add('Thank you for using Mini Compressor AIO');
        Memo2.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
          TimeToStr(DateAndTimeZ));
        Memo2.GoToTextEnd;

        Application.ProcessMessages;
        Sleep(150);

        DeleteFile(PChar(FA_Temp));

        Application.ProcessMessages;
        Sleep(150);

        if SFXOutput <> '' then
        begin
          SFXCommand:= 'copy /b "' +GetAnySource('..\MC.sfx') +'" + "'
            +Edit2.Text +'\' +Edit5.Text + '" "' + SFXOutput + '\' + Edit14.Text + '.exe"';

          IniCreate('..\Resources\records.ini','Output','Folder',Edit14.Text);
          IniCreate('..\Resources\records.ini','Record1','Type','Freearc');
          IniCreate('..\Resources\records.ini','Record1','Source','{src}\' +Edit14.Text +'.exe');
          IniCreate('..\Resources\records.ini','Record1','Output','{app}');
          IniCreate('..\Resources\records.ini','Record1','Disk','1');
          IniCreate('..\Resources\records.ini','Record1','Password',Edit3.Text);

          ExecAndWait(FmxHandleToHWND(Handle),
            GetAnySource('..\Resources\MC_SFX2.exe'), '',
            GetAnySource('..\Resources'));

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

          ExecAndWait(FA_Handle, GetAnySource('Cmd_MiniCompressor.exe'), GetAnySource('SFX_Make.bat'), '');
          if FileExists(GetAnySource('MC_CMD.ini')) then DeleteFile(GetAnySource('MC_CMD.ini'));

          with TMemo.Create(nil) do
          begin
            Lines.Add('[Output]');
            Lines.Add('Folder=');
            Lines.Add('');
            Lines.Add('[Record1]');
            Lines.Add('Type=');
            Lines.Add('Source=');
            Lines.Add('Output=');
            Lines.Add('Disk=');
            Lines.Add('Password=');
            Lines.SaveToFile(GetAnySource('..\Resources\records.ini'));
            Free;
          end;

          Application.ProcessMessages;
          Sleep(150);

          if FileExists(Edit2.Text +'\' +Edit5.Text) then
            DeleteFile(PChar(Edit2.Text +'\' +Edit5.Text));

          if FileExists(GetAnySource('SFX_Make.bat')) then
            DeleteFile(GetAnySource('SFX_Make.bat'));

          if FileExists(GetAnySource('..\MC.sfx')) then
            DeleteFile(GetAnySource('..\MC.sfx'));

          Application.ProcessMessages;
          Sleep(150);
        end;

        sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
        MessageBox(0,'Your compression was done.', 'Finished',
          MB_ICONINFORMATION or MB_OK);
        Edit6.Text:= 'Finished.';

        if FileExists(Edit1.Text + '\Hash.md5') then
          DeleteFile(PChar(Edit1.Text + '\Hash.md5'));
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

        if FileExists(GetAnySource('\arc\freearc1.tmp')) then
          DeleteFile(PChar(GetAnySource('\arc\freearc1.tmp')));

        if FileExists(Edit1.Text + '\Hash.md5') then
          DeleteFile(PChar(Edit1.Text + '\Hash.md5'));
      end;
    end;
    True:
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
      MessageBox(0,'Your compression was failed.', 'Failed',
        MB_ICONEXCLAMATION or MB_OK);
      Edit6.Text:= 'Failed.';

      if FileExists(GetAnySource('\arc\freearc1.tmp')) then
        DeleteFile(PChar(GetAnySource('\arc\freearc1.tmp')));

        if FileExists(Edit1.Text + '\Hash.md5') then
          DeleteFile(PChar(Edit1.Text + '\Hash.md5'));
    end;
  end;

  if DirectoryExists(GetAnySource('\arc')) then
    TDirectory.Delete(GetAnySource('\arc'));

  Button2.Visible := True;
  Button3.Visible := True;
  Edit6.Visible := False;
  Edit38.Visible := False;
  Edit39.Visible := False;
  CheckBox12.Visible := False;
  CheckBox12.IsChecked := False;
  Button42.Visible:= False;
end;

procedure TForm1.Button20Click(Sender: TObject);
var
  Dir: string;
begin
  if SelectDirectory('Select Folder', GetCurrentDir, Dir) then
    Memo8.Lines.SaveToFile(Dir +'\OSCDIMG_Result.txt');
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
  else if not FileExists(BGImageChange) then
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
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Game', 'Rating', Edit19.Text);
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
  IniCreate(GetAnySource('..\Installer\Setup.ini'), 'Additional', 'Language', PopupBox5.Text);

  Memo7.Lines.SaveToFile(GetAnySource('..\Installer\Info.txt'));
  Memo5.Lines.SaveToFile(GetAnySource('..\Installer\Exec.ini'));
  Memo6.Lines.SaveToFile(GetAnySource('..\Installer\Redist.ini'));
  Memo9.Lines.SaveToFile(GetAnySource('..\Installer\Archive.ini'));

  Application.ProcessMessages;
  Sleep(150);

  if not FileExists(GetAnySource('..\Installer\Graphics\Background.jpg')) then
  begin
    CopyFile(GetAnySource('..\Resources\IM_Bg2.jpg'),
      GetAnySource('..\Installer\Graphics\Background.jpg'), False);
    ExecAndWait(FmxHandleToHWND(Handle),
      GetAnySource('..\Installer\Compiler.exe'), '',
      GetAnySource('..\Installer'));

    Application.ProcessMessages;
    Sleep(150);

    DeleteFile(GetAnySource('..\Installer\Graphics\Background.jpg'));
  end else
    ExecAndWait(FmxHandleToHWND(Handle),
      GetAnySource('..\Installer\Compiler.exe'), '',
      GetAnySource('..\Installer'));

  Application.ProcessMessages;
  Sleep(150);

  if FileExists(IM_Output) then
  begin
    Application.ProcessMessages;
    Sleep(2000);

    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0, 'Installation was finish to make.', 'Finished',
      MB_ICONINFORMATION or MB_OK);
  end
  else if not FileExists(IM_Output) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0, 'Installation was failed to make.', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
  end;
  DeleteFile(GetAnySource('..\Installer\Setup.ini'));
  DeleteFile(GetAnySource('..\Installer\Info.txt'));
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
  if FileExists(GetAnySource('..\Resources\ISD_List_Manual.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0, 'Looks like the file still exist. Would create another one.', 'Resource Exist',
      MB_ICONINFORMATION or MB_OK);
    DeleteFile(GetAnySource('..\Resources\ISD_List_Manual.ini'));
    ExecAndWait(FmxHandleToHWND(Handle),
      GetAnySource('..\Resources\MC_Update.exe'),'',
      GetAnySource('..\Resources'));
  end
  else if not FileExists(GetAnySource('..\Resources\ISD_List_Manual.ini')) then
    ExecAndWait(FmxHandleToHWND(Handle),
      GetAnySource('..\Resources\MC_Update.exe'),'',
      GetAnySource('..\Resources'))
end;

procedure TForm1.Button29Click(Sender: TObject);
var
  FileNameProj: string;
begin
  FileNameProj := '';
  SaveDialog1.Title := 'Locate to save';
  SaveDialog1.Filter := '.imp|*.imp';
  SaveDialog1.FileName := '';
  SaveDialog1.Execute;
  if SaveDialog1.FileName <> '' then
    FileNameProj:= SaveDialog1.FileName + '.imp';

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
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'Game', 'Rating', Edit19.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'Watermark', 'Who', Edit28.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'CPUCores', SpinBox2.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'CPUSpeed', SpinBox3.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'RAMSize', SpinBox4.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'GPUSize', SpinBox5.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'GPUDX', Edit27.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'OSVersion', NumberBox3.Text);
    IniCreate(GetAnySource('..\Resources\Project\Setup.ini'), 'System', 'OSBuild', NumberBox4.Text);

    Memo7.Lines.SaveToFile(GetAnySource('..\Resources\Project\Info.txt'));
    Memo5.Lines.SaveToFile(GetAnySource('..\Resources\Project\Exec.ini'));
    Memo6.Lines.SaveToFile(GetAnySource('..\Resources\Project\Redist.ini'));
    Memo9.Lines.SaveToFile(GetAnySource('..\Resources\Project\Archive.ini'));

    if FileExists(GetAnySource('..\Installer\Graphics\Background.jpg')) then
      CopyFile(GetAnySource('..\Installer\Graphics\Background.jpg'),
        GetAnySource('..\Resources\Project\Graphics\Background.jpg'),false);

    if FileExists(GetAnySource('..\Installer\Graphics\Music.mp3')) then
      CopyFile(GetAnySource('..\Installer\Graphics\Music.mp3'),
        GetAnySource('..\Resources\Project\Graphics\Music.mp3'),false);

    if FileExists(GetAnySource('..\Installer\Game.ico')) then
      CopyFile(GetAnySource('..\Installer\Game.ico'),
        GetAnySource('..\Resources\Project\Game.ico'),false);

    if FileExists(GetAnySource('..\Resources\ISD_List_Manual.ini')) then
      CopyFile(GetAnySource('..\Resources\ISD_List_Manual.ini'),
        GetAnySource('..\Resources\Project\ISD_List_Manual.ini'),false);

    Application.ProcessMessages;
    Sleep(150);

    ExecAndWait(FmxHandleToHWND(Handle),
      GetAnySource('..\Resources\7za.exe'),'a -bb3 -r0 -mmt2 -mx9 -pIMP "'
      +FileNameProj +'.7z" "' +GetAnySource('..\Resources\Project') +'\*"',
      GetAnySource('..\Resources'));

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

    if FileExists(GetAnySource('..\Resources\Project\ISD_List_Manual.ini')) then
      DeleteFile(GetAnySource('..\Resources\Project\ISD_List_Manual.ini'));

    Application.ProcessMessages;
    Sleep(150);

    RenameFile(PChar(FileNameProj +'.7z'),PChar(FileNameProj));

    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  end
  else if FileNameProj = '' then
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

    ExecAndWait(FmxHandleToHWND(Handle),
      GetAnySource('..\Resources\7za.exe'),'x -pIMP -O"'
      +GetAnySource('..\Resources\Project') +'" "' +PChar(LoadProj) +'"',
      GetAnySource('..\Resources'));

    Application.ProcessMessages;
    Sleep(150);

    Edit15.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Installer', 'Name');
    NumberBox2.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Installer', 'Size');
    MC_Check := IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Installer', 'MC');
    if MC_Check = '1' then
      CheckBox3.IsChecked:= True
    else if MC_Check = '0' then
    begin
      CheckBox3.IsChecked:= False;
      Edit20.Text := IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Installer', 'Files');
    end;
    Edit16.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Theme', 'Color');
    SpinBox1.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Theme', 'Dark');
    Edit17.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Game', 'DESCRIPTION');
    Edit18.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Game', 'Genre');
    Edit19.Text:= IniRead(GetAnySource('..\Resources\Project\Setup.ini'), 'Game', 'Rating');
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

    if FileExists(GetAnySource('..\Resources\Project\Graphics\Background.jpg')) then
      CopyFile(GetAnySource('..\Resources\Project\Graphics\Background.jpg'),
        GetAnySource('..\Installer\Graphics\Background.jpg'), false);

    if FileExists(GetAnySource('..\Resources\Project\Graphics\Music.mp3')) then
      CopyFile(GetAnySource('..\Resources\Project\Graphics\Music.mp3'),
        GetAnySource('..\Installer\Graphics\Music.mp3'), false);

    if FileExists(GetAnySource('..\Resources\Project\Game.ico')) then
      CopyFile(GetAnySource('..\Resources\Project\Game.ico'),
        GetAnySource('..\Installer\Game.ico'), false);

    if FileExists(GetAnySource('..\Resources\Project\ISD_List_Manual.ini')) then
      CopyFile(GetAnySource('..\Resources\Project\ISD_List_Manual.ini'),
        GetAnySource('..\Resources\ISD_List_Manual.ini'),false);

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

    if FileExists(GetAnySource('..\Resources\Project\ISD_List_Manual.ini')) then
      DeleteFile(GetAnySource('..\Resources\Project\ISD_List_Manual.ini'));

    Application.ProcessMessages;
    Sleep(150);

    Image2.Bitmap.LoadFromFile(GetAnySource('..\Installer\Game.ico'));
    Image3.Bitmap.LoadFromFile(GetAnySource('..\Installer\Graphics\Background.jpg'));

    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  end
  else if LoadProj = '' then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0, 'Failed to load project.', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
  end;
end;

procedure TForm1.Button31Click(Sender: TObject);
var
  FA_Command, FA_Memory, FA_Password, FA_Method, FA_Source, FA_Output,
  FA_Result: string;

  FA_Handle: HWND;
  FA_Error: boolean;
  FA_Split: TMemo;
  FA_Exec: PChar;
  SFXOutput, SFXCommand: string;
  SFX_Confirm: Boolean;
begin
  case CheckBox7.IsChecked of
    True:
    begin
      if MessageBox(0,
        'Auto or Manual for SFX?' +#13#13 +'Auto = OK' +#13 +'Manual = Cancel',
        'Mini Compressor SFX',
        MB_OKCANCEL or MB_ICONQUESTION) = ID_OK then
        SFX_Confirm := True
    end;
    False:
    begin
      SFX_Confirm := False;
    end;
  end;

  TabControl7.TabIndex := 1;
  Button32.Visible:= False;
  Button33.Visible:= False;
  Edit36.Visible := True;
  Edit36.Text:= 'Compressing...';
  Edit40.Visible := True;
  Edit41.Visible := True;
  ArcTime1.Enabled := True;
  CheckBox13.Visible := True;
  Button43.Visible := True;

  if CheckBox10.IsChecked = True then
    with TForm5.Create(nil) do
    try
      FA_SplitTime.Enabled:= True;
      ShowModal;
    finally
      Free;
    end;

  FA_Command:= 'a -ma9 -ds -di -i1 -ep1 -ed -r -s; -w_Temp\ ' +Edit48.Text +' ';
  FA_Memory:= '-lc'+SpinBox6.Text +' -ld' +SpinBox6.Text +' ';
  FA_Method:= '-m'+ Edit35.Text
    +'+diskspan:' +SpinBox7.Text +'m:' +SpinBox7.Text +'m ';
  FA_Output:= '"' +Edit33.Text +'\' +Edit37.Text +'" ';
  FA_Source:= '"' +Edit32.Text +'\*"';

  FA_Result:= FA_Command +FA_Memory +FA_Method +FA_Output +FA_Source;

  Application.ProcessMessages;
  Sleep(150);

  FA_Handle := FmxHandleToHWND(Handle);
  FA_Error := False;

  case CheckBox6.IsChecked of
    True:
    begin
      FA_Exec := GetAnySource('..\Compression\FreeArc\Arc_P.exe');
    end;
    False:
    begin
      FA_Exec := GetAnySource('..\Compression\FreeArc\Arc.exe');
    end;
  end;

  with TMemo.Create(nil) do
  begin
    Lines.Add('@echo off');
    Lines.Add('title Mini Compressor v' + IniRead(GetAnySource('..\Version.ini') , 'Version' ,'Current') + ' - Compressing...');
    Lines.Add('"' + FA_Exec + '" ' +FA_Result +'');
    Lines.SaveToFile('Run_FA.bat');
    Free;
  end;

  Application.ProcessMessages;
  Sleep(150);

  ExecAndWait(FA_Handle, GetAnySource('Cmd_MiniCompressor.exe'), GetAnySource('Run_FA.bat'), '');
  Memo12.Lines.LoadFromFile('MC_CMD_Log.txt');
  DeleteFile('MC_CMD_Log.txt');
  Edit36.Text:= 'Processing...';

  Application.ProcessMessages;
  Sleep(150);

  if IniRead(GetAnySource('MC_CMD.ini'), 'MC_Code', 'Result') = '1' then
    FA_Error := False else
    FA_Error := True;

  Application.ProcessMessages;
  Sleep(150);

  if FileExists(GetAnySource('Run_FA.bat')) then
    DeleteFile(GetAnySource('Run_FA.bat'));

  if FileExists(GetAnySource('MC_CMD.ini')) then
    DeleteFile(GetAnySource('MC_CMD.ini'));

  ArcTime1.Enabled := False;
  Edit40.Text := 'Ending...';
  Edit41.Text := 'Processing of Files Exists...';
  Arc2.EndAngle:= 0;

  Application.ProcessMessages;
  Sleep(150);

  if DirectoryExists(IncludeTrailingBackslash(GetCurrentDir) + '_Temp') then
    TDirectory.Delete(IncludeTrailingBackslash(GetCurrentDir) + '_Temp',True);

  Application.ProcessMessages;
  Sleep(150);

  FA_Split:= TMemo.Create(nil);
  with FA_Split do
  begin
    Lines.Clear;
    Lines.Add('[MC1]');
    Lines.Add('Type=Freearc');
    Lines.Add('Source={src}\' +Edit37.Text);
    Lines.Add('Output={app}');
    Lines.Add('Disk=1');
    Lines.SaveToFile(PChar(Edit33.Text +'\MC.ini'));
    Free;
  end;

  Application.ProcessMessages;
  Sleep(150);

  case CheckBox7.IsChecked of
    True:
    begin
      SFXOutput := Edit33.Text;
    end;
    False:
    begin
      SFXOutput := '';
    end;
  end;

  case FA_Error of
    False:
    begin
      if FileExists(PChar(Edit33.Text +'\' +Edit37.Text)) then
      begin
        if SFXOutput <> '' then
        begin
          case SFX_Confirm of
            True:
            begin
              sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
              ExecAndWait(FmxHandleToHWND(Handle),
                GetAnySource('..\Resources\MC_SFX.exe'), '',
                GetAnySource('..\Resources'));
            end;
            False:
            begin
              MessageBox(0,
                'Please make sure that you following your method you used for tools.'
                +#13 +'For incase that you don''t know how to make it,'
                +#13 +'Just use Auto if you need.',
                'Mini Compressor SFX',
                MB_OK or MB_ICONINFORMATION);
              sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
              ExecAndWait(FmxHandleToHWND(Handle),
                GetAnySource('..\Resources\MC_UpdateSFX.exe'), '',
                GetAnySource('..\Resources'));
            end;
          end;

          CopyFile(GetAnySource('..\Compression\MC.sfx'),
            PChar(SFXOutput +'\' +Edit34.Text),false);

          Application.ProcessMessages;
          Sleep(150);

          Application.ProcessMessages;
          Sleep(150);

          DeleteFile(GetAnySource('..\Compression\MC.sfx'));

          Application.ProcessMessages;
          Sleep(150);
        end;

        sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
        MessageBox(0,'Your compression was done.', 'Finished',
          MB_ICONINFORMATION or MB_OK);
        Edit36.Text:= 'Finished.';

        if FileExists(Edit32.Text + '\Hash.md5') then
          DeleteFile(PChar(Edit32.Text + '\Hash.md5'));
      end
      else
      if not FileExists(PChar(Edit33.Text +'\' +Edit37.Text)) then
      begin
        sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
        MessageBox(0,'Your compression was not done.', 'Failed',
          MB_ICONEXCLAMATION or MB_OK);
        Edit6.Text:= 'Failed.';

        if FileExists(Edit33.Text +'\freearc1.tmp') then
          DeleteFile(PChar(Edit33.Text +'\freearc1.tmp'));

        if FileExists(PChar(Edit33.Text +'\MC.ini')) then
          DeleteFile(PChar(Edit33.Text +'\MC.ini'));

        if FileExists(Edit32.Text + '\Hash.md5') then
          DeleteFile(PChar(Edit32.Text + '\Hash.md5'));
      end;
    end;
    True:
    begin
      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'Your compression was failed.', 'Failed',
        MB_ICONEXCLAMATION or MB_OK);
      Edit36.Text:= 'Failed.';

      if FileExists(Edit33.Text +'\freearc1.tmp') then
        DeleteFile(PChar(Edit33.Text +'\freearc1.tmp'));

      if FileExists(PChar(Edit33.Text +'\MC.ini')) then
        DeleteFile(PChar(Edit33.Text +'\MC.ini'));

        if FileExists(Edit32.Text + '\Hash.md5') then
          DeleteFile(PChar(Edit32.Text + '\Hash.md5'));
    end;
  end;

  Button32.Visible:= True;
  Button33.Visible:= True;
  Edit36.Visible := False;
  Edit40.Visible := False;
  Edit41.Visible := False;
  CheckBox13.Visible := False;
  CheckBox13.IsChecked := False;
  Button43.Visible := False;
end;

procedure TForm1.Button32Click(Sender: TObject);
var
  FA_SplitResult: string;
  Dir: string;
begin
  if SelectDirectory('Select Folder', GetCurrentDir, Dir) then
    FA_SplitResult:= Dir;

  if FA_SplitResult <> '' then
    Memo12.Lines.SaveToFile(PChar(FA_SplitResult +'\Split_Result.txt'));
end;

procedure TForm1.Button33Click(Sender: TObject);
begin
  TabControl7.TabIndex := 0;
end;

procedure TForm1.Button34Click(Sender: TObject);
var
  LoadSkinConfig: string;
  Apply_Skin: string;
  Skin_Set1, Skin_Set2: string;
  FormHandle: HWND;
begin
  LoadSkinConfig:= GetAnySource('..\Resources\Skin\_Skin.Ini');
  Apply_Skin := '..\Resources\Skin\';
  Skin_Set1:= IniRead(LoadSkinConfig,'Skin_No',PopupBox4.Text);
  Skin_Set2:= IniRead(LoadSkinConfig,'Skin_Files',Skin_Set1);
  IniCreate(LoadSkinConfig,'Skin_Use','Set',Skin_Set1);

  //FormHandle:= TWinWindowHandle(Form1).Wnd;
  //ShowWindowAsync(FormHandle, SW_MAXIMIZE);

  if (Self.WindowState = TWindowState.wsMaximized)
    or (CheckBox8.IsChecked = True) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Failed to apply skin.' +#13
      +'Please do not Maximize Window or Full Screen first.', 'Error', MB_ICONEXCLAMATION or MB_OK);
  end
  else
  if not (Self.WindowState = TWindowState.wsMaximized)
    or (CheckBox8.IsChecked = True) then
  begin
    Hide;
    Form1.StyleBook := StyleBook2;
    StyleBook1.LoadFromFile(GetAnySource(Apply_Skin) +Skin_Set2);
    Form1.StyleBook := StyleBook1;
    Show;
  end;
end;

procedure TForm1.Button35Click(Sender: TObject);
begin
  FloatAnimation2.Enabled:= False;
  FloatAnimation2.Enabled:= True;
end;

procedure TForm1.Button36Click(Sender: TObject);
var
  FA_Command, FA_Memory, FA_Password, FA_Method, FA_Source, FA_Output, FA_Out2,
  FA_Archive, FA_Temp, FA_Temp2, FA_Result: string;

  FA_Handle: HWND;
  FA_Error: boolean;
  FA_Exec: PChar;
  DateAndTimeZ: TDateTime;
  SFXOutput, SFXCommand: string;

  FA_Location: boolean;
  UNARC_Protect: boolean;
begin
  if CheckBox9.IsChecked = True then
    with TForm5.Create(nil) do
    try
      FA_SingleTime.Enabled:= True;
      ShowModal;
    finally
      Free;
    end;

  case CheckBox2.IsChecked of
    True:
    begin
      SFXOutput := Edit2.Text;
    end;
    False:
    begin
      SFXOutput := '';
    end;
  end;

  if (Edit1.Text <> '') or (Edit2.Text <> '') then
    FA_Location:= True else FA_Location:= False;

  Application.ProcessMessages;
  Sleep(150);

  FA_Command := Edit7.Text +' ' +Edit47.Text +' ';
  FA_Memory := '-lc' +NumberBox1.Text +' -ld' +NumberBox1.Text +' ';
  FA_Password := '-hp -p"' +Edit3.Text +'" ';

  Application.ProcessMessages;
  Sleep(150);

  if PopupBox1.Text = '[CUSTOM]' then
    FA_Method := '-m' +Edit4.Text +' '
  else if PopupBox1.Text <> '' then
    FA_Method := '-m' +PopupBox1.Text +' ';

  FA_Archive := '' +Edit5.Text;
  FA_Temp := GetAnySource('\arc\temp.arc');
  FA_Temp2 := '"' +FA_Temp +'" ';
  FA_Output := '"' +Edit2.Text +'\' +FA_Archive +'" ';
  FA_Out2 := '' +Edit2.Text +'\' +FA_Archive +'';
  FA_Source := '"' +Edit1.Text +'\*"';

  Application.ProcessMessages;
  Sleep(150);

  if Edit3.Text <> '' then
    FA_Result := '' +FA_Command +FA_Memory +FA_Password +FA_Method
    +FA_Temp2 +FA_Source
  else if Edit3.Text = '' then
    FA_Result := '' +FA_Command +FA_Memory +FA_Method +FA_Temp2 +FA_Source;

  Application.ProcessMessages;
  Sleep(150);

  if IniRead(GetAnySource('..\Resources\UnArc.Ini'), 'Config_UnArc', 'Protect') = '1' then
    UNARC_Protect:= True else UNARC_Protect:= False;

  case UNARC_Protect of
    True:
    begin
      FA_Exec:= PChar(IniRead(GetAnySource('..\Resources\UnArc.Ini'), 'Exec_Unarc', 'Protect'));
    end;
    False:
    begin
      FA_Exec:= PChar(IniRead(GetAnySource('..\Resources\UnArc.Ini'), 'Exec_Unarc', 'None'));
    end;
  end;

  Application.ProcessMessages;
  Sleep(150);

  with TMemo.Create(nil) do
  begin
    Lines.Add('@echo off');
    Lines.Add('title Mini Compressor - Compressing...');
    Lines.Add('"' + FA_Exec + '" ' +FA_Result +'');
    Lines.Add('title Mini Compressor - Compressing...');
    Lines.Add('');
    Lines.Add('');
    Lines.Add('');
    Lines.Add('@echo CHECK BEFORE YOUR COMPRESSING IS OK OR NOT!!');
    Lines.Add('@echo Press ENTER key to furture continue.');
    Lines.Add('@echo Or take a screenshot if the case were problem.');
    Lines.Add('@echo Thank you for your time.');
    Lines.Add('');
    Lines.Add('@echo "temp.arc" should be on "Bin\arc" folder there.');
    Lines.Add('pause > nul');
    Lines.SaveToFile('Run_FA.bat');
    Free;
  end;


  Application.ProcessMessages;
  Sleep(150);

  FA_Error := False;
  if FA_Location = True then
  begin
    ExecAndWait(FmxHandleToHWND(Handle),
      GetAnySource('Run_FA.bat'), '', GetAnySource(''));
  end else begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Where''s the Input and Output?'
      +#13 +'Please insert it and try again.', 'Failed',
      MB_ICONERROR or MB_OK);
  end;

  Application.ProcessMessages;
  Sleep(150);

  if DirectoryExists(IncludeTrailingBackslash(GetCurrentDir) + '_Temp') then
    TDirectory.Delete(IncludeTrailingBackslash(GetCurrentDir) + '_Temp',True);

  Application.ProcessMessages;
  Sleep(150);

  if FileExists(GetAnySource('Run_FA.bat')) then
    DeleteFile(GetAnySource('Run_FA.bat'));

  Application.ProcessMessages;
  Sleep(150);

  case FA_Error of
    False:
    begin
      if FileExists(FA_Temp) then
      begin
        CopyFile(PChar(FA_Temp), PChar(FA_Out2), false);
        Application.ProcessMessages;
        Sleep(150);

        DateAndTimeZ := Now;
        Memo2.Lines.Add('');
        Memo2.Lines.Add('RESULT:');
        Memo2.Lines.Add('');
        Memo2.Lines.Add('    Original Size:   ' +
          ConvertBytes(GetDirSize(Edit1.Text + '\', true)));
        Memo2.Lines.Add('    Compressed Size: ' +
          ConvertBytes(GetFileSize(FA_Out2)));
        Memo2.Lines.Add('');
        Memo2.Lines.Add('Thank you for using Mini Compressor AIO');
        Memo2.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
          TimeToStr(DateAndTimeZ));
        Memo2.GoToTextEnd;

        Application.ProcessMessages;
        Sleep(150);

        DeleteFile(PChar(FA_Temp));

        Application.ProcessMessages;
        Sleep(150);

        if SFXOutput <> '' then
        begin
          SFXCommand:= 'copy /b "' +GetAnySource('..\MC.sfx') +'" + "'
            +Edit2.Text +'\' +Edit5.Text + '" "' + SFXOutput + '\' + Edit14.Text + '.exe"';

          IniCreate('..\Resources\records.ini','Output','Folder',Edit14.Text);
          IniCreate('..\Resources\records.ini','Record1','Type','Freearc');
          IniCreate('..\Resources\records.ini','Record1','Source','{src}\' +Edit14.Text +'.exe');
          IniCreate('..\Resources\records.ini','Record1','Output','{app}');
          IniCreate('..\Resources\records.ini','Record1','Disk','1');
          IniCreate('..\Resources\records.ini','Record1','Password',Edit3.Text);

          ExecAndWait(FmxHandleToHWND(Handle),
            GetAnySource('..\Resources\MC_SFX2.exe'),'',GetAnySource('..\Resources'));

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

          CopyFile(GetAnySource('..\Setup.db'),
            PChar(SFXOutput +'\Setup.db'),false);

          Application.ProcessMessages;
          Sleep(150);

          ExecAndWait(FA_Handle, GetAnySource('Cmd_MiniCompressor.exe'), GetAnySource('SFX_Make.bat'), '');
          if FileExists(GetAnySource('MC_CMD.ini')) then DeleteFile(GetAnySource('MC_CMD.ini'));

          with TMemo.Create(nil) do
          begin
            Lines.Add('[Output]');
            Lines.Add('Folder=');
            Lines.Add('');
            Lines.Add('[Record1]');
            Lines.Add('Type=');
            Lines.Add('Source=');
            Lines.Add('Output=');
            Lines.Add('Disk=');
            Lines.Add('Password=');
            Lines.SaveToFile(GetAnySource('..\Resources\records.ini'));
            Free;
          end;

          Application.ProcessMessages;
          Sleep(150);

          if FileExists(Edit2.Text +'\' +Edit5.Text) then
            DeleteFile(PChar(Edit2.Text +'\' +Edit5.Text));

          if FileExists(GetAnySource('SFX_Make.bat')) then
            DeleteFile(GetAnySource('SFX_Make.bat'));

          if FileExists(GetAnySource('..\Setup.db')) then
            DeleteFile(GetAnySource('..\Setup.db'));

          if FileExists(GetAnySource('..\MC.sfx')) then
            DeleteFile(GetAnySource('..\MC.sfx'));

          Application.ProcessMessages;
          Sleep(150);
        end;

        sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
        MessageBox(0,'Your compression was done.', 'Finished',
          MB_ICONINFORMATION or MB_OK);
        Edit6.Text:= 'Finished.';

        if FileExists(Edit1.Text + '\Hash.md5') then
          DeleteFile(PChar(Edit1.Text + '\Hash.md5'));
      end
      else
      if not FileExists(Edit2.Text +'\' +Edit5.Text) then
      begin
        sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
        MessageBox(0,'Your compression was not done.', 'Failed',
          MB_ICONEXCLAMATION or MB_OK);
        Edit6.Text:= 'Failed.';

        if FileExists(GetAnySource('\arc\freearc1.tmp')) then
          DeleteFile(PChar(GetAnySource('\arc\freearc1.tmp')));

        if FileExists(Edit1.Text + '\Hash.md5') then
          DeleteFile(PChar(Edit1.Text + '\Hash.md5'));
      end;
    end;
    True:
    begin
      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'Your compression was not done.', 'Failed',
        MB_ICONEXCLAMATION or MB_OK);
      Edit6.Text:= 'Failed.';

      if FileExists(GetAnySource('\arc\freearc1.tmp')) then
        DeleteFile(PChar(GetAnySource('\arc\freearc1.tmp')));

        if FileExists(Edit1.Text + '\Hash.md5') then
          DeleteFile(PChar(Edit1.Text + '\Hash.md5'));
    end;
  end;

  if DirectoryExists(GetAnySource('\arc')) then
    TDirectory.Delete(GetAnySource('\arc'));
end;

procedure TForm1.Button37Click(Sender: TObject);
var
  FA_Command, FA_Memory, FA_Password, FA_Method, FA_Source, FA_Output,
  FA_Result: string;

  FA_Handle: HWND;
  FA_Error: boolean;
  FA_Split: TMemo;
  FA_Exec: PChar;
  SFXOutput, SFXCommand: string;
  SFX_Confirm: Boolean;
begin
  case CheckBox7.IsChecked of
    True:
    begin
      if MessageBox(0,
        'Auto or Manual for SFX?' +#13#13 +'Auto = OK' +#13 +'Manual = Cancel',
        'Mini Compressor SFX',
        MB_OKCANCEL or MB_ICONQUESTION) = ID_OK then
        SFX_Confirm := True;
    end;
    False:
    begin
      SFX_Confirm := False;
    end;
  end;

  FA_Command:= 'a -ma9 -ds -di -i1 -ep1 -ed -r -s; -w_Temp\ ' +Edit48.Text +' ';
  FA_Memory:= '-lc'+SpinBox6.Text +' -ld' +SpinBox6.Text +' ';
  FA_Method:= '-m'+ Edit35.Text
    +'+diskspan:' +SpinBox7.Text +'m:' +SpinBox7.Text +'m ';
  FA_Output:= '"' +Edit33.Text +'\' +Edit37.Text +'" ';
  FA_Source:= '"' +Edit32.Text +'\*"';

  FA_Result:= FA_Command +FA_Memory +FA_Method +FA_Output +FA_Source;

  if CheckBox10.IsChecked = True then
    with TForm5.Create(nil) do
    try
      FA_SplitTime.Enabled:= True;
      ShowModal;
    finally
      Free;
    end;

  Application.ProcessMessages;
  Sleep(150);

  case CheckBox6.IsChecked of
    True:
    begin
      FA_Exec := GetAnySource('..\Compression\FreeArc\Arc_P.exe');
    end;
    False:
    begin
      FA_Exec := GetAnySource('..\Compression\FreeArc\Arc.exe');
    end;
  end;

  Application.ProcessMessages;
  Sleep(150);

  with TMemo.Create(nil) do
  begin
    Lines.Add('@echo off');
    Lines.Add('title Mini Compressor v' + IniRead(GetAnySource('..\Version.ini') , 'Version' ,'Current') + ' - Compressing...');
    Lines.Add('"' + FA_Exec + '" ' +FA_Result +'');
    Lines.Add('title Mini Compressor v' + IniRead(GetAnySource('..\Version.ini') , 'Version' ,'Current') + ' - Compressing...');
    Lines.Add('');
    Lines.Add('');
    Lines.Add('');
    Lines.Add('@echo CHECK BEFORE YOUR COMPRESSING IS OK OR NOT!!');
    Lines.Add('@echo Press ENTER key to furture continue.');
    Lines.Add('@echo Or take a screenshot if the case were problem.');
    Lines.Add('@echo Thank you for your time.');
    Lines.Add('');
    Lines.Add('@echo "temp.arc" should be on "Bin\arc" folder there.');
    Lines.Add('pause > nul');
    Lines.SaveToFile('Run_FA.bat');
    Free;
  end;

  Application.ProcessMessages;
  Sleep(150);

  FA_Error := False;
  ExecAndWait(FmxHandleToHWND(Handle),
    GetAnySource('Run_FA.bat'),'',GetAnySource(''));

  Application.ProcessMessages;
  Sleep(150);

  if DirectoryExists(IncludeTrailingBackslash(GetCurrentDir) + '_Temp') then
    TDirectory.Delete(IncludeTrailingBackslash(GetCurrentDir) + '_Temp',True);

  Application.ProcessMessages;
  Sleep(150);

  FA_Split:= TMemo.Create(nil);
  with FA_Split do
  begin
    Lines.Clear;
    Lines.Add('[MC1]');
    Lines.Add('Type=Freearc');
    Lines.Add('Source={src}\' +Edit37.Text);
    Lines.Add('Output={app}');
    Lines.Add('Disk=1');
    Lines.SaveToFile(PChar(Edit33.Text +'\MC.ini'));
    Free;
  end;

  Application.ProcessMessages;
  Sleep(150);

  case CheckBox7.IsChecked of
    True:
    begin
      SFXOutput := Edit33.Text;
    end;
    False:
    begin
      SFXOutput := '';
    end;
  end;

  case FA_Error of
    False:
    begin
      if FileExists(PChar(Edit33.Text +'\' +Edit37.Text)) then
      begin
        if SFXOutput <> '' then
        begin
          case SFX_Confirm of
            True:
            begin
              sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
              ExecAndWait(FmxHandleToHWND(Handle),
                GetAnySource('..\Resources\MC_SFX.exe'), '',
                GetAnySource('..\Resources'));
            end;
            False:
            begin
              MessageBox(0,
                'Please make sure that you following your method you used for tools.'
                +#13 +'For incase that you don''t know how to make it,'
                +#13 +'Just use Auto if you need.',
                'Mini Compressor SFX',
                MB_OK or MB_ICONINFORMATION);
              sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
              ExecAndWait(FmxHandleToHWND(Handle),
                GetAnySource('..\Resources\MC_UpdateSFX.exe'), '',
                GetAnySource('..\Resources'));
            end;
          end;

          CopyFile(GetAnySource('..\Compression\MC.sfx'),
            PChar(SFXOutput +'\' +Edit34.Text),false);

          Application.ProcessMessages;
          Sleep(150);

          CopyFile(GetAnySource('..\Compression\Setup.db'),
            PChar(SFXOutput +'\Setup.db'),false);

          Application.ProcessMessages;
          Sleep(150);

          DeleteFile(GetAnySource('..\Compression\MC.sfx'));

          Application.ProcessMessages;
          Sleep(150);

          DeleteFile(GetAnySource('..\Compression\Setup.db'));
        end;

        sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
        MessageBox(0,'Your compression was done.', 'Finished',
          MB_ICONINFORMATION or MB_OK);
        Edit36.Text:= 'Finished.';

        if FileExists(Edit32.Text + '\Hash.md5') then
          DeleteFile(PChar(Edit32.Text + '\Hash.md5'));
      end
      else if not FileExists(PChar(Edit33.Text +'\' +Edit37.Text)) then
      begin
        sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
        MessageBox(0,'Your compression was not done.', 'Failed',
          MB_ICONEXCLAMATION or MB_OK);
        Edit6.Text:= 'Failed.';

        if FileExists(Edit33.Text +'\freearc1.tmp') then
          DeleteFile(PChar(Edit33.Text +'\freearc1.tmp'));

        if FileExists(PChar(Edit33.Text +'\MC.ini')) then
          DeleteFile(PChar(Edit33.Text +'\MC.ini'));

        if FileExists(Edit32.Text + '\Hash.md5') then
          DeleteFile(PChar(Edit32.Text + '\Hash.md5'));
      end;
    end;
    True:
    begin
      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'Your compression was failed.', 'Failed',
        MB_ICONEXCLAMATION or MB_OK);
      Edit36.Text:= 'Failed.';

      if FileExists(Edit33.Text +'\freearc1.tmp') then
        DeleteFile(PChar(Edit33.Text +'\freearc1.tmp'));

      if FileExists(PChar(Edit33.Text +'\MC.ini')) then
        DeleteFile(PChar(Edit33.Text +'\MC.ini'));

        if FileExists(Edit32.Text + '\Hash.md5') then
          DeleteFile(PChar(Edit32.Text + '\Hash.md5'));
    end;
  end;
end;

procedure TForm1.Button38Click(Sender: TObject);
var
  Command7z, Thread7z, Method7z, Password7z, Archive7z, Source7z,
  Result7z: string;
  DateAndTimeZ: TDateTime;
  Handle7z: HWND;
  Error7z: Boolean;
  SFXOutput, SFXCommand: string;
begin
  if CheckBox4.IsChecked = True then
    SFXOutput:= Edit9.Text
  else if CheckBox4.IsChecked = False then
    SFXOutput:= '';

  if CheckBox11.IsChecked = True then
    with TForm5.Create(nil) do
    try
      SevenZip_Time.Enabled:= True;
      ShowModal;
    finally
      Free;
    end;

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
  else if Edit10.Text = '' then
    Result7z := Command7z +Thread7z +Method7z +Archive7z +Source7z;

  Application.ProcessMessages;
  Sleep(150);

  with TMemo.Create(nil) do
  begin
    Lines.Add('@echo off');
    Lines.Add('title Mini Compressor - Compressing...');
    Lines.Add('"..\Compression\7-Zip\7z.exe" ' +Result7z +'');
    Lines.Add('title Mini Compressor - Compressing...');
    Lines.Add('');
    Lines.Add('');
    Lines.Add('');
    Lines.Add('@echo CHECK BEFORE YOUR COMPRESSING IS OK OR NOT!!');
    Lines.Add('@echo Press ENTER key to furture continue.');
    Lines.Add('@echo Or take a screenshot if the case were problem.');
    Lines.Add('@echo Thank you for your time.');
    Lines.Add('');
    Lines.Add('@echo "temp.7z" should be on "Bin" folder there.');
    Lines.Add('pause > nul');
    Lines.SaveToFile('Run_7Z.bat');
    Free;
  end;

  Application.ProcessMessages;
  Sleep(150);

  ExecAndWait(FmxHandleToHWND(Handle),
    GetAnySource('Run_7Z.bat'), '', GetAnySource(''));
  Error7z:= False;

  Application.ProcessMessages;
  Sleep(150);

  if FileExists(GetAnySource('Run_7Z.bat')) then
    DeleteFile(GetAnySource('Run_7Z.bat'));

  Application.ProcessMessages;
  Sleep(150);

  if FileExists(GetAnySource('temp.7z')) then
  begin
    CopyFile(GetAnySource('temp.7z'),PChar(Edit9.Text +'\' +Edit11.Text),false);

    Application.ProcessMessages;
    Sleep(2000);

    DeleteFile(GetAnySource('temp.7z'));
  end
  else if not FileExists(GetAnySource('temp.7z')) then
    Error7z := True;

  if Error7z = False then
  begin
    if FileExists(Edit9.Text +'\' +Edit11.Text) then
    begin
      if SFXOutput <> '' then
      begin
        SFXCommand:= 'copy /b "' +GetAnySource('..\Compression\7-Zip\7z.sfx') +'" + "'
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

        ExecAndWait(FmxHandleToHWND(Handle),
          GetAnySource('SFX_Make.bat'),'',GetAnySource(''));

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

      if FileExists(Edit8.Text + '\Hash.md5') then
        DeleteFile(PChar(Edit8.Text + '\Hash.md5'));
    end
    else if not FileExists(Edit9.Text +'\' +Edit11.Text) then
    begin
      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'Your compression was not done.', 'Failed',
        MB_ICONEXCLAMATION or MB_OK);
      Edit12.Text:= 'Failed.';

      if FileExists(Edit8.Text + '\Hash.md5') then
        DeleteFile(PChar(Edit8.Text + '\Hash.md5'));
    end;
  end
  else if Error7z = True then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Your compression was failed.', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
    Edit12.Text:= 'Failed.';

    if FileExists(Edit8.Text + '\Hash.md5') then
      DeleteFile(PChar(Edit8.Text + '\Hash.md5'));
  end;
end;

procedure TForm1.Button39Click(Sender: TObject);
var
  HashResult: Integer;
  HashStr: WideString;
begin
  Memo13.Lines.Clear;
  CancelAll := False;

  HashResult := CalculateHashesForDir(Edit45.Text, Edit44.Text,
    StrToInt(NumberBox8.Text), GenHashMultiCallback);

  case HashResult of
    H_PROCESS_DONE:
      MessageBox(0, 'Hash generation successful!', 'XHash', MB_OK or MB_ICONINFORMATION);

    H_HASH_GENERATE_ERROR:
      MessageBox(0,'Hash generation failed!', 'XHash', MB_OK or MB_ICONEXCLAMATION);

    H_INVALID_DIRECTORY:
      MessageBox(0,'Invalid directory!', 'XHash', MB_OK or MB_ICONERROR);

    H_PROCESS_ABORTED:
      MessageBox(0,'Hash generation was canceled by user!', 'XHash', MB_OK or MB_ICONEXCLAMATION);

    H_EMPTY_DIRECTORY:
      MessageBox(0,'Empty directory!', 'XHash', MB_OK or MB_ICONERROR);

    H_CANNOT_CREATE_HASH_FILE:
      MessageBox(0,'Cannot create hash file!', 'XHash', MB_OK or MB_ICONEXCLAMATION);

    H_INTERNAL_ERROR:
      MessageBox(0,'Hash generation failed, Internal error!', 'XHash', MB_OK or MB_ICONEXCLAMATION);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  FA_Report: string;
begin
  if SelectDirectory('Select Folder', GetCurrentDir, FA_Report) then
    if FA_Report <> '' then
    begin
      Memo2.Lines.SaveToFile(FA_Report +'\MC_Result1.txt');
      //Memo1.Lines.SaveToFile(FA_Report +'\MC_Result2.txt');
    end
    else
    if FA_Report = '' then
      MessageBox(0, 'Failed to save result.', 'Error', MB_OK or MB_ICONEXCLAMATION);
end;

procedure TForm1.Button40Click(Sender: TObject);
var
  HashResult: Integer;
  HashHex: WideString;
begin
  Memo13.Lines.Clear;
  CancelAll := False;

  Ok      := 0;
  Bad     := 0;
  Missing := 0;

  HashResult := VerifyHashesFromFile(Edit45.Text, Edit44.Text,
    StrToInt(NumberBox8.Text), False, ChkHashMultiCallback);

  case HashResult of
    H_PROCESS_DONE:
      MessageBox(0, 'Hash verification successful!', 'XHash', MB_OK or MB_ICONINFORMATION);

    H_HASH_GENERATE_ERROR:
      MessageBox(0,'Hash verification failed!', 'XHash', MB_OK or MB_ICONEXCLAMATION);

    H_INVALID_DIRECTORY:
      MessageBox(0,'Invalid directory!', 'XHash', MB_OK or MB_ICONERROR);

    H_PROCESS_ABORTED:
      MessageBox(0,'Hash verification was canceled by user!', 'XHash', MB_OK or MB_ICONEXCLAMATION);

    H_EMPTY_DIRECTORY:
      MessageBox(0,'Empty directory!', 'XHash', MB_OK or MB_ICONERROR);

    H_CANNOT_CREATE_HASH_FILE:
      MessageBox(0,'Cannot create hash file!', 'XHash', MB_OK or MB_ICONEXCLAMATION);

    H_INTERNAL_ERROR:
      MessageBox(0,'Hash verification failed, Internal error!', 'XHash', MB_OK or MB_ICONEXCLAMATION);
  end;
end;

procedure TForm1.Button41Click(Sender: TObject);
begin
  ExecAndNoWait(GetAnySource('..\Compression\FreeArc'), '');
end;

procedure TForm1.Button42Click(Sender: TObject);
begin
  sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  if MessageBox(0,'Are you sure you want to stop any progress?', 'Really?',
    MB_ICONEXCLAMATION or MB_OKCANCEL) = IDOK then
  begin
    ISCmdStop;
  end;
end;

procedure TForm1.Button43Click(Sender: TObject);
begin
  sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  if MessageBox(0,'Are you sure you want to stop any progress?', 'Really?',
    MB_ICONEXCLAMATION or MB_OKCANCEL) = IDOK then
  begin
    ISCmdStop;
  end;
end;

procedure TForm1.Button44Click(Sender: TObject);
begin
  sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  if MessageBox(0,'Are you sure you want to stop any progress?', 'Really?',
    MB_ICONEXCLAMATION or MB_OKCANCEL) = IDOK then
  begin
    ISCmdStop;
  end;
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
  Edit12.Visible := True;
  Memo3.Lines.Clear;
  Memo4.Lines.Clear;
  Edit12.Text:= 'Compressing...';
  Edit42.Visible := True;
  Edit43.Visible := True;
  ArcTime1.Enabled := True;
  Edit42.Text := '';
  Edit43.Text := '';
  CheckBox14.Visible := True;
  Button44.Visible := True;

  if CheckBox11.IsChecked = True then
    with TForm5.Create(nil) do
    try
      SevenZip_Time.Enabled:= True;
      ShowModal;
    finally
      Free;
    end;

  if CheckBox4.IsChecked = True then
    SFXOutput:= Edit9.Text
  else if CheckBox4.IsChecked = False then
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
  else if Edit10.Text = '' then
    Result7z := Command7z +Thread7z +Method7z +Archive7z +Source7z;

  DateAndTimeZ := Now;
  Memo3.Lines.Add('Mini Compressor AIO - Compressing...');
  Memo3.Lines.Add('Date & Time: ' +DateToStr(DateAndTimeZ) +' | ' +TimeToStr(DateAndTimeZ));
  Memo3.Lines.Add('');
  Memo3.Lines.Add('    Source: ' +Edit8.Text);
  Memo3.Lines.Add('    Output: ' +Edit9.Text +'\' +Edit11.Text);
  Memo3.Lines.Add('    Method: ' +Method7z);
  Memo3.GoToTextEnd;

  Handle7z:= FmxHandleToHWND(Handle);
  Error7z:= False;
  ISCmdInit(Handle7z);

  if ISCmdRun(GetAnySource('..\Compression\7-Zip\7z.exe'), Result7z,
    '', @UpdateLine2) then
    Error7z:= False else Error7z:= True;

  Edit12.Text:= 'Processing...';
  ArcTime1.Enabled := False;
  Edit42.Text := 'Ending...';
  Edit43.Text := 'Processing of Files Exists...';
  Arc3.EndAngle:= 0;

  Application.ProcessMessages;
  Sleep(150);

  if FileExists(GetAnySource('temp.7z')) then
  begin
    CopyFile(GetAnySource('temp.7z'),PChar(Edit9.Text +'\' +Edit11.Text),false);

    Application.ProcessMessages;
    Sleep(2000);

    DeleteFile(GetAnySource('temp.7z'));
  end
  else if not FileExists(GetAnySource('temp.7z')) then
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
        SFXCommand:= 'copy /b "' +GetAnySource('..\Compression\7-Zip\7z.sfx') +'" + "'
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

        ExecAndWait(FmxHandleToHWND(Handle), GetAnySource('Cmd_MiniCompressor.exe'), GetAnySource('SFX_Make.bat'), '');
        if FileExists(GetAnySource('MC_CMD.ini')) then DeleteFile(GetAnySource('MC_CMD.ini'));

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

      if FileExists(Edit8.Text + '\Hash.md5') then
        DeleteFile(PChar(Edit8.Text + '\Hash.md5'));
    end
    else if not FileExists(Edit9.Text +'\' +Edit11.Text) then
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

      if FileExists(Edit8.Text + '\Hash.md5') then
        DeleteFile(PChar(Edit8.Text + '\Hash.md5'));
    end;
  end
  else if Error7z = True then
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
    MessageBox(0,'Your compression was failed.', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
    Edit12.Text:= 'Failed.';

    if FileExists(Edit8.Text + '\Hash.md5') then
      DeleteFile(PChar(Edit8.Text + '\Hash.md5'));
  end;
  Button6.Visible := True;
  Button5.Visible := True;
  Edit12.Visible := False;
  Edit42.Visible := False;
  Edit43.Visible := False;
  CheckBox14.Visible := False;
  CheckBox14.IsChecked := False;
  Button44.Visible := False;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  TabControl3.TabIndex := 0;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  Report7z: string;
  Dir: string;
begin
  Report7z:= '';
  if SelectDirectory('Select Folder', GetCurrentDir, Dir) then
    Report7z:= Dir;

  if Report7z <> '' then
  begin
    Memo3.Lines.SaveToFile(Report7z + '\MC_Result1.txt');
    Memo4.Lines.SaveToFile(Report7z + '\MC_Result1.txt');
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
  else if not FileExists(IconImageChange) then
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

procedure TForm1.CheckBox12Change(Sender: TObject);
begin
  if Checkbox12.IsChecked then
  begin
    ISCmdPause;
    CheckBox12.Text := '►';
  end else begin
    ISCmdResume;
    CheckBox12.Text := '||';
  end;
end;

procedure TForm1.CheckBox13Change(Sender: TObject);
begin
  if Checkbox13.IsChecked then
  begin
    ISCmdPause;
    CheckBox13.Text := '►';
  end else begin
    ISCmdResume;
    CheckBox13.Text := '||';
  end;
end;

procedure TForm1.CheckBox14Change(Sender: TObject);
begin
  if Checkbox14.IsChecked then
  begin
    ISCmdPause;
    CheckBox14.Text := '►';
  end else begin
    ISCmdResume;
    CheckBox14.Text := '||';
  end;
end;

procedure TForm1.CheckBox15Change(Sender: TObject);
begin
  if CheckBox15.IsChecked = True then
  begin
    CheckBox15.Text:= 'Enable';
    PopupBox8.Enabled:= CheckBox15.IsChecked;
    Edit47.Enabled:= False;
    PopupBox8.OnChange(nil);
  end else
  begin
    CheckBox15.Text:= 'Disable';
    PopupBox8.Enabled:= CheckBox15.IsChecked;
    Edit47.Enabled:= False;
    Edit47.Text:= '';
  end;
end;

procedure TForm1.CheckBox16Change(Sender: TObject);
begin
  if CheckBox16.IsChecked = True then
  begin
    CheckBox16.Text:= 'Enable';
    PopupBox9.Enabled:= CheckBox16.IsChecked;
    Edit48.Enabled:= False;
    PopupBox9.OnChange(nil);
  end else
  begin
    CheckBox16.Text:= 'Disable';
    PopupBox9.Enabled:= CheckBox16.IsChecked;
    Edit48.Enabled:= False;
    Edit48.Text:= '';
  end;
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
  case CheckBox1.IsChecked of
    True:
    begin
      BASS_ChannelPause(BassMusicPlayer);
    end;
    False:
    begin
      BASS_ChannelPlay(BassMusicPlayer, false);
    end;
  end;
end;

procedure TForm1.CheckBox2Change(Sender: TObject);
begin
  Edit14.Enabled := CheckBox2.IsChecked;
end;

procedure TForm1.CheckBox3Change(Sender: TObject);
begin
  Edit20.Enabled := CheckBox3.IsChecked;
end;

procedure TForm1.CheckBox4Change(Sender: TObject);
begin
  Edit26.Enabled := CheckBox4.IsChecked;
end;

procedure TForm1.CheckBox7Change(Sender: TObject);
begin
  Edit34.Enabled := CheckBox7.IsChecked;
end;

procedure TForm1.CheckBox8Change(Sender: TObject);
begin
  Form1.FullScreen := CheckBox8.IsChecked;
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

procedure TForm1.FloatAnimation2Finish(Sender: TObject);
begin
  Image6.Visible := False;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	BASS_Free();
  Hide;

  if DirectoryExists(GetAnySource('..\Tools\InstallerCreator\temp')) then
    TDirectory.Delete(GetAnySource('..\Tools\InstallerCreator\temp'), True);

  sndPlaySound(GetAnySource('..\Resources\MC_Close.wav'),SND_ASYNC);
  with TForm4.Create(nil) do
  begin
    //Height:= 117;
    //Width := 561;
    ShowModal;
    Free;
  end;

  if FileExists(GetAnySource('..\Installer\Info.txt')) then
    DeleteFile(GetAnySource('..\Installer\Info.txt'));
  if FileExists(GetAnySource('..\Installer\Graphics\Background.jpg')) then
    DeleteFile(GetAnySource('..\Installer\Graphics\Background.jpg'));
  if FileExists(GetAnySource('..\Installer\Graphics\Music.mp3')) then
    DeleteFile(GetAnySource('..\Installer\Graphics\Music.mp3'));
  if FileExists(GetAnySource('..\Installer\Game.ico')) then
    DeleteFile(GetAnySource('..\Installer\Game.ico'));
  if FileExists(GetAnySource('..\Resources\ISD_List_Manual.ini')) then
    DeleteFile(GetAnySource('..\Resources\ISD_List_Manual.ini'));

  Application.ProcessMessages;
  Sleep(150);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i, j, paramno: int64;
  EnoughFA, Enough7za1, Enough7za2: boolean;
  WritePBFA, WritePB7za: string;
  TimeAndDateYo: TDateTime;

  LoadSkinConfig: string;
  Apply_Skin: string;
  Skin_Set1, Skin_Set2: string;
  Skin_SS_Set: string;
  HashExistFile: boolean;
  AFDate: TDateTime;
  AFDateStr1, AFDateStr2, AFDateStr3: string;
  AFD1, AFD2, AFD3: int64;
  BASS_UrlRadio: string;
begin
  paramno := 1;

  for paramno := 1 to ParamCount do
  begin
    if ParamStr(paramno) = '/config' then
    begin
      with TForm9.Create(nil) do
      begin
        ShowModal;
        Free;
      end;
      Halt(1);
    end;
  end;

  ClientWidth:= 1280;
  ClientHeight := 720;

  BassHandle := FmxHandleToHWND(Handle);
  BASS_Init(-1, 44100, 0, BassHandle, 0);
  BASS_Start();

  BASS_SetConfig(BASS_CONFIG_NET_PLAYLIST, 1);
  BASS_PluginLoad('bassopus.dll', BASS_Unicode);
  BASS_PluginLoad('basshls.dll', BASS_Unicode);

  Image5.Bitmap.LoadFromFile(GetAnySource('..\Resources\Transparent.png'));

  AFDate:= Now;
  AFD1 := StrToInt64(IniRead(GetAnySource('..\Resources\AFD.db'),'April_Fools_Date','Day'));
  AFD2 := StrToInt64(IniRead(GetAnySource('..\Resources\AFD.db'),'April_Fools_Date','Month'));
  AFD3 := StrToInt64(IniRead(GetAnySource('..\Resources\AFD.db'),'April_Fools_Date','Year'));

  AFDateStr1 := DateToStr(AFDate);
  AFDateStr2 := IntToStr(AFD1) + '/' + IntToStr(AFD2) + '/' + IntToStr(AFD3);
  AFDateStr3 := IntToStr(AFD1 + 1) + '/' + IntToStr(AFD2) + '/' + IntToStr(AFD3);

  if AFDateStr1 = AFDateStr3 then
  begin
    if IniRead(GetAnySource('..\Resources\AFD.db'),'Prank','NextYear') <> '' then
    begin
      IniCreate(GetAnySource('..\Resources\AFD.db'),'April_Fools_Date','Year',IntToStr(AFD3 + 1));
      IniCreate(GetAnySource('..\Resources\AFD.db'),'Prank','NextYear','');
    end else
    if IniRead(GetAnySource('..\Resources\AFD.db'),'Prank','NextYear') = '' then
      ShowMessage('Done updated.');
  end;

  BassHandle := FmxHandleToHWND(Handle);
  BASS_Init(-1, 44100, 0, BassHandle, 0);
  BASS_Start();

  BASS_SetConfig(BASS_CONFIG_NET_PLAYLIST, 1);
  BASS_PluginLoad('bassopus.dll', BASS_Unicode);
  BASS_PluginLoad('basshls.dll', BASS_Unicode);

  sndPlaySound(GetAnySource('..\Resources\MC_Open.wav'),SND_ASYNC);
  with TForm3.Create(nil) do
  begin
    //Height:= 117;
    //Width := 561;
    ShowModal;
    Free;
  end;

  if AFDateStr1 = AFDateStr2 then
  begin
    if IniRead(GetAnySource('..\Resources\AFD.db'),'Prank','NextYear') = '' then
      IniCreate(GetAnySource('..\Resources\AFD.db'),'Prank','NextYear',IntToStr(AFD3 + 1));
    with TForm7.Create(nil) do
    begin
      ShowModal;
      Free;
    end;
  end;

  if FileExists(GetAnySource('..\Resources\Hash_Type.db')) and
    FileExists(GetAnySource('..\Resources\Hash_Ext.db')) then
    HashExistFile := True
  else
    HashExistFile := False;

  if HashExistFile = True then
  begin
    PopupBox6.Items.LoadFromFile(GetAnySource('..\Resources\Hash_Type.db'));
    PopupBox6.ItemIndex := 1;

    PopupBox7.Items.LoadFromFile(GetAnySource('..\Resources\Hash_Ext.db'));
    PopupBox7.ItemIndex := PopupBox6.ItemIndex;
  end
  else
  if HashExistFile = False then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Resources\Hash_Type.db"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  TimeAndDateYo:= Now;
  MenuItem3.Text:= DateToStr(TimeAndDateYo) +' | ' +TimeToStr(TimeAndDateYo);

  Arc1.EndAngle := 0;
  Arc2.EndAngle := 0;
  Arc3.EndAngle := 0;

  CheckBox15.IsChecked := False;
  CheckBox16.IsChecked := False;
  FA_IgnoreProtectRecover := False;
  FA_IgnoreProtectRecover2 := False;

  j:= 1;
  if FileExists(GetAnySource('..\Resources\Skin\_Skin.ini')) then
  begin
    repeat
      PopupBox4.Items.Add(IniRead(GetAnySource('..\Resources\Skin\_Skin.ini'),
        'Skin' ,IntToStr(j)));
      j:= j + 1;
    until IniRead(GetAnySource('..\Resources\Skin\_Skin.ini'), 'Skin' ,IntToStr(j)) = '';
    PopupBox4.Text:=IniRead(GetAnySource('..\Resources\Skin\_Skin.ini'),
        'Skin_Use' ,'Set');

    PopupBox4.ItemIndex := StrToInt(IniRead(GetAnySource('..\Resources\Skin\_Skin.Ini'),
      'Skin_Use', 'Set')) - 1;

    LoadSkinConfig:= GetAnySource('..\Resources\Skin\_Skin.Ini');
    Form1.StyleBook := StyleBook2;
    Apply_Skin := '..\Resources\Skin\';
    Skin_Set1:= IniRead(LoadSkinConfig,'Skin_Use','Set');
    Skin_Set2:= IniRead(LoadSkinConfig,'Skin_Files',Skin_Set1);
    StyleBook1.LoadFromFile(GetAnySource(Apply_Skin) +Skin_Set2);
    Form1.StyleBook := StyleBook1;

    Skin_SS_Set:= IniRead(LoadSkinConfig,'Skin_Screenshot',Skin_Set1);
    Image4.Bitmap.LoadFromFile(GetAnySource('..\Resources\Skin\') +Skin_SS_Set);
  end
  else
  if not FileExists(GetAnySource('..\Resources\Skin\_Skin.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Resources\Skin\_Skin.ini"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Version.ini')) then
    MenuItem17.Text := 'v' +IniRead(GetAnySource('..\Version.ini') ,
      'Version' ,'Current')
  else
  if not FileExists(GetAnySource('..\Version.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Version.ini"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Compression\FreeArc\arc.ini')) then
    Memo11.Lines.LoadFromFile(GetAnySource('..\Compression\FreeArc\arc.ini'))
  else
  if not FileExists(GetAnySource('..\Compression\FreeArc\arc.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Installer\Graphics\Background.jpg"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Resources\IM_Bg.jpg')) then
    Image3.Bitmap.LoadFromFile(GetAnySource('..\Resources\IM_Bg.jpg'))
  else
  if not FileExists(GetAnySource('..\Resources\IM_Bg.jpg')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Resources\IM_Bg.jpg"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Resources\IM_Info.txt')) then
    Memo7.Lines.LoadFromFile(GetAnySource('..\Resources\IM_Info.txt'))
  else
  if not FileExists(GetAnySource('..\Resources\IM_Info.txt')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Resources\IM_Info.txt"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Installer\Resources\Icon.ico')) then
    Image2.Bitmap.LoadFromFile(GetAnySource('..\Installer\Resources\Icon.ico'))
  else
  if not FileExists(GetAnySource('..\Installer\Resources\Icon.ico')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Installer\Resources\Icon.ico"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  if FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
    Image1.Bitmap.LoadFromFile(GetAnySource('..\Resources\Wallpaper.jpg'))
  else
  if not FileExists(GetAnySource('..\Resources\Wallpaper.jpg')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Resource\Wallpaper.jpg"', 'Error',
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
      MessageBox(0,'Failed to read' +#13 +#13
        +'"Compression\FreeArc.ini"', 'Error',
        MB_ICONEXCLAMATION or MB_OK);
    end;
  end
  else
  if not FileExists(GetAnySource('..\Compression\FreeArc.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Compression\FreeArc.ini"', 'Error',
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
      MessageBox(0,'Failed to read' +#13 +#13
        +'"Compression\7Zip.ini"', 'Error',
        MB_ICONEXCLAMATION or MB_OK);
    end;
  end
  else
  if not FileExists(GetAnySource('..\Compression\7Zip.ini')) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
    MessageBox(0,'Missing file' +#13 +#13
      +'"Compression\7Zip.ini"', 'Error',
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
    MessageBox(0,'Missing file' +#13 +#13
      +'"Compression\OSCDIMG.ini"', 'Error',
      MB_ICONERROR or MB_OK);
  end;

  BASS_UrlRadio:= IniRead(GetAnySource('..\Resources\BASS_Setting.ini'),'BASS','Radio');
  if BASS_UrlRadio <> '' then
  begin
    BassMusicPlayer := BASS_StreamCreateURL(PChar(BASS_UrlRadio),0,
      BASS_STREAM_BLOCK or BASS_STREAM_STATUS or BASS_STREAM_AUTOFREE {$IFDEF UNICODE} or BASS_UNICODE {$ENDIF},nil,0);

    BASS_ChannelSetSync(BassMusicPlayer, BASS_SYNC_META, 0, nil, nil);
    BASS_ChannelSetSync(BassMusicPlayer, BASS_SYNC_OGG_CHANGE, 0, nil, nil);
    BASS_ChannelSetSync(BassMusicPlayer, $10300, 0, nil, nil);
    BASS_ChannelSetSync(BassMusicPlayer, BASS_SYNC_STALL, 0, nil, nil);
    BASS_ChannelSetSync(BassMusicPlayer, BASS_SYNC_END, 0, nil, nil);

    BASS_ChannelPlay(Form1.BassMusicPlayer, False);
  end else
  if BASS_UrlRadio = '' then
  begin
    if FileExists(GetAnySource('..\Resources\Music.mp3')) then
    begin
      BassMusicFile := PChar(GetAnySource('..\Resources\Music.mp3'));
      BassMusicPlayer := BASS_StreamCreateFile(False, BassMusicFile, 0, 0,
        BASS_SAMPLE_LOOP {$IFDEF UNICODE} or BASS_UNICODE {$ENDIF});
      BassVolume := StrToFloat(IniRead(GetAnySource('..\Resources\BASS_Setting.ini'),
        'BASS', 'Volume'));
      BASS_ChannelSetAttribute(Form1.BassMusicPlayer, BASS_ATTRIB_VOL,
        Round(BassVolume) / 100);
      BASS_ChannelPlay(BassMusicPlayer, False);
    end else
    if not FileExists(GetAnySource('..\Resources\Music.mp3')) then
    begin
      sndPlaySound(GetAnySource('..\Resources\MC_ERROR.wav'),SND_ASYNC);
      MessageBox(0,'Missing file' +#13 +#13
        +'"Resources\Music.mp3"', 'Error',
        MB_ICONERROR or MB_OK);
    end;
  end;
end;

procedure TForm1.Memo12ChangeTracking(Sender: TObject);
begin
  Memo12.GoToTextEnd;
end;

procedure TForm1.Memo13ChangeTracking(Sender: TObject);
begin
  Memo13.GoToTextEnd;
end;

procedure TForm1.Memo1ChangeTracking(Sender: TObject);
begin
  Memo1.GoToTextEnd;
end;

procedure TForm1.Memo4ChangeTracking(Sender: TObject);
begin
  Memo4.GoToTextEnd;
end;

procedure TForm1.Memo8ChangeTracking(Sender: TObject);
begin
  Memo8.GoToTextEnd;
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  ExecAndNoWait(GetAnySource('..\Tools\IS5\Compil32.exe'), '');
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  ExecAndNoWait(GetAnySource('..\Tools\SafeCopy\SafeCopyFree.exe'), '');
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  ExecAndNoWait(GetAnySource('..\Tools\GraphicStudio.exe'), '');
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  with TForm8.Create(nil) do
  begin
    ShowModal;
    Free;
  end;
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
begin
  with TForm6.Create(nil) do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
const
  IC_Root = '.icp';
var
  IC_Registry: TRegistry;
  IC_ConfirmReg: string;
  IC_CreateShortcut: boolean;
begin
  IC_Registry:= TRegistry.Create(KEY_READ);
  with IC_Registry do
  begin
    RootKey := HKEY_CLASSES_ROOT;
    if OpenKey(IC_Root,False) then
    begin
      IC_ConfirmReg := ReadString('');
    end;
    Free;
  end;

  if IC_ConfirmReg = '' then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    if MessageBox(0,'Do you want to create a shortcut?', 'Permission',
      MB_ICONQUESTION or MB_OKCANCEL) = IDOK then
    begin
      IC_CreateShortcut := True;
    end
    else
    begin
      IC_CreateShortcut := False;
    end;

    if IC_ConfirmReg = '' then
    begin
      if IC_CreateShortcut = True then
        ExecAndWait(FmxHandleToHWND(Handle),
          GetAnySource('..\Resources\IC_Registry2.exe'),'/verysilent',
          GetAnySource('..\Resources'))
      else
      if IC_CreateShortcut = False then
        ExecAndWait(FmxHandleToHWND(Handle),
          GetAnySource('..\Resources\IC_Registry.exe'),'/verysilent',
          GetAnySource('..\Resources'));
    end;

    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Associate ".icp" files was created', 'Finished',
      MB_ICONINFORMATION or MB_OK);
  end
  else
  if IC_ConfirmReg = 'InstallerCreatorProject' then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Associate ".icp" files was exists', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
  end;
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
const
  IC_Root = '.icp';
  IC_Root2 = 'InstallerCreatorProject';
var
  IC_Registry: TRegistry;
  IC_ConfirmReg: string;
  IC_ConfirmReg2: boolean;
begin
  IC_Registry:= TRegistry.Create(KEY_READ);
  with IC_Registry do
  begin
    RootKey := HKEY_CLASSES_ROOT;
    if OpenKey(IC_Root,False) then
    begin
      IC_ConfirmReg := ReadString('');
    end;
    Free;
  end;

  if IC_ConfirmReg = 'InstallerCreatorProject' then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    if MessageBox(0,'Do you want to remove associate ".icp" fles?', 'Question',
      MB_ICONQUESTION or MB_OKCANCEL) = IDOK then
      IC_ConfirmReg2 := True
    else
      IC_ConfirmReg2 := False;

    if IC_ConfirmReg2 = True then
    begin
      ExecAndWait(FmxHandleToHWND(Handle),
        GetAnySource('..\Resources\IC_Unregistry.exe'), '',
        GetAnySource('..\Resources'));

      sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
      MessageBox(0,'Associate ".icp" files was removed', 'Finished',
        MB_ICONINFORMATION or MB_OK);
    end;
  end else
  if IC_ConfirmReg = '' then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Associate ".icp" files wasn''t exists', 'Failed',
      MB_ICONEXCLAMATION or MB_OK);
  end;
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
var
  FA_Filename: string;
  FA_ODialog: TOpenDialog;
begin
  FA_Filename:= '';
  FA_ODialog:= TOpenDialog.Create(nil);
  with FA_ODialog do
  begin
    Title:= 'Locate your FreeArc file';
    Filter:= '.arc|*.arc|All files|*.*';
    if Execute then
      FA_Filename:= FileName;
    Free;
  end;

  if FileExists(FA_Filename) then
    ExecAndNoWait(GetAnySource('..\Tools\FreeArc_P.exe'), '"' +FA_Filename +'"')
  else
  if not FileExists(FA_Filename) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Failed to loaded file.', 'Error',
      MB_ICONEXCLAMATION or MB_OK);
  end;
end;

procedure TForm1.MenuItem25Click(Sender: TObject);
begin
  sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
  if MessageBox(0,'Which do you want to enable?'
    +#13 +#13
    +'OK = Enable UnArc Protect' +#13 +'Cancel = Disable UnArc Protect',
    'UnArc Protect', MB_ICONQUESTION or MB_OKCANCEL) = IDOK then
  begin
    IniCreate(GetAnySource('..\Resources\UnArc.Ini'), 'Config_UnArc', 'Protect', '1');
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0, 'UnArc Protect is Enable. You can compile with:'
      +#13 +#13
      +'* Installer Creator v3.1' +#13
      +'* Inno Maker' +#13
      +'* SFX'
      +#13 +#13
      +'Feel free to contact developer if you have any problem.', 'Succesful',
      MB_ICONINFORMATION or MB_OK);
  end else begin
    IniCreate(GetAnySource('..\Resources\UnArc.Ini'), 'Config_UnArc', 'Protect', '0');
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0, 'UnArc Protect is Disable. You can compile with:'
      +#13 +#13
      +'* Installer Creator v3.1' +#13
      +'* Inno Maker' +#13
      +'* SFX'
      +#13 +#13
      +'Feel free to contact developer if you have any problem.', 'Succesful',
      MB_ICONINFORMATION or MB_OK);
  end;
end;

procedure TForm1.MenuItem28Click(Sender: TObject);
begin
  with TForm2.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TForm1.MenuItem29Click(Sender: TObject);
begin
  Image6.Visible := True;
  FloatAnimation1.Enabled:= False;
  FloatAnimation1.Enabled:= True;
end;

procedure TForm1.MenuItem30Click(Sender: TObject);
begin
  ExecAndWait(FmxHandleToHWND(Handle),
    GetAnySource('..\Resources\XTool\XTool_Plugin.exe'), '',
    GetAnySource('..\Resources\XTool'));
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  ExecAndNoWait(GetAnySource('..\Tools\AllDup\AllDupPortable.exe'), '');
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  ExecAndNoWait(GetAnySource('..\Tools\DirectorySlicer\DirectorySlicer.exe'), '');
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  ExecAndNoWait(GetAnySource('..\Tools\GFS\GFS.exe'), '');
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  ExecAndNoWait(GetAnySource('..\Tools\InnoSProtect\InnoSProtect.exe'), '');
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  ExecAndNoWait(GetAnySource('..\Tools\InstallerCreator\Bin\InstallerCreator.exe'), '');
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

procedure TForm1.PopupBox4Change(Sender: TObject);
var
  LoadFileSkin: string;
  Skin_ScreenShot: string;
  Skin_SS_Set: string;
  LoadSSFileSkin: string;
begin
  LoadFileSkin:= GetAnySource('..\Resources\Skin\_Skin.Ini');
  Skin_ScreenShot:= '..\Resources\Skin\SS\';
  LoadSSFileSkin:= IniRead(LoadFileSkin,'Skin_No',PopupBox4.Text);
  Skin_SS_Set:= IniRead(LoadFileSkin,'Skin_Screenshot',LoadSSFileSkin);


  //Application.ProcessMessages;
  //Sleep(150);
  FloatAnimation3.Enabled := False;
  FloatAnimation3.Enabled := True;
  SkinPic.Enabled:= True;
end;

procedure TForm1.PopupBox6Change(Sender: TObject);
begin
  PopupBox7.ItemIndex := PopupBox6.ItemIndex;
  NumberBox8.Text := IntToStr(PopupBox6.ItemIndex + 1);
  if Edit45.Text <> '' then
    Edit45.Text := SaveDialog1.FileName + Popupbox7.Text;
end;

procedure TForm1.PopupBox8Change(Sender: TObject);
var
  WritePBFA: string;
begin
  if PopupBox8.Text = 'Add: 5%' then
  begin
    TrackBar1.Enabled:= False;
    TrackBar1.Value := 1;
    WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc.ini'), 'Protection', IntToStr(PopupBox8.ItemIndex + 1));
    Edit47.Text := WritePBFA;
    Edit47.Enabled := False;
  end;
  if PopupBox8.Text = 'Add: 10%' then
  begin
    TrackBar1.Enabled:= False;
    TrackBar1.Value := 1;
    WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc.ini'), 'Protection', IntToStr(PopupBox8.ItemIndex + 1));
    Edit47.Text := WritePBFA;
    Edit47.Enabled := False;
  end;
  if PopupBox8.Text = 'Add: 20%' then
  begin
    TrackBar1.Enabled:= False;
    TrackBar1.Value := 1;
    WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc.ini'), 'Protection', IntToStr(PopupBox8.ItemIndex + 1));
    Edit47.Text := WritePBFA;
    Edit47.Enabled := False;
  end;
  if PopupBox8.Text = 'Add: 20%' then
  begin
    TrackBar1.Enabled:= False;
    TrackBar1.Value := 1;
    WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc.ini'), 'Protection', IntToStr(PopupBox8.ItemIndex + 1));
    Edit47.Text := WritePBFA;
    Edit47.Enabled := False;
  end;
  if PopupBox8.Text = 'Add: 10mb' then
  begin
    TrackBar1.Enabled:= False;
    TrackBar1.Value := 1;
    WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc.ini'), 'Protection', IntToStr(PopupBox8.ItemIndex + 1));
    Edit47.Text := WritePBFA;
    Edit47.Enabled := False;
  end;
  if PopupBox8.Text = 'Add for recovery via Internet: 0.01%' then
  begin
    TrackBar1.Enabled:= False;
    TrackBar1.Value := 1;
    WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc.ini'), 'Protection', IntToStr(PopupBox8.ItemIndex + 1));
    Edit47.Text := WritePBFA;
    Edit47.Enabled := False;
  end;
  if PopupBox8.Text = 'CUSTOM' then
  begin
    TrackBar1.Enabled:= True;
    Edit47.Text := '-rr1';
    Edit47.Enabled := False;
  end;
end;

procedure TForm1.PopupBox9Change(Sender: TObject);
var
  WritePBFA: string;
begin
  if PopupBox9.Text = 'Add: 5%' then
  begin
    TrackBar2.Enabled:= False;
    TrackBar2.Value := 1;
    WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc.ini'), 'Protection', IntToStr(PopupBox9.ItemIndex + 1));
    Edit48.Text := WritePBFA;
    Edit48.Enabled := False;
  end;
  if PopupBox9.Text = 'Add: 10%' then
  begin
    TrackBar2.Enabled:= False;
    TrackBar2.Value := 1;
    WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc.ini'), 'Protection', IntToStr(PopupBox9.ItemIndex + 1));
    Edit48.Text := WritePBFA;
    Edit48.Enabled := False;
  end;
  if PopupBox9.Text = 'Add: 20%' then
  begin
    TrackBar2.Enabled:= False;
    TrackBar2.Value := 1;
    WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc.ini'), 'Protection', IntToStr(PopupBox9.ItemIndex + 1));
    Edit48.Text := WritePBFA;
    Edit48.Enabled := False;
  end;
  if PopupBox9.Text = 'Add: 20%' then
  begin
    TrackBar2.Enabled:= False;
    TrackBar2.Value := 1;
    WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc.ini'), 'Protection', IntToStr(PopupBox9.ItemIndex + 1));
    Edit48.Text := WritePBFA;
    Edit48.Enabled := False;
  end;
  if PopupBox9.Text = 'Add: 10mb' then
  begin
    TrackBar2.Enabled:= False;
    TrackBar2.Value := 1;
    WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc.ini'), 'Protection', IntToStr(PopupBox9.ItemIndex + 1));
    Edit48.Text := WritePBFA;
    Edit48.Enabled := False;
  end;
  if PopupBox9.Text = 'Add for recovery via Internet: 0.01%' then
  begin
    TrackBar2.Enabled:= False;
    TrackBar2.Value := 1;
    WritePBFA:= IniRead(GetAnySource('..\Compression\FreeArc.ini'), 'Protection', IntToStr(PopupBox9.ItemIndex + 1));
    Edit48.Text := WritePBFA;
    Edit48.Enabled := False;
  end;
  if PopupBox9.Text = 'CUSTOM' then
  begin
    TrackBar2.Enabled:= True;
    Edit48.Text := '-rr1';
    Edit48.Enabled := False;
  end;
end;

procedure TForm1.SearchEditButton10Click(Sender: TObject);
var
  Dir: string;
begin
  if SelectDirectory('Select Folder', ExtractFilePath(GetCurrentDir), Dir) then
    Edit32.Text:= Dir;
end;

procedure TForm1.SearchEditButton11Click(Sender: TObject);
var
  Dir: string;
begin
  if SelectDirectory('Select Folder', ExtractFilePath(GetCurrentDir), Dir) then
    Edit33.Text:= Dir;
end;

procedure TForm1.SearchEditButton12Click(Sender: TObject);
var
  Dir: string;
begin
  if SelectDirectory('Select source folder', ExtractFilePath(GetCurrentDir), Dir) then
    Edit44.Text := Dir;
end;

procedure TForm1.SearchEditButton13Click(Sender: TObject);
begin
  Edit45.Text := '';
  SaveDialog1.Title := 'Save your hash file';
  SaveDialog1.Filter := 'All files|*.*';
  SaveDialog1.Execute;
  if SaveDialog1.FileName <> '' then
    Edit45.Text := SaveDialog1.FileName + Popupbox7.Text;
end;

procedure TForm1.SearchEditButton1Click(Sender: TObject);
var
  Dir: string;
begin
  if SelectDirectory('Select Folder', ExtractFilePath(GetCurrentDir), Dir) then
    Edit1.Text := Dir;
end;

procedure TForm1.SearchEditButton2Click(Sender: TObject);
var
  Dir: string;
begin
  //Edit2.Text := SelDir;

  if SelectDirectory('Select Folder', ExtractFilePath(GetCurrentDir), Dir) then
    Edit2.Text := Dir;
end;

procedure TForm1.SearchEditButton3Click(Sender: TObject);
var
  Dir: string;
begin
  if SelectDirectory('Select Folder', ExtractFilePath(GetCurrentDir), Dir) then
    Edit8.Text := Dir;
end;

procedure TForm1.SearchEditButton4Click(Sender: TObject);
var
  Dir: string;
begin
  if SelectDirectory('Select Folder', ExtractFilePath(GetCurrentDir), Dir) then
    Edit9.Text := Dir;
end;

procedure TForm1.SearchEditButton5Click(Sender: TObject);
var
  Dir: string;
begin
  if SelectDirectory('Select Folder', ExtractFilePath(GetCurrentDir), Dir) then
    Edit20.Text := Dir;
end;

procedure TForm1.SearchEditButton6Click(Sender: TObject);
var
  MusicInstaller: string;
begin
  OpenDialog1.FileName := '';
  OpenDialog1.Title := 'Choose your music installer.';
  OpenDialog1.Filter:= '.mp3|*.mp3|All files|*.*';
  OpenDialog1.Execute;

  MusicInstaller := OpenDialog1.FileName;
  Edit29.Text := MusicInstaller;
  if FileExists(MusicInstaller) then
  begin
    CopyFile(PChar(MusicInstaller), GetAnySource('..\Installer\Graphics\Music.mp3'), false);
  end
  else if not FileExists(MusicInstaller) then
  begin
    sndPlaySound(GetAnySource('..\Resources\MC_OK.wav'),SND_ASYNC);
    MessageBox(0,'Failed to loaded music installer.', 'Error',
      MB_ICONEXCLAMATION or MB_OK);
  end;
end;

procedure TForm1.SearchEditButton7Click(Sender: TObject);
var
  Dir: string;
begin
  if SelectDirectory('Select Folder', GetCurrentDir, Dir) then
    Edit21.Text := Dir;
end;

procedure TForm1.SearchEditButton8Click(Sender: TObject);
var
  Dir: string;
begin
  if SelectDirectory('Select Folder', GetCurrentDir, Dir) then
    Edit22.Text := Dir;
end;

procedure TForm1.SearchEditButton9Click(Sender: TObject);
var
  Dir: string;
begin
  if SelectDirectory('Select Folder', GetCurrentDir, Dir) then
    Edit30.Text := Dir;
end;

procedure TForm1.SkinPicTimer(Sender: TObject);
var
  LoadFileSkin: string;
  Skin_ScreenShot: string;
  Skin_SS_Set: string;
  LoadSSFileSkin: string;
begin
  LoadFileSkin:= GetAnySource('..\Resources\Skin\_Skin.Ini');
  Skin_ScreenShot:= '..\Resources\Skin\SS\';
  LoadSSFileSkin:= IniRead(LoadFileSkin,'Skin_No',PopupBox4.Text);
  Skin_SS_Set:= IniRead(LoadFileSkin,'Skin_Screenshot',LoadSSFileSkin);

  Image4.Bitmap.LoadFromFile(GetAnySource('..\Resources\Skin\') +Skin_SS_Set);
  SkinPic.Enabled:= False;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  TimeAndDateYo: TDateTime;
  MemoryOkay: MEMORYSTATUSEX;
begin
  TimeAndDateYo:= Now;
  MenuItem3.Text:= DateToStr(TimeAndDateYo) +' | ' +TimeToStr(TimeAndDateYo);
  MenuItem31.Text := 'BASS_CPU: ' + FloatToStrF(BASS_GetCPU, ffFixed, 4, 2);


  // ===== RISKY TO EDIT ===== //

  FillChar(MemoryOkay, SizeOf(MEMORYSTATUSEX), #0);
  MemoryOkay.dwLength := SizeOf(MemoryStatusEx);
  GlobalMemoryStatusEx (MemoryOkay);

  MenuItem15.Text := 'RAM Usage: ' + ConvertBytes(ProcessMemory) + ' - Total Memory: ' + ConvertBytes(MemoryOkay.ullTotalPhys);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  if TrackBar1.Enabled = True then
  begin
    Edit47.Text:= '-rr' + IntToStr(Round(TrackBar1.Value));

    if FA_IgnoreProtectRecover = False then
      if TrackBar1.Value > 80 then
      begin
        sndPlaySound(GetAnySource('..\Resources\MC_INFO.wav'),SND_ASYNC);
        if MessageBox(0,'Above 80% or higher would be getting increasing size.'
          +#13+ 'Are you sure about this?', 'Confused Recovery?', MB_ICONINFORMATION or MB_YESNO) = ID_YES then
          begin
            FA_IgnoreProtectRecover := True;
          end else
            TrackBar1.Value := 79;
      end;

    if FA_IgnoreProtectRecover = True then
      if TrackBar1.Value < 80 then
        FA_IgnoreProtectRecover := False;
  end;
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  if TrackBar2.Enabled = True then
  begin
    Edit48.Text:= '-rr' + IntToStr(Round(TrackBar2.Value));

    if FA_IgnoreProtectRecover2 = False then
      if TrackBar2.Value > 80 then
      begin
        sndPlaySound(GetAnySource('..\Resources\MC_INFO.wav'),SND_ASYNC);
        if MessageBox(0,'Above 80% or higher would be getting increasing size.'
          +#13+ 'Are you sure about this?', 'Confused Recovery?', MB_ICONINFORMATION or MB_YESNO) = ID_YES then
          begin
            FA_IgnoreProtectRecover2 := True;
          end else
            TrackBar2.Value := 79;
      end;

    if FA_IgnoreProtectRecover2 = True then
      if TrackBar2.Value < 80 then
        FA_IgnoreProtectRecover2 := False;
  end;
end;

end.
