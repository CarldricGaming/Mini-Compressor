unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Ani, FMX.Layouts,
  FMX.Gestures,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.Menus, FMX.TabControl,
  FMX.Memo,
  System.Rtti, FMX.Grid.Style, FMX.Grid,
  FMX.ScrollBox,
  Data.DB, FMX.EditBox, FMX.NumberBox, FMX.ExtCtrls, System.IOUtils,
  winapi.windows, FMX.Objects;

type
  TForm1 = class(TForm)
    StyleBook1: TStyleBook;
    ToolbarHolder: TLayout;
    ToolbarPopup: TPopup;
    ToolbarPopupAnimation: TFloatAnimation;
    ToolBar1: TToolBar;
    ToolbarApplyButton: TButton;
    ToolbarCloseButton: TButton;
    ToolbarAddButton: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    MenuBar1: TMenuBar;
    MenuItem1: TMenuItem;
    MenuBar2: TMenuBar;
    MenuItem2: TMenuItem;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    GroupBox5: TGroupBox;
    Edit4: TEdit;
    GroupBox6: TGroupBox;
    Edit5: TEdit;
    Button3: TButton;
    TabControl2: TTabControl;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    GroupBox7: TGroupBox;
    Edit6: TEdit;
    FreearcFile1: TOpenDialog;
    Button5: TButton;
    GroupBox8: TGroupBox;
    Edit7: TEdit;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    SearchEditButton1: TSearchEditButton;
    ClearEditButton1: TClearEditButton;
    SearchEditButton2: TSearchEditButton;
    ClearEditButton2: TClearEditButton;
    ClearEditButton4: TClearEditButton;
    ClearEditButton5: TClearEditButton;
    SearchEditButton3: TSearchEditButton;
    ClearEditButton6: TClearEditButton;
    SearchEditButton4: TSearchEditButton;
    ClearEditButton7: TClearEditButton;
    MenuItem9: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem10: TMenuItem;
    BitmapAnimation1: TBitmapAnimation;
    MenuItem12: TMenuItem;
    Panel1: TPanel;
    Button4: TButton;
    Button6: TButton;
    TabItem5: TTabItem;
    StringGrid1: TStringGrid;
    StringColumn1: TStringColumn;
    StringColumn2: TStringColumn;
    StringColumn3: TStringColumn;
    StringColumn4: TStringColumn;
    StringColumn5: TStringColumn;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    NumberBox1: TNumberBox;
    GroupBox11: TGroupBox;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit10: TEdit;
    GroupBox12: TGroupBox;
    NumberBox2: TNumberBox;
    Label4: TLabel;
    SearchEditButton7: TSearchEditButton;
    ClearEditButton10: TClearEditButton;
    SearchEditButton8: TSearchEditButton;
    ClearEditButton11: TClearEditButton;
    GroupBox13: TGroupBox;
    PopupBox1: TPopupBox;
    Edit12: TEdit;
    ClearEditButton12: TClearEditButton;
    GroupBox15: TGroupBox;
    Edit11: TEdit;
    ClearEditButton3: TClearEditButton;
    MenuItem13: TMenuItem;
    TabItem6: TTabItem;
    TabControl3: TTabControl;
    TabItem7: TTabItem;
    TabItem8: TTabItem;
    Label5: TLabel;
    Button11: TButton;
    Panel2: TPanel;
    TabControl4: TTabControl;
    TabItem9: TTabItem;
    GroupBox14: TGroupBox;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    NumberBox4: TNumberBox;
    Label6: TLabel;
    Label7: TLabel;
    ClearEditButton14: TClearEditButton;
    ClearEditButton15: TClearEditButton;
    Label8: TLabel;
    ClearEditButton16: TClearEditButton;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox16: TGroupBox;
    Label11: TLabel;
    PopupBox2: TPopupBox;
    Label12: TLabel;
    PopupBox3: TPopupBox;
    Label13: TLabel;
    PopupBox4: TPopupBox;
    Button12: TButton;
    GroupBox17: TGroupBox;
    ImageControl2: TImageControl;
    Button13: TButton;
    OpenDialog1: TOpenDialog;
    TabItem10: TTabItem;
    GroupBox18: TGroupBox;
    Label15: TLabel;
    Edit17: TEdit;
    ClearEditButton17: TClearEditButton;
    Label16: TLabel;
    PopupBox5: TPopupBox;
    Edit18: TEdit;
    ClearEditButton18: TClearEditButton;
    Label18: TLabel;
    PopupBox6: TPopupBox;
    Label19: TLabel;
    PopupBox7: TPopupBox;
    StringGrid2: TStringGrid;
    StringColumn6: TStringColumn;
    StringColumn7: TStringColumn;
    StringColumn8: TStringColumn;
    StringColumn9: TStringColumn;
    StringColumn10: TStringColumn;
    Button14: TButton;
    Button15: TButton;
    TabItem11: TTabItem;
    Button16: TButton;
    GroupBox19: TGroupBox;
    Label21: TLabel;
    PopupBox8: TPopupBox;
    Label22: TLabel;
    PopupBox9: TPopupBox;
    Edit19: TEdit;
    ClearEditButton19: TClearEditButton;
    Label24: TLabel;
    PopupBox10: TPopupBox;
    Label25: TLabel;
    NumberBox7: TNumberBox;
    StringGrid3: TStringGrid;
    StringColumn11: TStringColumn;
    StringColumn12: TStringColumn;
    StringColumn13: TStringColumn;
    StringColumn14: TStringColumn;
    StringColumn15: TStringColumn;
    Button17: TButton;
    TabItem12: TTabItem;
    Button18: TButton;
    GroupBox20: TGroupBox;
    Label27: TLabel;
    Edit20: TEdit;
    ClearEditButton20: TClearEditButton;
    Label28: TLabel;
    PopupBox11: TPopupBox;
    Label29: TLabel;
    Edit21: TEdit;
    ClearEditButton21: TClearEditButton;
    Label30: TLabel;
    Edit22: TEdit;
    ClearEditButton22: TClearEditButton;
    StringGrid4: TStringGrid;
    StringColumn16: TStringColumn;
    StringColumn17: TStringColumn;
    StringColumn18: TStringColumn;
    StringColumn19: TStringColumn;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    TabItem13: TTabItem;
    Button23: TButton;
    GroupBox21: TGroupBox;
    ImageControl3: TImageControl;
    Button24: TButton;
    ImageFile1: TOpenDialog;
    GroupBox22: TGroupBox;
    ImageControl4: TImageControl;
    Button25: TButton;
    ImageFile2: TOpenDialog;
    GroupBox23: TGroupBox;
    Button26: TButton;
    MusicFile1: TOpenDialog;
    Button27: TButton;
    Button28: TButton;
    SaveExe1: TSaveDialog;
    Edit23: TEdit;
    ClearEditButton23: TClearEditButton;
    Edit24: TEdit;
    ClearEditButton24: TClearEditButton;
    Label17: TLabel;
    PopupBox12: TPopupBox;
    MenuBar3: TMenuBar;
    MenuItem14: TMenuItem;
    GroupBox25: TGroupBox;
    CheckBox1: TCheckBox;
    GroupBox26: TGroupBox;
    GroupBox27: TGroupBox;
    Edit25: TEdit;
    ClearEditButton25: TClearEditButton;
    Edit26: TEdit;
    ClearEditButton26: TClearEditButton;
    TabItem14: TTabItem;
    GroupBox29: TGroupBox;
    PopupBox14: TPopupBox;
    GroupBox30: TGroupBox;
    Edit28: TEdit;
    ClearEditButton28: TClearEditButton;
    GroupBox31: TGroupBox;
    PopupBox15: TPopupBox;
    Button29: TButton;
    GroupBox32: TGroupBox;
    Edit29: TEdit;
    SearchEditButton9: TSearchEditButton;
    ClearEditButton29: TClearEditButton;
    GroupBox33: TGroupBox;
    Edit30: TEdit;
    ClearEditButton30: TClearEditButton;
    Label23: TLabel;
    TabControl5: TTabControl;
    TabItem15: TTabItem;
    TabItem16: TTabItem;
    GroupBox34: TGroupBox;
    Edit31: TEdit;
    SearchEditButton10: TSearchEditButton;
    ClearEditButton31: TClearEditButton;
    GroupBox35: TGroupBox;
    Edit32: TEdit;
    SearchEditButton11: TSearchEditButton;
    ClearEditButton32: TClearEditButton;
    Edit33: TEdit;
    ClearEditButton33: TClearEditButton;
    Button30: TButton;
    Label31: TLabel;
    PopupBox13: TPopupBox;
    Edit34: TEdit;
    ClearEditButton34: TClearEditButton;
    StringColumn20: TStringColumn;
    GroupBox24: TGroupBox;
    Edit35: TEdit;
    ClearEditButton35: TClearEditButton;
    Label32: TLabel;
    Edit36: TEdit;
    StringColumn21: TStringColumn;
    GroupBox36: TGroupBox;
    Edit37: TEdit;
    SearchEditButton12: TSearchEditButton;
    ClearEditButton36: TClearEditButton;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    MenuItem15: TMenuItem;
    Image1: TImage;
    procedure ToolbarCloseButtonClick(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Stop(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure SearchEditButton3Click(Sender: TObject);
    procedure SearchEditButton4Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure SearchEditButton7Click(Sender: TObject);
    procedure SearchEditButton8Click(Sender: TObject);
    procedure PopupBox1Change(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure SearchEditButton9Click(Sender: TObject);
    procedure SearchEditButton10Click(Sender: TObject);
    procedure SearchEditButton11Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure PopupBox14Change(Sender: TObject);
    procedure SearchEditButton12Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FGestureOrigin: TPointF;
    FGestureInProgress: Boolean;
    { Private declarations }
    procedure ShowToolbar(AShow: Boolean);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses
  Unit2, Unit3, Unit4, Unit5, Unit6;

const
  LibraryAioFP = 'Aio_FP.dll';
  LibraryMCIni = 'MC_Ini.dll';

procedure Website(URL: string); stdcall; external LibraryAioFP;
procedure Exec(sExe, sCommandLine: string; wait: Boolean); stdcall;
  external LibraryAioFP;
function SelDir: string; stdcall; external LibraryAioFP;
procedure B_PlayMusic(Files: string); stdcall; external LibraryAioFP;
procedure B_PauseMusic; stdcall; external LibraryAioFP;
procedure B_ResumeMusic; stdcall; external LibraryAioFP;
procedure B_StopMusic; stdcall; external LibraryAioFP;

function IniRead(Filez, A, B, C: string): string; stdcall;
  external LibraryMCIni;
procedure IniCreate(Filez, A, B, C: string); stdcall; external LibraryMCIni;

function ExtDir: string;
begin
  Result:= IncludeTrailingBackslash(GetCurrentDir);
end;

procedure FileToCopy(FileName, ToTransfer: TFileName);
begin
  CopyFile(PWideChar(FileName), PWideChar(ToTransfer), False);
end;

procedure FileToDelete(FileName: TFileName);
begin
  DeleteFile(PWideChar(FileName));
end;

procedure FolderToDeletePermenantly(Folder: string);
begin
  if DirectoryExists(Folder) then
    TDirectory.Delete(Folder, True);
end;

// ==============================================================================
// ==============================================================================

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkEscape then
    ShowToolbar(not ToolbarPopup.IsOpen);
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  Website(PWideChar('https://fileforums.com/showthread.php?t=96315'));
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  Exec(ExtDir + 'Tools\GraphicStudio.exe',
    '', false);
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  B_StopMusic;
  Image1.Bitmap.LoadFromFile(ExtDir + 'Resource\Option.png');
  with TForm5.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
  B_PlayMusic(ExtDir + 'Resource\Music.mp3');
  Image1.Bitmap.LoadFromFile(ExtDir + 'Resource\Wallpaper.jpg');
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  with TForm6.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
  if FileExists(ExtDir + 'Tools\hkSFV\Fixed.tmp') then
  begin
    Exec(ExtDir + 'Tools\hkSFV\hkSFV.exe', '', false);
  end;
  if not FileExists(ExtDir + 'Tools\hkSFV\Fixed.tmp') then
  begin
    FileToCopy(ExtDir + 'Resource\dump.tmp', ExtDir + 'Tools\hkSFV\Fixed.tmp');
    Exec(ExtDir + 'Tools\hkSFV\FIX.exe', '/verysilent', true);
    Exec(ExtDir + 'Tools\hkSFV\hkSFV.exe', '', false);
  end;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  Exec(ExtDir + 'Tools\DirectorySlicer\DirectorySlicer.exe', '', false);
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  Exec(ExtDir + 'Tools\DF5L.exe', '', false);
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  with TForm2.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  Exec(ExtDir + 'Tools\GFS.exe', '', false);
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  with TForm3.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm1.PopupBox14Change(Sender: TObject);
begin
  if PopupBox14.Text = 'CD' then
  begin
    Edit25.Text := '640mb';
    Edit26.Text := '650mb';
    Edit25.CanFocus := false;
    Edit26.CanFocus := false;
    ClearEditButton25.Enabled := false;
    ClearEditButton26.Enabled := false;
  end;
  if PopupBox14.Text = 'DVD' then
  begin
    Edit25.Text := '3060mb';
    Edit26.Text := '3070mb';
    Edit25.CanFocus := false;
    Edit26.CanFocus := false;
    ClearEditButton25.Enabled := false;
    ClearEditButton26.Enabled := false;
  end;
  if PopupBox14.Text = 'Custom' then
  begin
    Edit25.Text := '1mb';
    Edit26.Text := '2mb';
    Edit25.CanFocus := true;
    Edit26.CanFocus := true;
    ClearEditButton25.Enabled := true;
    ClearEditButton26.Enabled := true;
  end;
end;

procedure TForm1.PopupBox1Change(Sender: TObject);
var
  MCMethod1, MCMethod2, MCMethod3, MCMethod4, MCMethod5: string;
begin
  MCMethod1 := IniRead(ExtDir + 'Resource\MC_Method.db', 'Compression Method', 'fastest', '');
  MCMethod2 := IniRead(ExtDir + 'Resource\MC_Method.db', 'Compression Method', 'fast', '');
  MCMethod3 := IniRead(ExtDir + 'Resource\MC_Method.db', 'Compression Method', 'normal', '');
  MCMethod4 := IniRead(ExtDir + 'Resource\MC_Method.db', 'Compression Method', 'good', '');
  MCMethod5 := IniRead(ExtDir + 'Resource\MC_Method.db', 'Compression Method', 'best', '');

  if (PopupBox1.ItemIndex = 0) then
  begin
    Edit12.Enabled := false;
    Edit12.Text := MCMethod1;
  end;
  if (PopupBox1.ItemIndex = 1) then
  begin
    Edit12.Enabled := false;
    Edit12.Text := MCMethod2;
  end;
  if (PopupBox1.ItemIndex = 2) then
  begin
    Edit12.Enabled := false;
    Edit12.Text := MCMethod3;
  end;
  if (PopupBox1.ItemIndex = 3) then
  begin
    Edit12.Enabled := false;
    Edit12.Text := MCMethod4;
  end;
  if (PopupBox1.ItemIndex = 4) then
  begin
    Edit12.Enabled := false;
    Edit12.Text := MCMethod5;
  end;
  if (PopupBox1.ItemIndex = 5) then
  begin
    Edit12.Enabled := true;
    Edit12.Text := 'srep+exe2+delta+lzma';
  end;
end;

procedure TForm1.ToolbarCloseButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  TabControl2.TabIndex := 2;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  TabControl3.TabIndex := 1;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  TabControl4.TabIndex := 0;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    if OpenDialog1.FileName <> '' then
    begin
      ImageControl2.LoadFromFile(OpenDialog1.FileName);
      FileToCopy(OpenDialog1.FileName,
        ExtDir + 'Installer\Installer Carl Repacks\Icon.ico');
    end;
  end;
end;

procedure TForm1.Button14Click(Sender: TObject);
var
  i: integer;
begin
  StringGrid2.RowCount := StringGrid2.RowCount + 1;
  i := StringGrid2.RowCount - 1;
  StringGrid2.Cells[0, i] := IntToStr(StringGrid2.RowCount);
  StringGrid2.Cells[1, i] := Edit17.Text;
  StringGrid2.Cells[2, i] := PopupBox5.Text + '\' + Edit18.Text;
  StringGrid2.Cells[3, i] := PopupBox13.Text + '\' + Edit34.Text;
  if Edit23.Text <> '' then
  begin
    StringGrid2.Cells[4, i] := PopupBox6.Text + '\' + Edit23.Text + '\';
  end
  else if Edit23.Text = '' then
  begin
    StringGrid2.Cells[4, i] := PopupBox6.Text + '\';
  end;
  StringGrid2.Cells[5, i] := PopupBox7.Text;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  TabControl4.TabIndex := 1;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  TabControl4.TabIndex := 2;
end;

procedure TForm1.Button17Click(Sender: TObject);
var
  i, i2: integer;
begin
  StringGrid3.RowCount := StringGrid3.RowCount + 1;
  i := StringGrid3.RowCount - 1;
  StringGrid3.Cells[0, i] := IntToStr(StringGrid3.RowCount);
  StringGrid3.Cells[1, i] := PopupBox8.Text;
  StringGrid3.Cells[2, i] := PopupBox9.Text + '\' + Edit19.Text;

  if Edit24.Text <> '' then
    StringGrid3.Cells[3, i] := PopupBox10.Text + '\' + Edit24.Text + '\';
  if Edit24.Text = '' then
    StringGrid3.Cells[3, i] := PopupBox10.Text + '\';

  StringGrid3.Cells[4, i] := NumberBox7.Text;

  if Edit36.Text <> '' then
    StringGrid3.Cells[5, i] := Edit36.Text;
  if Edit36.Text = '' then
    StringGrid3.Cells[5, i] := '';
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  TabControl4.TabIndex := 3;
end;

procedure TForm1.Button19Click(Sender: TObject);
var
  i, i2: integer;
begin
  StringGrid4.RowCount := StringGrid4.RowCount + 1;
  i := StringGrid4.RowCount - 1;
  StringGrid4.Cells[0, i] := IntToStr(StringGrid4.RowCount);
  StringGrid4.Cells[1, i] := Edit20.Text;
  StringGrid4.Cells[2, i] := PopupBox11.Text + '\' + Edit21.Text;
  StringGrid4.Cells[3, i] := Edit22.Text + '\';
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  StringGrid2.RowCount := StringGrid2.RowCount - 1;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  StringGrid3.RowCount := StringGrid3.RowCount - 1;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  StringGrid4.RowCount := StringGrid4.RowCount - 1;
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  TabControl4.TabIndex := 4;
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
  if ImageFile1.Execute then
  begin
    if ImageFile1.FileName <> '' then
    begin
      ImageControl3.Bitmap.LoadFromFile(ImageFile1.FileName);
      FileToCopy(ImageFile1.FileName, ExtDir + 'Installer\Installer Carl Repacks\Resource\WizardImage.jpg');
    end;
  end;
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
  if ImageFile2.Execute then
  begin
    if ImageFile2.FileName <> '' then
    begin
      ImageControl4.Bitmap.LoadFromFile(ImageFile2.FileName);
      FileToCopy(ImageFile2.FileName, ExtDir + 'Installer\Installer Carl Repacks\Resource\Logo.png');
    end;
  end;
end;

procedure TForm1.Button26Click(Sender: TObject);
begin
  if MusicFile1.Execute then
  begin
    if MusicFile1.FileName <> '' then
    begin
      FileToCopy(MusicFile1.FileName, ExtDir + 'Installer\Installer Carl Repacks\Resource\Music.mp3');
    end;
  end;
end;

procedure TForm1.Button27Click(Sender: TObject);
begin
  TabControl3.TabIndex := 0;
end;

procedure TForm1.Button28Click(Sender: TObject);
var
  i, i2, ii, ii2, iii, iii2, iFileSetup: integer;
  ProApps, ProCommands, FIC: string;
  iFileSetupMissing: Boolean;
begin
  FIC := SelDir;

  if FIC <> '' then
  begin
    IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Config.ini', 'Setup', 'Name',
      Edit14.Text);
    IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Config.ini', 'Setup', 'Publisher',
      Edit15.Text);
    IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Config.ini', 'Setup', 'Version',
      Edit16.Text);
    IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Config.ini', 'Setup', 'Size',
      NumberBox4.Text);
    IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Config.ini', 'Option',
      'CompressionType', PopupBox2.Text);
    IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Config.ini', 'Option',
      'CompressionSolid', PopupBox3.Text);
    IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Config.ini', 'Option',
      'CompressionThreads', PopupBox4.Text);
    IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Config.ini', 'Option', 'Protection',
      PopupBox12.Text);
    if Edit37.Text <> '' then
    begin
      IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Config.ini', 'Option',
        'DiskSpan', 'yes');
      IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Config.ini', 'Game', 'Source',
        Edit37.Text);
    end
    else
    begin
      IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Config.ini', 'Option',
        'DiskSpan', 'no');
      IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Config.ini', 'Game', 'Source', '');
    end;

    if PopupBox12.Text = 'yes' then
    begin
      ProApps := ExtDir + 'Tools\rar.exe';
      ProCommands := 'a -ep -hp"12345678" "' + ExtDir + 'file.rar" "' + ExtDir + 'Installer\_ISDone\*"';
      Exec(ProApps, ProCommands, true);
    end;

    if Edit17.Text <> '' then
    begin
      i := 0;
      i2 := 1;
      repeat
        IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Shortcut.txt',
          'ShortcutFile' + IntToStr(i2), 'Name', StringGrid2.Cells[1, i]);
        IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Shortcut.txt',
          'ShortcutFile' + IntToStr(i2), 'File', StringGrid2.Cells[2, i]);
        IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Shortcut.txt',
          'ShortcutFile' + IntToStr(i2), 'Icon', StringGrid2.Cells[3, i]);
        IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Shortcut.txt',
          'ShortcutFile' + IntToStr(i2), 'Working', StringGrid2.Cells[4, i]);
        IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Shortcut.txt',
          'ShortcutFile' + IntToStr(i2), 'Create', StringGrid2.Cells[5, i]);
        i := i + 1;
        i2 := i2 + 1;
      until i = StringGrid2.RowCount;
    end
    else
    begin
      IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Shortcut.txt', 'Nothing', 'Nothing',
        'Nothing');
    end;

    if Edit19.Text <> '' then
    begin
      ii := 0;
      ii2 := 1;
      repeat
        IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Archive.txt',
          'ArchiveFile' + IntToStr(ii2), 'Type', StringGrid3.Cells[1, ii]);
        IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Archive.txt',
          'ArchiveFile' + IntToStr(ii2), 'Source', StringGrid3.Cells[2, ii]);
        IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Archive.txt',
          'ArchiveFile' + IntToStr(ii2), 'Output', StringGrid3.Cells[3, ii]);
        IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Archive.txt',
          'ArchiveFile' + IntToStr(ii2), 'Disk', StringGrid3.Cells[4, ii]);
        IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Archive.txt',
          'ArchiveFile' + IntToStr(ii2), 'Password', StringGrid3.Cells[5, ii]);
        ii := ii + 1;
        ii2 := ii2 + 1;
      until ii = StringGrid3.RowCount;
    end
    else
    begin
      IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Archive.txt', 'Nothing', 'Nothing',
        'Nothing');
    end;

    if Edit20.Text <> '' then
    begin
      iii := 0;
      iii2 := 1;
      repeat
        IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Redist.txt',
          'RedistInstall' + IntToStr(iii2), 'Name', StringGrid4.Cells[1, iii]);
        IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Redist.txt',
          'RedistInstall' + IntToStr(iii2), 'Exec', StringGrid4.Cells[2, iii]);
        IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Redist.txt',
          'RedistInstall' + IntToStr(iii2), 'Params',
          StringGrid4.Cells[3, iii]);
        iii := iii + 1;
        iii2 := iii2 + 1;
      until iii = StringGrid4.RowCount;
    end
    else
    begin
      IniCreate(ExtDir + 'Installer\Installer Carl Repacks\Redist.txt', 'Nothing', 'Nothing',
        'Nothing');
    end;

    Exec(ExtDir + 'Tools\IS5\ISCC.exe', '"' + ExtDir + 'Installer\Installer Carl Repacks\Main.iss"', true);
    FileToDelete(ExtDir + 'Installer\Installer Carl Repacks\Config.ini');
    FileToDelete(ExtDir + 'Installer\Installer Carl Repacks\Shortcut.txt');
    FileToDelete(ExtDir + 'Installer\Installer Carl Repacks\Archive.txt');
    FileToDelete(ExtDir + 'Installer\Installer Carl Repacks\Redist.txt');

    if FIC <> '' then
    begin
      FileToCopy(ExtDir + 'Installer\Installer Carl Repacks\Output\Setup.exe',
        FIC + '\Setup.exe');
      FileToDelete(ExtDir + 'Installer\Installer Carl Repacks\Output\Setup.exe');

      iFileSetup := 1;
      iFileSetupMissing := false;
      repeat
        if FileExists(ExtDir + 'Installer\Installer Carl Repacks\Output\Setup-' +
          IntToStr(iFileSetup) + '.bin') then
        begin
          FileToCopy(ExtDir + 'Installer\Installer Carl Repacks\Output\Setup-' +
            IntToStr(iFileSetup) + '.bin',
            FIC + '\Setup-' + IntToStr(iFileSetup) + '.bin');
          FileToDelete(ExtDir + 'Installer\Installer Carl Repacks\Output\Setup-' +
            IntToStr(iFileSetup) + '.bin');
        end;
        if not FileExists(ExtDir + 'Installer\Installer Carl Repacks\Output\Setup-' +
          IntToStr(iFileSetup) + '.bin') then
          iFileSetupMissing := true;
        iFileSetup := iFileSetup + 1;
      until iFileSetupMissing = true;

      if PopupBox12.Text = 'yes' then
      begin
        FileToCopy(ExtDir + 'file.rar', FIC + '\Setup.dll');
        FileToDelete(ExtDir + 'file.rar');
      end;
    end;
  end;
