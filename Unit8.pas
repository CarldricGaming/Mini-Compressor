unit Unit8;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Viewport3D,
  FMX.MaterialSources, FMX.Types3D, System.Math.Vectors, FMX.Controls3D,
  FMX.Objects3D, FMX.Ani, Windows, FMX.Utils, FMX.Objects;

type
  TForm8 = class(TForm)
    Viewport3D1: TViewport3D;
    LightMaterialSource1: TLightMaterialSource;
    LightMaterialSource2: TLightMaterialSource;
    Light1: TLight;
    RoundCube1: TRoundCube;
    FloatAnimation1: TFloatAnimation;
    Sphere1: TSphere;
    Dummy1: TDummy;
    StrokeCube1: TStrokeCube;
    ColorKeyAnimation1: TColorKeyAnimation;
    Text1: TText;
    procedure FormCreate(Sender: TObject);
    procedure Dummy1Render(Sender: TObject; Context: TContext3D);
    procedure FloatAnimation1Process(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure RoundCube2Render(Sender: TObject; Context: TContext3D);
    procedure RoundCube1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single; RayPos, RayDir: TVector3D);
    procedure Sphere1Render(Sender: TObject; Context: TContext3D);
    procedure RoundCube1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single; RayPos, RayDir: TVector3D);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      BassHandle, BassSoundFX1, BassSoundFX2, BassSoundFX3: HWND;
      BassSoundFile1, BassSoundFile2, BassSoundFile3: PChar;
      BassVolume: Single;

    Speed: Single;
    PointIn: TPoint3D;
    procedure MoveBall;
    procedure NextLevel;
    function SizeOf3D(const a3DObj: TControl3D): TPoint3D;
  end;

var
  Form8: TForm8;

implementation

uses
  bass,
  Unit1;

function GetAnySource(Filename: string): PChar;
begin
  Result:= PChar(IncludeTrailingBackslash(GetCurrentDir) + Filename);
end;

{$R *.fmx}

procedure TForm8.Dummy1Render(Sender: TObject; Context: TContext3D);
begin
//  Context.SetCameraAngleOfView(0.01);
//  with Dummy1.Scale do Point:= Point3D(1, 1, 1) * 0.01 / 45;
end;

procedure TForm8.FloatAnimation1Finish(Sender: TObject);
begin
  NextLevel;
end;

procedure TForm8.FloatAnimation1Process(Sender: TObject);
begin
  MoveBall;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  BassSoundFile1:= GetAnySource('..\Resources\Game\Brick_Destroy.mp3');
  BassSoundFX1:= BASS_StreamCreateFile(False, BassSoundFile1, 0, 0, BASS_SAMPLE_FLOAT or BASS_UNICODE);

  BassSoundFile2:= GetAnySource('..\Resources\Game\Wall_Hit.mp3');
  BassSoundFX2:= BASS_StreamCreateFile(False, BassSoundFile2, 0, 0, BASS_SAMPLE_FLOAT or BASS_UNICODE);

  BassSoundFile3:= GetAnySource('..\Resources\Game\Out.mp3');
  BassSoundFX3:= BASS_StreamCreateFile(False, BassSoundFile3, 0, 0, BASS_SAMPLE_FLOAT or BASS_UNICODE);
end;

procedure TForm8.FormShow(Sender: TObject);
var
  V: IViewport3D;
begin
  Viewport3D1.UsingDesignCamera := True;
  V:= Viewport3D1;
  with TDummy(V.CurrentCamera.Parent) do ResetRotationAngle;
  Speed := 0.15;
  PointIn := NullPoint3D;
  RandSeed:= 23;
  RoundCube1.AutoCapture:= True;
  NextLevel;
end;

procedure TForm8.MoveBall;
var
  D, P, M: TPoint3D;
  A, S: Integer;
  R: TRoundCube;
begin
  D:= Sphere1.Position.DefaultValue;
  P:= Dummy1.AbsoluteToLocal3D(Sphere1.AbsolutePosition);
  M:= (SizeOf3D(Dummy1) - SizeOf3D(Sphere1)) * 0.5;
  P:= P + D.Normalize * Speed;

  if ((P.X > M.X) and (D.X > 0)) or ((P.X < -M.X) and (D.X < 0)) then
  begin
    S:= 1;
    if D.Y < 0 then
      S:= -1;
    if Abs(D.Normalize.Y * 180) < 15 then
      D.Y:= s;
    D.X := -D.X;
  end;
  if ((P.Y > M.Y) and (D.Y > 0)) or ((P.Y < -M.Y) and (D.Y < 0)) then
  begin
    D.Y := -D.Y;
    if P.Y > M.Y then
    begin
      BASS_ChannelPlay(BassSoundFX3, True);
      FloatAnimation1.StopAtCurrent;
      Exit;
    end;
  end;
  D.Z:= 0;
  PointIn.Z:= 0;
  with Dummy1 do
    for A := ChildrenCount-1 downto 0 do
    begin
      if not (Children[A] is TRoundCube) then Continue;
      R:= TRoundCube(Children[A]);
      if R.Tag < 0 then
      begin
        if Speed <> 0 then PointIn.X:= PointIn.X + 1;

        RemoveObject(R);
        FreeAndNil(R);
      end else
      if R.Tag = 0 then
        PointIn.Z:= PointIn.Z + 1;
    end;

  with Sphere1.Position do
    Point:= Point + D.Normalize * Speed;
  Text1.Text := 'Score: ' + IntToStr(Trunc(PointIn.X))
              + ' | Level: ' + IntToStr(Trunc(PointIn.Y))
              + ' | Block: ' + IntToStr(Trunc(PointIn.Z));
  Sphere1.Position.DefaultValue := D;

  if (PointIn.Z < 1) then FloatAnimation1.StopAtCurrent;
