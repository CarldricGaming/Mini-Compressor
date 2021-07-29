[CustomMessages]
eng.ConversionUnit5_1=MHz
eng.ConversionUnit5_2=GHz
eng.SystemMessage3_3=Memory
eng.ConversionUnit4_1=MB
eng.ConversionUnit4_2=GB
eng.OtherMessage3_2=%1 - Installation
eng.OtherMessage2_2=Application:
eng.OtherMessage2_3=Publisher:
eng.OtherMessage2_1=Setup Initializing...

[Code]
const
  MF_BYPOSITION = $400;
  MF_ENABLED = 0;
  MF_GRAYED = 1;
  WM_USER = $400;
  WM_ICON_NOTIFY = WM_USER + 22;

type
  PDisplay_Device = record
    cb: DWord;
    DeviceName: array [0..31] of char;
    DeviceString: array [0..127] of char;
    StateFlags: DWord;
    DeviceID, DeviceKey: array [0..127] of char;
  end;

var
  CPUName: String;
  n, i: integer;
  ResDetails: String;
  MenuItemClickCallback: LongWord;
  MenuPopupCallback: LongWord;
  MenuStrs: String;

function ApplicationName(Default:String):String;
begin
  #define ApplicationName ReadIni(IniFiles, SubTitle1, "Name", "")
  Result:='{#ApplicationName}';
end;

function ApplicationPublisher:String;
begin
  #define ApplicationPublisher ReadIni(IniFiles, SubTitle1, "Publisher", "")
  Result:='{#ApplicationPublisher}';
end;

