object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Mini Compressor CMD'
  ClientHeight = 385
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object Memo2: TMemo
    Left = 672
    Top = 194
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 672
    Top = 289
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    OnClick = Memo1Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 824
    Top = 160
  end
end
