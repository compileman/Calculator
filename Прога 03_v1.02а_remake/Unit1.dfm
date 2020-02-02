object MainForm: TMainForm
  Left = 354
  Top = 241
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  BorderStyle = bsToolWindow
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
  ClientHeight = 233
  ClientWidth = 361
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button_Press_log: TSpeedButton
    Tag = 27
    Left = 8
    Top = 104
    Width = 41
    Height = 25
    Caption = 'log'
    OnClick = Button_Press_logClick
  end
  object Button_PressLeftSkob: TSpeedButton
    Tag = 19
    Left = 56
    Top = 72
    Width = 41
    Height = 25
    Caption = '('
    OnClick = Button_Press_logClick
  end
  object Button_PressRightSkob: TSpeedButton
    Tag = 20
    Left = 104
    Top = 72
    Width = 41
    Height = 25
    Caption = ')'
    OnClick = Button_Press_logClick
  end
  object Button_Press_exp: TSpeedButton
    Tag = 30
    Left = 56
    Top = 104
    Width = 41
    Height = 25
    Caption = 'exp'
    OnClick = Button_Press_logClick
  end
  object Button_Press_sin: TSpeedButton
    Tag = 22
    Left = 8
    Top = 200
    Width = 41
    Height = 25
    Caption = 'sin'
    OnClick = Button_Press_logClick
  end
  object Button_Press_arcsin: TSpeedButton
    Tag = 23
    Left = 56
    Top = 200
    Width = 41
    Height = 25
    Caption = 'arcsin'
    OnClick = Button_Press_logClick
  end
  object Button_Press_div: TSpeedButton
    Tag = 18
    Left = 8
    Top = 72
    Width = 41
    Height = 25
    Caption = ','
    OnClick = Button_Press_logClick
  end
  object Button_Press_cos: TSpeedButton
    Tag = 25
    Left = 8
    Top = 168
    Width = 41
    Height = 25
    Caption = 'cos'
    OnClick = Button_Press_logClick
  end
  object Button_Press_arccos: TSpeedButton
    Tag = 26
    Left = 56
    Top = 168
    Width = 41
    Height = 25
    Caption = 'arccos'
    OnClick = Button_Press_logClick
  end
  object Button_Press_mod: TSpeedButton
    Tag = 21
    Left = 104
    Top = 168
    Width = 41
    Height = 25
    Caption = 'mod'
    OnClick = Button_Press_logClick
  end
  object Button_Press_tg: TSpeedButton
    Tag = 28
    Left = 8
    Top = 136
    Width = 41
    Height = 25
    Caption = 'tg'
    OnClick = Button_Press_logClick
  end
  object Button_Press_arctg: TSpeedButton
    Tag = 29
    Left = 56
    Top = 136
    Width = 41
    Height = 25
    Caption = 'arctg'
    OnClick = Button_Press_logClick
  end
  object Button_Press_Stepen: TSpeedButton
    Tag = 33
    Left = 104
    Top = 136
    Width = 41
    Height = 25
    Caption = 'div'
    OnClick = Button_Press_logClick
  end
  object Button_Press_abs: TSpeedButton
    Tag = 24
    Left = 104
    Top = 200
    Width = 41
    Height = 25
    Caption = 'abs'
    OnClick = Button_Press_logClick
  end
  object Button_Press_ln: TSpeedButton
    Tag = 32
    Left = 104
    Top = 104
    Width = 41
    Height = 25
    Caption = 'E'
    OnClick = Button_Press_logClick
  end
  object Button_Press_plus: TSpeedButton
    Tag = 4
    Left = 320
    Top = 72
    Width = 33
    Height = 25
    Caption = '+'
    OnClick = Button_Press_logClick
  end
  object Button_Press_minus: TSpeedButton
    Tag = 8
    Left = 320
    Top = 104
    Width = 33
    Height = 25
    Caption = '-'
    OnClick = Button_Press_logClick
  end
  object Button_Press_delenie: TSpeedButton
    Tag = 12
    Left = 320
    Top = 136
    Width = 33
    Height = 25
    Caption = '/'
    OnClick = Button_Press_logClick
  end
  object Button_Press_pi: TSpeedButton
    Left = 160
    Top = 200
    Width = 33
    Height = 25
    Caption = 'pi'
    OnClick = Button_Press_piClick
  end
  object Button_Press_proisvedenie: TSpeedButton
    Tag = 15
    Left = 320
    Top = 168
    Width = 33
    Height = 25
    Caption = '*'
    OnClick = Button_Press_logClick
  end
  object Button_Press_Result: TSpeedButton
    Left = 320
    Top = 200
    Width = 33
    Height = 25
    Caption = '='
    OnClick = Button_Press_ResultClick
  end
  object Button_Press_tochka: TSpeedButton
    Tag = 14
    Left = 280
    Top = 168
    Width = 33
    Height = 25
    Caption = '.'
    OnClick = Button_Press_logClick
  end
  object Button_Press_ChangeSign: TSpeedButton
    Left = 240
    Top = 168
    Width = 33
    Height = 25
    Caption = '+/-'
    OnClick = Button_Press_ChangeSignClick
  end
  object Button_Press_0: TSpeedButton
    Tag = 13
    Left = 200
    Top = 168
    Width = 33
    Height = 25
    Caption = '0'
    OnClick = Button_Press_logClick
  end
  object Button_Press_1: TSpeedButton
    Tag = 9
    Left = 200
    Top = 136
    Width = 33
    Height = 25
    Caption = '1'
    OnClick = Button_Press_logClick
  end
  object Button_Press_2: TSpeedButton
    Tag = 10
    Left = 240
    Top = 136
    Width = 33
    Height = 25
    Caption = '2'
    OnClick = Button_Press_logClick
  end
  object Button_Press_3: TSpeedButton
    Tag = 11
    Left = 280
    Top = 136
    Width = 33
    Height = 25
    Caption = '3'
    OnClick = Button_Press_logClick
  end
  object Button_Press_ch: TSpeedButton
    Tag = 17
    Left = 280
    Top = 200
    Width = 33
    Height = 25
    Caption = 'ch'
    OnClick = Button_Press_logClick
  end
  object Button_Press_MemPlus: TSpeedButton
    Left = 160
    Top = 136
    Width = 33
    Height = 25
    Caption = 'M+'
    OnClick = Button_Press_MemPlusClick
  end
  object Button_Press_MemMinus: TSpeedButton
    Left = 160
    Top = 168
    Width = 33
    Height = 25
    Caption = '^'
    OnClick = Button_Press_logClick
  end
  object Button_Press_4: TSpeedButton
    Tag = 5
    Left = 200
    Top = 104
    Width = 33
    Height = 25
    Caption = '4'
    OnClick = Button_Press_logClick
  end
  object Button_Press_5: TSpeedButton
    Tag = 6
    Left = 240
    Top = 104
    Width = 33
    Height = 25
    Caption = '5'
    OnClick = Button_Press_logClick
  end
  object Button_Press_6: TSpeedButton
    Tag = 7
    Left = 280
    Top = 104
    Width = 33
    Height = 25
    Caption = '6'
    OnClick = Button_Press_logClick
  end
  object Button_Press_sh: TSpeedButton
    Tag = 16
    Left = 240
    Top = 200
    Width = 33
    Height = 25
    Caption = 'sh'
    OnClick = Button_Press_logClick
  end
  object Button_Press_e: TSpeedButton
    Left = 200
    Top = 200
    Width = 33
    Height = 25
    Caption = 'e'
    OnClick = Button_Press_eClick
  end
  object Button_Press_9: TSpeedButton
    Tag = 3
    Left = 280
    Top = 72
    Width = 33
    Height = 25
    Caption = '9'
    OnClick = Button_Press_logClick
  end
  object Button_Press_8: TSpeedButton
    Tag = 2
    Left = 240
    Top = 72
    Width = 33
    Height = 25
    Caption = '8'
    OnClick = Button_Press_logClick
  end
  object Button_Press_7: TSpeedButton
    Tag = 1
    Left = 200
    Top = 72
    Width = 33
    Height = 25
    Caption = '7'
    OnClick = Button_Press_logClick
  end
  object Button_Press_MemClear: TSpeedButton
    Left = 160
    Top = 72
    Width = 33
    Height = 25
    Caption = 'MC'
    OnClick = Button_Press_MemClearClick
  end
  object Button_Press_MemResult: TSpeedButton
    Left = 160
    Top = 104
    Width = 33
    Height = 25
    Caption = 'MR'
    OnClick = Button_Press_MemResultClick
  end
  object Backcpace: TSpeedButton
    Left = 240
    Top = 40
    Width = 65
    Height = 25
    Caption = 'BackSpace'
    OnClick = BackcpaceClick
  end
  object ClearEdit: TSpeedButton
    Left = 312
    Top = 40
    Width = 41
    Height = 25
    Caption = 'C'
    OnClick = ClearEditClick
  end
  object Panel: TPanel
    Left = 200
    Top = 40
    Width = 33
    Height = 25
    Color = clBackground
    TabOrder = 0
  end
  object Rad: TRadioButton
    Left = 9
    Top = 38
    Width = 41
    Height = 25
    Caption = 'Rad'
    Checked = True
    TabOrder = 1
    TabStop = True
  end
  object Cycle: TRadioButton
    Left = 101
    Top = 38
    Width = 49
    Height = 25
    Caption = 'Cycle'
    TabOrder = 2
  end
  object Deg: TRadioButton
    Left = 56
    Top = 38
    Width = 41
    Height = 25
    Caption = 'Deg'
    TabOrder = 3
  end
  object Grad: TRadioButton
    Left = 150
    Top = 38
    Width = 48
    Height = 25
    Caption = 'Grad'
    TabOrder = 4
  end
  object Memo: TMemo
    Left = 8
    Top = 11
    Width = 345
    Height = 21
    Alignment = taRightJustify
    PopupMenu = PopupMenu1
    TabOrder = 5
    OnKeyPress = MemoKeyPress
  end
  object MainMenu: TMainMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 72
    Top = 8
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N20: TMenuItem
        Caption = 'PopupMenu '#1087#1086#1083#1103' '#1074#1074#1086#1076#1072
        Checked = True
        OnClick = N20Click
      end
      object N4: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100'/'#1091#1076#1072#1083#1080#1090#1100' '#1092'-'#1094#1080#1102
        OnClick = N4Click
      end
      object N21: TMenuItem
        Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1086#1074
        OnClick = N21Click
      end
      object N5: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N5Click
      end
    end
    object N6: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N7: TMenuItem
        Caption = #1042#1099#1079#1086#1074' '#1089#1087#1088#1072#1074#1082#1080
        object N19: TMenuItem
          Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1092#1091#1085#1082#1094#1080#1103#1093
          object N9: TMenuItem
            Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1072#1085#1076#1072#1088#1090#1085#1099#1093' '#1092'-'#1094#1080#1081
            OnClick = N9Click
          end
          object N10: TMenuItem
            Caption = #1057#1087#1080#1089#1086#1082' '#1092'-'#1094#1080#1081' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
            OnClick = N10Click
          end
          object N11: TMenuItem
            Caption = #1057#1080#1085#1090#1072#1082#1089#1080#1089' '#1092'-'#1094#1080#1081
            OnClick = N11Click
          end
        end
        object N16: TMenuItem
          Caption = #1055#1086#1083#1077#1079#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          OnClick = N16Click
        end
      end
      object N8: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N8Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 32
    Top = 8
    object N2: TMenuItem
      Caption = #1042#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1077
      object N3: TMenuItem
        Caption = #1055#1086' '#1083#1077#1074#1086#1084#1091' '#1082#1088#1072#1102
        OnClick = N3Click
      end
      object N12: TMenuItem
        Caption = #1055#1086' '#1094#1077#1085#1090#1088#1091
        OnClick = N3Click
      end
      object N13: TMenuItem
        Caption = #1055#1086' '#1087#1088#1072#1074#1086#1084#1091' '#1082#1088#1072#1102
        Checked = True
        OnClick = N3Click
      end
    end
    object N15: TMenuItem
      Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100
      OnClick = N15Click
    end
    object N14: TMenuItem
      Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1105
      OnClick = N14Click
    end
    object N17: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      OnClick = N17Click
    end
    object N18: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      OnClick = N18Click
    end
  end
end