function SplashTimer1:integer ;
begin
  #define SplashTimer1 ReadIni(IniFiles, "Splash", "TimeIn", "1")
  Result:={#SplashTimer1} * 1000;
end;

function SplashTimer2:integer ;
begin
  #define SplashTimer2 ReadIni(IniFiles, "Splash", "TimeShow", "3")
  Result:={#SplashTimer2} * 1000;
end;

function SplashTimer3:integer ;
begin
  #define SplashTimer3 ReadIni(IniFiles, "Splash", "TimeOut", "1")
  Result:={#SplashTimer3} * 1000;
end;

Function cm(Message: String): String; Begin Result:= ExpandConstant('{cm:'+ Message +'}') End;
function EnumDisplayDevices(lpDevice, iDevNum: DWord; var lpDisplayDevice: PDisplay_Device; dwFlags: DWord): Boolean; external 'EnumDisplayDevicesW@user32.dll Stdcall';
function GetSystemMetrics(nIndex : Integer): Integer;external 'GetSystemMetrics@user32 stdcall';
function IsWindowEnabled(hWnd: HWND): BOOL; external 'IsWindowEnabled@user32.dll stdcall';
function EnableMenuItem(hMenu: UINT; uIDEnableItem, uEnable: UINT): BOOL; external 'EnableMenuItem@user32.dll stdcall';

function RoundUp(Num: Integer): Integer;
var i, k: Integer;
begin
  i:= trunc(Num/64); k:= 64*i;
  if (k<Num) then i:=i+1;
  k:= 64*i; Result:= k;
end;

function CPUConfig: String;
begin
  RegQueryStringValue(HKLM, 'Hardware\Description\System\CentralProcessor\0', 'ProcessorNameString', CPUName)
  Result :=CPUName
end;

function MBToGB(MB : Integer): String;
begin
  if Length(IntToStr(MB)) > 3 then
    Result := Copy(IntToStr(MB), 0, Length(IntToStr(MB))-3) + '.' + Copy(IntToStr(MB),
      Length(IntToStr(MB))-2, 1) + ' '+FmtMessage(cm('ConversionUnit4_2'), [ExpandConstant(' ')])
  else
    Result := IntToStr(MB) + ' '+FmtMessage(cm('ConversionUnit4_1'), [ExpandConstant(' ')])
end;

function ProcessorCoreConverter(CoreNR : Integer): String;
begin
  Case CoreNR of
    1: Result:='Single';
    2: Result:='Dual';
    3: Result:='Triple';
    4: Result:='Quad';
    5: Result:='Penta';
    6: Result:='Hexa';
    7: Result:='Hepta';
    8: Result:='Octa';
    9: Result:='Nona';
    10: Result:='Deca';
    11: Result:='Hendeca';
    12: Result:='Dodeca';
    13: Result:='Trideca';
    14: Result:='Tetradeca';
    15: Result:='Pentadeca';
    16: Result:='Hexadeca';
    17: Result:='Heptadeca';
    18: Result:='Octadeca';
    19: Result:='Enneadeca';
    20: Result:='Icosa';
  else

  end;
end;

function MHzToGHz(MHz : Integer): String;
begin
  if Length(IntToStr(MHz)) > 3 then
    Result := Copy(IntToStr(MHz), 0, Length(IntToStr(MHz))-3) + '.' + Copy(IntToStr(MHz),
      Length(IntToStr(MHz))-2, 2) + ' '+
      FmtMessage(cm('ConversionUnit5_2'), [ExpandConstant(' ')])
  else
    Result := IntToStr(MHz) + ' '+FmtMessage(cm('ConversionUnit5_1'), [ExpandConstant(' ')])
end;

function VideoSize: Integer;
var
  lpDisplayDevice: PDisplay_Device;
  DeviceKey: String;
  DeviceValue: Cardinal;
  DeviceName: AnsiString;
begin
  lpDisplayDevice.cb := SizeOf(lpDisplayDevice);
  DeviceKey:= ''; n:= 0;
  while not (EnumDisplayDevices(0, n, lpDisplayDevice, 0)and(lpDisplayDevice.StateFlags and 4 > 0))and(n < 127) do n:= n+1;
  for n := 0 to 127 do DeviceKey:= DeviceKey + lpDisplayDevice.DeviceKey[n];
  Delete(DeviceKey, Pos(Chr(0), DeviceKey), 127);
  StringChange(DeviceKey, '\Registry\Machine\', '');
  i := 1; DeviceValue := 0;
  if RegQueryBinaryValue(HKLM, DeviceKey, 'HardwareInformation.MemorySize', DeviceName) then
    for n := 1 to Length(DeviceName) do
    begin
      DeviceValue := DeviceValue + Ord(DeviceName[n])*i;
      i := i*$100;
    end else
    if not RegQueryDWordValue(HKLM, DeviceKey, 'HardwareInformation.MemorySize', DeviceValue) then
      RegQueryDWordValue(HKLM, DeviceKey + '\Info', 'VideoMemory', DeviceValue);
  DeviceName:= '';
  for n := 0 to 127 do DeviceName := DeviceName + lpDisplayDevice.DeviceString[n];
  Delete(DeviceName, Pos( Chr(0), DeviceName ), 127);
  Result:=RoundUp(DeviceValue/(1024*1024));
end;

function SoundDetails: String;
begin
  if GetSoundCards = 0 then
    Result:=FmtMessage(cm('SystemMessage3_4_1'), [ApplicationName('')])
  else
    Result:=GetSoundCardName;
end;

procedure TrayMenuItemOnClick(MenuItemIndex: Integer);
begin
  if not IsWindowEnabled(WizardForm.Handle) then exit;
end;

procedure TrayMenuOnPopup(PopMenu: LongWord; var bShow: Boolean);
begin
  bShow := IsWindowEnabled(WizardForm.Handle);
  if WizardFormInTray() then
  begin
    EnableMenuItem(PopMenu, 5, MF_BYPOSITION or MF_GRAYED);
    EnableMenuItem(PopMenu, 7, MF_BYPOSITION or MF_GRAYED);
  end else begin
    EnableMenuItem(PopMenu, 5, MF_BYPOSITION or MF_ENABLED);
    EnableMenuItem(PopMenu, 7, MF_BYPOSITION or MF_ENABLED);
  end;
end;

procedure TrayBalloon;
begin
  MenuItemClickCallback := WrapMenuItemClickProc(@TrayMenuItemOnClick, 1);
  MenuPopupCallback := WrapMenuPopupProc(@TrayMenuOnPopup, 2);
  MenuStrs := '';
  InitTrayIconCtrl(MainForm.Handle, WizardForm.Handle, WM_ICON_NOTIFY, FmtMessage(ExpandConstant('{cm:OtherMessage3_2}'), [ApplicationName('')]), 0, True, True, MenuStrs, -1, @TrayMenuItemOnClick, @TrayMenuOnPopup, nil);
  ShowBalloon(FmtMessage(cm('OtherMessage2_2'), [ExpandConstant(' ')])+' '+ExpandConstant('{code:ApplicationName}')+#13+FmtMessage(cm('OtherMessage2_3'), [ExpandConstant(' ')])+' '+ExpandConstant('{code:ApplicationPublisher}'), FmtMessage(cm('OtherMessage2_1'), [ExpandConstant(' ')]), 0, 20, False);
end;

function SplashAvai:Boolean;
begin
  if FileExists(ExpandConstant('{tmp}\Splash1.png'))
  then
    Result := True
  else
    Result := False;
end;

procedure InitiateSplash;
var
  i: integer;
begin
  i:=0;
  if SplashAvai then
  begin
    //TrayBalloon;
    repeat
      i:= i + 1;
      ShowSplashScreen(WizardForm.Handle,ExpandConstant('{tmp}\Splash'+IntToStr(i)+'.png'),
        SplashTimer1,SplashTimer2,SplashTimer3,0,255,False,$FFFFFF,10);
    until FileExists(ExpandConstant('{tmp}\Splash'+IntToStr(i)+'.png')) = False;
    //UninitTrayIconCtrl();
  end;
end;