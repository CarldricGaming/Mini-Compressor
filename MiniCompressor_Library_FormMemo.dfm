object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'MC_Compressing'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object MC_ExecuteFile: TLabel
    Left = 0
    Top = 0
    Width = 24
    Height = 15
    Caption = 'exec'
    Visible = False
  end
  object MC_Code: TLabel
    Left = 304
    Top = 232
    Width = 52
    Height = 15
    Caption = 'MC_Code'
    Visible = False
  end
  object MC_Memo: TMemo
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 200
  end
end