end;

procedure TForm8.NextLevel;
var
  Z, S: TPoint3D;
  A, B, C, E: Integer;
  R: TRoundCube;
  Y, X, F, L: Single;
begin
  with Dummy1 do
    for A := ChildrenCount-1 downto 0 do
    begin
      if not (Children[A] is TRoundCube) then Continue;
      R:= TRoundCube(Children[A]);
      if R.Tag < 1 then
      begin
        RemoveObject(R);
        FreeAndNil(R);
      end;
    end;

  if Speed > 0.55 then Speed:= Speed + 0.01;
  Sphere1.Position.Point:= Point3D(8, 3, 0);
  Sphere1.Position.DefaultValue:= Point3D(-0.65, -1, 0);

  Y:= Dummy1.Height * -0.5 + 2;
  C:= 2 + Random(4);
  F:= 0.5;
  for A := 1 to C do
  begin
    Z:= Point3D(1 + Random * 2, 0.5 + Random * 0.5, 0.5 + Random * 0.5);
    E:= Trunc(Dummy1.Width / (Z.X + F));
    L:= (E * Z.X) + ((E - 1) * F);
    L:= (Dummy1.Width - L) * 0.5;
    X:= (Dummy1.Width * 0.5) + (L + Z.X * 0.5);
    S:= Point3D(X- 20, Y, 0);
    for B := 0 to E - 1 do
    begin
      R:= TRoundCube.Create(nil);
      R.MaterialSource:= LightMaterialSource2;
      R.SetSize(Z.X, Z.Y, Z.Z);
      Dummy1.AddObject(R);
      R.Position.Point := S;
      R.Tag := 0;
      S:= S + Point3D(F+ Z.X, 0, 0);
      R.OnRender := RoundCube2Render;
    end;
    Y:= Y + F + Z.Y;
  end;

  PointIn.Y := PointIn.Y + 1;
  FloatAnimation1.Start;
end;

procedure TForm8.RoundCube1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single; RayPos, RayDir: TVector3D);
begin
  if ssLeft in Shift then
    with TControl3D(Sender).Position do
      DefaultValue:= Point - (RayDir * RayPos.Length) * Point3D(1, 0, 0);
end;

procedure TForm8.RoundCube1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Single; RayPos, RayDir: TVector3D);
begin
  if ssLeft in Shift then
    with TControl3D(Sender).Position do
      Point:= DefaultValue + (RayDir * RayPos.Length) * Point3D(1, 0, 0);
end;

procedure TForm8.RoundCube2Render(Sender: TObject; Context: TContext3D);
var
  K: TRoundCube;
  P, Z, D, R, M: TPoint3D;
  C: TAlphaColor;
begin
  K:= TRoundCube(Sender);
  with K do
  begin
    P:= AbsoluteToLocal3D(Sphere1.AbsolutePosition);
    Z:= Point3D(1/Width, 1/Height, 1/Depth);
  end;

  R:= SizeOf3D(K);
  M:= (R + SizeOf3D(Sphere1)) * 0.5;

  if K.Tag = 0 then
  begin
    //C:= TAlphaColors.Yellow;
    C:= Vector3DToColor(K.Position.Point.Normalize * 20);
    LightMaterialSource2.Diffuse := C;
    (*
    if P.Length < 5 then
    begin

      Context.DrawLine(NullPoint3D, P * Z, 1, C);
      Context.DrawCube(NullPoint3D, (R + P * Speed) * Z, 1, C);
    end;
    *)
  end;

  if (Abs(P.X) < M.X) and (Abs(P.Y) < M.Y) then
  begin
    if K.Tag = 0 then
    begin
      K.Tag := -1;
      ColorKeyAnimation1.Start;
      BASS_ChannelPlay(BassSoundFX1, True);
    end else
      BASS_ChannelPlay(BassSoundFX2, True);

    D:= Sphere1.Position.Point - K.Position.Point;
    Sphere1.Position.DefaultValue := D;
  end;
end;

function TForm8.SizeOf3D(const a3DObj: TControl3D): TPoint3D;
begin
  Result:= NullPoint3D;
  if a3DObj <> nil then
    with a3DObj do
      Result:= Point3D(Width, Height, Depth);
end;

procedure TForm8.Sphere1Render(Sender: TObject; Context: TContext3D);
begin
(*
  with Sphere1 do
    Context.DrawLine(NullPoint3D,
      Position.DefaultValue.Normalize * Point3D(1/Width, 1/Height, 1/Depth) * 5, 1, TAlphaColors.Red);
*)
end;

end.
