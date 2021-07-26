unit Unit6;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Ani, FMX.Layouts,
  FMX.Gestures,
  FMX.ScrollBox, FMX.Memo, FMX.StdCtrls, FMX.Controls.Presentation;

type
  TForm6 = class(TForm)
    ToolbarHolder: TLayout;
    ToolbarPopup: TPopup;
    ToolbarPopupAnimation: TFloatAnimation;
    ToolBar1: TToolBar;
    ToolbarApplyButton: TButton;
    ToolbarCloseButton: TButton;
    ToolbarAddButton: TButton;
    Memo1: TMemo;
    procedure ToolbarCloseButtonClick(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
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
  Form6: TForm6;

implementation

{$R *.fmx}

uses
  Unit1;

procedure TForm6.FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkEscape then
    ShowToolbar(not ToolbarPopup.IsOpen);
end;

procedure TForm6.ToolbarCloseButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  Memo1.Lines.LoadFromFile('Resource\IM_Changelog.txt');
end;

procedure TForm6.FormGesture(Sender: TObject;
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
      FGestureInProgress := True;
    end;

    if FGestureInProgress and (TInteractiveGestureFlag.gfEnd in EventInfo.Flags)
    then
    begin
      FGestureInProgress := False;
      DX := EventInfo.Location.X - FGestureOrigin.X;
      DY := EventInfo.Location.Y - FGestureOrigin.Y;
      if (Abs(DY) > Abs(DX)) then
        ShowToolbar(DY < 0);
    end;
  end
end;

procedure TForm6.ShowToolbar(AShow: Boolean);
begin
  ToolbarPopup.Width := ClientWidth;
  ToolbarPopup.PlacementRectangle.Rect :=
    TRectF.Create(0, ClientHeight - ToolbarPopup.Height, ClientWidth - 1,
    ClientHeight - 1);
  ToolbarPopupAnimation.StartValue := ToolbarPopup.Height;
  ToolbarPopupAnimation.StopValue := 0;

  ToolbarPopup.IsOpen := AShow;
end;

end.
