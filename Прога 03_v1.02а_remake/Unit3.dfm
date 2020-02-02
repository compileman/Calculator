object FormHelp: TFormHelp
  Left = 287
  Top = 356
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1082#1072
  ClientHeight = 210
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Memo: TMemo
    Left = 16
    Top = 40
    Width = 281
    Height = 161
    Alignment = taCenter
    BevelInner = bvNone
    BevelKind = bkSoft
    Lines.Strings = (
      'Memo')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
    WantTabs = True
  end
  object Panel1: TPanel
    Left = 16
    Top = 8
    Width = 281
    Height = 25
    Caption = 'Panel1'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 32
    Top = 168
    Width = 233
    Height = 25
    Caption = #1055#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1101#1074#1086#1083#1102#1094#1080#1102' '#1087#1072#1090#1095#1077#1081
    TabOrder = 2
    Visible = False
    OnClick = Button1Click
  end
end