end;

procedure TForm1.Button29Click(Sender: TObject);
var
  i1, i2, iISO1: integer;
  DkFileNoExists, DirNoExists: Boolean;
begin

  i1 := 1;
  DkFileNoExists := false;
  if FileExists(Edit29.Text + '\' + Edit30.Text + '.001') then
  begin
    repeat
      if FileExists(Edit29.Text + '\' + Edit30.Text + '.00' + IntToStr(i1)) then
      begin
        MkDir(Edit29.Text + '\' + Edit28.Text + ' ISO' + IntToStr(i1));
        CopyFile(PWideChar(Edit29.Text + '\' + Edit30.Text + '.00' +
          IntToStr(i1)), PWideChar(Edit29.Text + '\' + Edit28.Text + ' ISO' +
          IntToStr(i1) + '\' + Edit30.Text + '.00' + IntToStr(i1)), true);
        DeleteFile(PWideChar(Edit29.Text + '\' + Edit30.Text + '.00' +
          IntToStr(i1)));
        i1 := i1 + 1;
      end;
      if not FileExists(Edit29.Text + '\' + Edit30.Text + '.00' + IntToStr(i1))
      then
        DkFileNoExists := true;
    until (i1 = 10) or (DkFileNoExists = true);
  end;

  i2 := 10;
  DkFileNoExists := false;
  if FileExists(Edit29.Text + '\' + Edit30.Text + '.010') then
  begin
    repeat
      if FileExists(Edit29.Text + '\' + Edit30.Text + '.0' + IntToStr(i2)) then
      begin
        MkDir(Edit29.Text + '\' + Edit28.Text + ' ISO' + IntToStr(i2));
        CopyFile(PWideChar(Edit29.Text + '\' + Edit30.Text + '.0' + IntToStr(i2)
          ), PWideChar(Edit29.Text + '\' + Edit28.Text + ' ISO' + IntToStr(i2) +
          '\' + Edit30.Text + '.0' + IntToStr(i2)), true);
        DeleteFile(PWideChar(Edit29.Text + '\' + Edit30.Text + '.0' +
          IntToStr(i2)));
        i2 := i2 + 1;
      end;
      if not FileExists(Edit29.Text + '\' + Edit30.Text + '.0' + IntToStr(i2))
      then
        DkFileNoExists := true;
    until (i2 = 20) or (DkFileNoExists = true);
  end;

  if (FileExists(Edit29.Text + '\Setup.exe')) and
    (FileExists(Edit29.Text + '\Setup.ico')) then
  begin
    MoveFile(PWideChar(Edit29.Text + '\Setup.exe'),
      PWideChar(Edit29.Text + '\' + Edit28.Text + ' ISO1' + '\Setup.exe'));
    MoveFile(PWideChar(Edit29.Text + '\Setup.ico'),
      PWideChar(Edit29.Text + '\' + Edit28.Text + ' ISO1' + '\Setup.ico'));
    if FileExists(Edit29.Text + '\Setup.dll') then
      MoveFile(PWideChar(Edit29.Text + '\Setup.dll'),
        PWideChar(Edit29.Text + '\' + Edit28.Text + ' ISO1' + '\Setup.dll'));
    if not FileExists(Edit29.Text + '\' + Edit28.Text + ' ISO1' + '\Autorun.inf')
    then
    begin
      IniCreate(Edit29.Text + '\' + Edit28.Text + ' ISO1' + '\Autorun.inf',
        'Autorun', 'open', 'Setup.exe');
      IniCreate(Edit29.Text + '\' + Edit28.Text + ' ISO1' + '\Autorun.inf',
        'Autorun', 'icon', 'Setup.ico');
      IniCreate(Edit29.Text + '\' + Edit28.Text + ' ISO1' + '\Autorun.inf',
        'Autorun', 'label', Edit28.Text + '_RG');
    end;
  end;

  iISO1 := 1;
  DirNoExists := false;
  if DirectoryExists(Edit29.Text + '\' + Edit28.Text + ' ISO1') then
  begin
    repeat
      if DirectoryExists(Edit29.Text + '\' + Edit28.Text + ' ISO' +
        IntToStr(iISO1)) then
      begin
        Exec(ExtDir + 'Tools\OSCDIMG.exe',
          '-h -u1 -udfver102 "' + Edit29.Text + '\' + Edit28.Text + ' ISO' +
          IntToStr(iISO1) + '" "' + Edit29.Text + '\' + Edit28.Text + ' ' +
          PopupBox15.Text + IntToStr(iISO1) + '.iso"', true);
        iISO1 := iISO1 + 1;
      end;
      if not DirectoryExists(Edit29.Text + '\' + Edit28.Text + ' ISO' +
        IntToStr(iISO1)) then
        DirNoExists := true;
    until (iISO1 = 20) or (DirNoExists = true);
  end;
end;

procedure TForm1.Button30Click(Sender: TObject);
var
  ISOSource, ISOOutput: string;
begin
  ISOSource := '"' + Edit31.Text + '"';
  ISOOutput := '"' + Edit32.Text + '\' + Edit33.Text + '"';
  Exec(ExtDir + 'Tools\OSCDIMG.exe',
    '-h -u1 -udfver102 ' + ISOSource + ' ' + ISOOutput, false);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  FACommands, FAMemory, FAMethod, FAArchive, FAPassword, FASource: string;
  r1, r2, r3, r4, r5: string;
  iFAFile, iFAFile2: integer;
  iFAFileMiss, FAFile: Boolean;
begin
  if CheckBox1.IsChecked = true then
  begin
    FAMemory := '-lc' + NumberBox1.Text + ' -ld' + NumberBox1.Text;
    FACommands := 'a -ma9 -ds ' + FAMemory +
      ' -di -i1 -ep1 -ed -r -s; -w_Temp\ ';
    FAMethod := '-m' + Edit5.Text + '+diskspan:' + Edit25.Text + ':' +
      Edit26.Text + ' ';
    FAPassword := '-hp -p"' + Edit35.Text + '" ';
    FAArchive := '"' + Edit2.Text + '\' + Edit4.Text + '.001' + '" ';
    FASource := '"' + Edit1.Text + '\*"';

    IniCreate(ExtDir + 'ArcTools.ini', 'General', 'Source', Edit1.Text);
    IniCreate(ExtDir + 'ArcTools.ini', 'General', 'Output', Edit2.Text + '\' + Edit4.Text
      + '.001');
    IniCreate(ExtDir + 'ArcTools.ini', 'Option', 'Memory', NumberBox1.Text);
    IniCreate(ExtDir + 'ArcTools.ini', 'Option', 'Method', '-m' + Edit5.Text + '+diskspan:' +
      Edit25.Text + ':' + Edit26.Text);
    if Edit35.Text <> '' then
      IniCreate(ExtDir + 'ArcTools.ini', 'Option', 'Password', Edit35.Text);

    if CheckBox2.IsChecked = true then
    begin
      IniCreate(PWideChar(Edit2.Text + '\records.ini'), 'Record1', 'Type',
        'Freearc');
      IniCreate(PWideChar(Edit2.Text + '\records.ini'), 'Record1', 'Source',
        '{src}' + '\' + Edit4.Text + '.001');
      IniCreate(PWideChar(Edit2.Text + '\records.ini'), 'Record1', 'Output',
        '{app}\');
      IniCreate(PWideChar(Edit2.Text + '\records.ini'), 'Record1', 'Disk', '1');
      if Edit35.Text <> '' then
        IniCreate(PWideChar(Edit2.Text + '\records.ini'), 'Record1', 'Password',
          Edit35.Text);
    end;
  end;
  if CheckBox1.IsChecked = false then
  begin
    FAMemory := '-lc' + NumberBox1.Text + ' -ld' + NumberBox1.Text;
    FACommands := 'a -ma9 -ds ' + FAMemory +
      ' -di -i1 -ep1 -ed -r -s; -w_Temp\ ';
    FAMethod := '-m' + Edit5.Text + ' ';
    FAPassword := '-hp -p"' + Edit35.Text + '" ';
    FAArchive := '"' + Edit2.Text + '\' + Edit4.Text + '" ';
    FASource := '"' + Edit1.Text + '\*"';

    IniCreate(PWideChar('.\ArcTools.ini'), 'General', 'Source', Edit1.Text);
    IniCreate(PWideChar('.\ArcTools.ini'), 'General', 'Output',
      Edit2.Text + '\' + Edit4.Text);
    IniCreate(PWideChar('.\ArcTools.ini'), 'Option', 'Memory', NumberBox1.Text);
    IniCreate(PWideChar('.\ArcTools.ini'), 'Option', 'Method',
      '-m' + Edit5.Text);
    if Edit35.Text <> '' then
      IniCreate(PWideChar('.\ArcTools.ini'), 'Option', 'Password', Edit35.Text);

    if CheckBox2.IsChecked = true then
    begin
      IniCreate(PWideChar(Edit2.Text + '\records.ini'), 'Record1', 'Type',
        'Freearc');
      IniCreate(PWideChar(Edit2.Text + '\records.ini'), 'Record1', 'Source',
        '{src}' + '\' + Edit4.Text);
      IniCreate(PWideChar(Edit2.Text + '\records.ini'), 'Record1', 'Output',
        '{app}\');
      IniCreate(PWideChar(Edit2.Text + '\records.ini'), 'Record1', 'Disk', '1');
      if Edit35.Text <> '' then
        IniCreate(PWideChar(Edit2.Text + '\records.ini'), 'Record1', 'Password',
          Edit35.Text);
    end;
  end;

  r1 := IniRead(ExtDir + 'ArcTools.ini', 'General', 'Source', '');
  r2 := IniRead(ExtDir + 'ArcTools.ini', 'General', 'Output', '');
  r3 := IniRead(ExtDir + 'ArcTools.ini', 'Option', 'Memory', '');
  r4 := IniRead(ExtDir + 'ArcTools.ini', 'Option', 'Method', '');
  r5 := IniRead(ExtDir + 'ArcTools.ini', 'Option', 'Password', '');

  with TForm4.Create(nil) do
  begin
    Caption := 'Are you sure?';
    TabControl1.TabIndex := 0;
    Edit1.Text := r1;
    Edit2.Text := r2;
    Edit3.Text := r3;
    Edit4.Text := r4;
    Edit7.Text := r5;
    ShowModal;
    Free;
  end;

  if CheckBox1.IsChecked = false then
  begin
    if FileExists(Edit2.Text + '\' + Edit4.Text, false) then
      FAFile := false;
    if not FileExists(Edit2.Text + '\' + Edit4.Text, false) then
      FAFile := true;
    if FAFile = false then
      if CheckBox2.IsChecked = true then
        FileToCopy(ExtDir + 'Bin\mc.sfx', Edit2.Text + '\' + 'MC_SelfExtract.exe');
    if FAFile = true then
      FileToDelete(Edit2.Text + '\records.ini');
  end;
  if CheckBox1.IsChecked = true then
  begin
    if FileExists(Edit2.Text + '\' + Edit4.Text + '.001', false) then
      FAFile := false;
    if not FileExists(Edit2.Text + '\' + Edit4.Text + '.001', false) then
      FAFile := true;
    if FAFile = false then
      if CheckBox2.IsChecked = true then
        FileToCopy(ExtDir + 'Bin\mc.sfx', Edit2.Text + '\' + 'MC_SelfExtract.exe');
    if FAFile = true then
      FileToDelete(Edit2.Text + '\records.ini');
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  TabControl2.TabIndex := 0;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  FACommands, FAArchive, FAOutput: string;
  r1, r2: string;
begin
  FAArchive := '"' + Edit6.Text + '"';
  FAOutput := '-dp"' + Edit7.Text + '"';
  FACommands := 'x ' + FAArchive + ' -o+ ' + FAOutput;

  IniCreate(PWideChar('.\Resource\FreearcDecompress.ini'), 'General', 'Source',
    Edit6.Text);
  IniCreate(PWideChar('.\Resource\FreearcDecompress.ini'), 'General', 'Output',
    Edit7.Text);
  IniCreate(PWideChar('.\Resource\FreearcDecompress.ini'), 'Result', 'Ready',
    'arc_u\unarc.exe' + ' ' + FACommands);
  IniCreate(PWideChar('.\Resource\FreearcDecompress.ini'), 'Command',
    'set General', FACommands);

  r1 := IniRead(PWideChar('.\Resource\FreearcDecompress.ini'), 'General',
    'Source', '');
  r2 := IniRead(PWideChar('.\Resource\FreearcDecompress.ini'), 'General',
    'Output', '');

  with TForm4.Create(nil) do
  begin
    Caption := 'Are you sure?';
    TabControl1.TabIndex := 1;
    Edit5.Text := r1;
    Edit6.Text := r2;
    ShowModal;
    Free;
  end;

  // Exec('Bin\arc_u\unarc.exe', FACommands, false);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  TabControl2.TabIndex := 1;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  i: integer;
begin
  StringGrid1.RowCount := StringGrid1.RowCount + 1;
  i:= StringGrid1.RowCount - 1;
  StringGrid1.Cells[0, i] := Edit3.Text;
  StringGrid1.Cells[1, i] := Edit10.Text;
  StringGrid1.Cells[2, i] := NumberBox2.Text;
  StringGrid1.Cells[3, i] := Edit12.Text;
  StringGrid1.Cells[4, i] := Edit11.Text;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  StringGrid1.RowCount := StringGrid1.RowCount - 1;
  NumberBox1.Text := '1';
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  FACommands, FAMemory, FAArchive, FAMethod, FASource: string;
  i, i2, i3: integer;
  FAError: Boolean;
  DateAndTimeZ: TDateTime;
begin
  i := 0;
  FAError := false;
  if CheckBox3.IsChecked = true then
  begin
    i2 := 0;
    i3 := 1;
    repeat
      IniCreate(PWideChar(Edit10.Text + '\records.ini'),
        'Record' + IntToStr(i3), 'Type', 'Freearc');
      IniCreate(PWideChar(Edit10.Text + '\records.ini'),
        'Record' + IntToStr(i3), 'Source', '{src}' + '\' + Edit11.Text);
      IniCreate(PWideChar(Edit10.Text + '\records.ini'),
        'Record' + IntToStr(i3), 'Output', '{app}\');
      IniCreate(PWideChar(Edit10.Text + '\records.ini'),
        'Record' + IntToStr(i3), 'Disk', IntToStr(i3));
      i2 := i2 + 1;
      i3 := i3 + 1;
    until (i2 = StringGrid1.RowCount);
  end;
  if (StringGrid1.RowCount <> 0) then
  begin
    repeat
      FAMemory := '-lc' + StringGrid1.Cells[2, i] + ' -ld' +
        StringGrid1.Cells[2, i];
      FACommands := 'a -ma9 -ds ' + FAMemory + ' -di -i1 -ep1 -ed -r -w_Temp\ ';
      FAArchive := '"' + StringGrid1.Cells[1, i] + '\' + StringGrid1.Cells
        [4, i] + '" ';
      FAMethod := '-m' + StringGrid1.Cells[3, i] + ' ';
      FASource := '"' + StringGrid1.Cells[0, i] + '\*"';

      Exec(ExtDir + 'Bin\Arc\Arc.exe', FACommands + FAArchive + FAMethod + FASource, true);
      if FileExists(StringGrid1.Cells[1, i] + '\' + StringGrid1.Cells[4, i])
      then
        FAError := false;
      if not FileExists(StringGrid1.Cells[1, i] + '\' + StringGrid1.Cells[4, i])
      then
        FAError := true;
      i := i + 1;
      if FAError = true then
        break;
    until (i = StringGrid1.RowCount) or (FAError = true);

    if FAError = true then
    begin
      with TForm4.Create(nil) do
      begin
        Caption := 'Failed.';
        TabControl1.TabIndex := 2;
        DateAndTimeZ := Now;
        Memo1.Lines.Add('');
        Memo1.Lines.Add('LOOKS LIKE THERE IS A PROBLEM ABOUT FREEARC!');
        Memo1.Lines.Add('PLEASE CONTACT ABOUT PROBLEM!');
        Memo1.Lines.Add('');
        Memo1.Lines.Add('Date & Time: ' + DateToStr(DateAndTimeZ) + ' | ' +
          TimeToStr(DateAndTimeZ));
        Memo1.GoToTextEnd;
        ShowModal;
        Free;
      end;
      if FileExists(PWideChar(Edit10.Text + '\records.ini'), false) then
        DeleteFile(PWideChar(Edit10.Text + '\records.ini'));
    end;

    FolderToDeletePermenantly(ExtDir + '_Temp');

    if FileExists(PWideChar(Edit10.Text + '\records.ini'), false) then
      FileToCopy(ExtDir + 'Bin\mc.sfx', Edit10.Text + '\' + 'MC_SelfExtract.exe');
  end;
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
  if CheckBox1.IsChecked = true then
  begin
    Edit25.Enabled := true;
    Edit26.Enabled := true;
    PopupBox14.Enabled := true;
  end;
  if CheckBox1.IsChecked = false then
  begin
    Edit25.Enabled := false;
    Edit26.Enabled := false;
    PopupBox14.Enabled := false;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MenuItem2.Text := 'Mini Compressor ' + IniRead(ExtDir + 'Resource\MC.db',
    'MiniCompressor', 'Version', '');
  MenuItem8.Text := IniRead(ExtDir + 'Resource\MC.db',
    'MiniCompressor', 'LegalCopyright', '');

  B_PlayMusic(ExtDir + 'Resource\Music.mp3');
  Image1.Bitmap.LoadFromFile(ExtDir + 'Resource\Wallpaper.jpg');

  ImageControl2.Bitmap.LoadFromFile(ExtDir +
    'Installer\Installer Carl Repacks\Icon.ico');
  Edit16.Text := '1.0.0';
  NumberBox4.Text := '1024';
  ImageControl3.Bitmap.LoadFromFile(ExtDir +
    'Installer\Installer Carl Repacks\Resource\WizardImage.jpg');
  ImageControl4.Bitmap.LoadFromFile(ExtDir +
    'Installer\Installer Carl Repacks\Resource\Logo.png');

  if CheckBox1.IsChecked = true then
  begin
    Edit25.Enabled := true;
    Edit26.Enabled := true;
    PopupBox14.Enabled := true;
  end;
  if CheckBox1.IsChecked = false then
  begin
    Edit25.Enabled := false;
    Edit26.Enabled := false;
    PopupBox14.Enabled := false;
  end;

  if PopupBox14.Text = 'CD' then
  begin
    Edit25.Text := '640mb';
    Edit26.Text := '650mb';
    Edit25.CanFocus := false;
    Edit26.CanFocus := false;
    ClearEditButton25.Enabled := false;
    ClearEditButton26.Enabled := false;
  end;
  if PopupBox14.Text = 'DVD' then
  begin
    Edit25.Text := '3060mb';
    Edit26.Text := '3070mb';
    Edit25.CanFocus := false;
    Edit26.CanFocus := false;
    ClearEditButton25.Enabled := false;
    ClearEditButton26.Enabled := false;
  end;
  if PopupBox14.Text = 'Custom' then
  begin
    Edit25.Text := '1mb';
    Edit26.Text := '2mb';
    Edit25.CanFocus := true;
    Edit26.CanFocus := true;
    ClearEditButton25.Enabled := true;
    ClearEditButton26.Enabled := true;
  end;
end;

procedure TForm1.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
var
  DX, DY: Single;
begin
  if EventInfo.GestureID = igiPan then
  begin
    if (TInteractiveGestureFlag.gfBegin in EventInfo.Flags) and
      ((Sender = ToolbarPopup) or (EventInfo.Location.Y > (ClientHeight - 70)))
    then
    begin
      FGestureOrigin := EventInfo.Location;
      FGestureInProgress := true;
    end;

    if FGestureInProgress and (TInteractiveGestureFlag.gfEnd in EventInfo.Flags)
    then
    begin
      FGestureInProgress := false;
      DX := EventInfo.Location.X - FGestureOrigin.X;
      DY := EventInfo.Location.Y - FGestureOrigin.Y;
      if (Abs(DY) > Abs(DX)) then
        ShowToolbar(DY < 0);
    end;
  end
end;

procedure TForm1.SearchEditButton10Click(Sender: TObject);
begin
  Edit31.Text := SelDir;
end;

procedure TForm1.SearchEditButton11Click(Sender: TObject);
begin
  Edit32.Text := SelDir;
end;

procedure TForm1.SearchEditButton12Click(Sender: TObject);
begin
  Edit37.Text := SelDir;
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
  if FreearcFile1.Execute then
  begin
    Edit6.Text := FreearcFile1.FileName;
  end;
end;

procedure TForm1.SearchEditButton4Click(Sender: TObject);
begin
  Edit7.Text := SelDir;
end;

procedure TForm1.SearchEditButton7Click(Sender: TObject);
begin
  Edit3.Text := SelDir;
end;

procedure TForm1.SearchEditButton8Click(Sender: TObject);
begin
  Edit10.Text := SelDir;
end;

procedure TForm1.SearchEditButton9Click(Sender: TObject);
begin
  Edit29.Text := SelDir;
end;

procedure TForm1.ShowToolbar(AShow: Boolean);
begin
  ToolbarPopup.Width := ClientWidth;
  ToolbarPopup.PlacementRectangle.Rect :=
    TRectF.Create(0, ClientHeight - ToolbarPopup.Height, ClientWidth - 1,
    ClientHeight - 1);
  ToolbarPopupAnimation.StartValue := ToolbarPopup.Height;
  ToolbarPopupAnimation.StopValue := 0;

  ToolbarPopup.IsOpen := AShow;
end;

procedure TForm1.Stop(Sender: TObject; var Action: TCloseAction);
begin
  B_StopMusic;
end;

end.
