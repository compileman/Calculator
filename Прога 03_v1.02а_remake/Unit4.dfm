object Form4: TForm4
  Left = 400
  Top = 187
  Width = 1036
  Height = 764
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ScreenSnap = True
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 160
    Top = 8
    Width = 377
    Height = 465
  end
  object GroupBox1: TGroupBox
    Left = 10
    Top = 219
    Width = 140
    Height = 125
    Caption = #1057#1077#1090#1082#1072
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object CheckBox2: TCheckBox
      Left = 28
      Top = 13
      Width = 81
      Height = 20
      Caption = #1042#1082#1083'/'#1042#1099#1082#1083
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 35
      Width = 121
      Height = 85
      Caption = #1050#1086#1083'-'#1074#1086' '#1088#1072#1079#1073#1080#1077#1085#1080#1081
      TabOrder = 1
      object Label19: TLabel
        Left = 9
        Top = 58
        Width = 31
        Height = 16
        Caption = #1087#1086' Y:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 10
        Top = 26
        Width = 30
        Height = 16
        Caption = #1087#1086' X:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit13: TEdit
        Left = 48
        Top = 24
        Width = 65
        Height = 21
        TabOrder = 0
        Text = '10'
      end
      object Edit14: TEdit
        Left = 48
        Top = 56
        Width = 65
        Height = 21
        TabOrder = 1
        Text = '10'
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 11
    Top = 8
    Width = 140
    Height = 212
    Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    Color = clBtnFace
    ParentColor = False
    TabOrder = 1
    object Label20: TLabel
      Left = 20
      Top = 17
      Width = 97
      Height = 13
      Alignment = taCenter
      Caption = #1047#1072#1076#1072#1085#1085#1099#1077' '#1092#1091#1085#1082#1094#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 48
      Top = 91
      Width = 38
      Height = 16
      Alignment = taCenter
      Caption = 'min X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 47
      Top = 129
      Width = 42
      Height = 16
      Alignment = taCenter
      Caption = 'max X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 55
      Top = 169
      Width = 29
      Height = 16
      Alignment = taCenter
      Caption = #1064#1072#1075
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox2: TComboBox
      Left = 10
      Top = 34
      Width = 116
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'sqr(@)'
        'sin(@)')
    end
    object Button2: TButton
      Left = 10
      Top = 64
      Width = 116
      Height = 24
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1092#1091#1085#1082#1094#1080#1102
      TabOrder = 1
    end
    object Edit15: TEdit
      Left = 10
      Top = 109
      Width = 116
      Height = 21
      TabOrder = 2
      Text = '-3'
    end
    object Edit16: TEdit
      Left = 10
      Top = 147
      Width = 116
      Height = 21
      TabOrder = 3
      Text = '3'
    end
    object Edit1: TEdit
      Left = 10
      Top = 185
      Width = 116
      Height = 21
      TabOrder = 4
      Text = '1'
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 9
    Top = 346
    Width = 140
    Height = 59
    Caption = #1052#1072#1089#1096#1090#1072#1073#1080#1088#1086#1074#1072#1085#1080#1077
    Color = clBtnFace
    ItemIndex = 1
    Items.Strings = (
      #1056#1072#1089#1090#1103#1078#1077#1085#1080#1077' '#1087#1086' Y'
      #1057#1086#1093#1088'-'#1085#1080#1077' '#1087#1088#1086#1087#1086#1088#1094#1080#1081)
    ParentColor = False
    TabOrder = 2
  end
  object GroupBox4: TGroupBox
    Left = 9
    Top = 404
    Width = 140
    Height = 68
    Caption = #1054#1094#1080#1092#1088#1086#1074#1082#1072
    Color = clBtnFace
    ParentColor = False
    TabOrder = 3
    object ComboBox1: TComboBox
      Left = 12
      Top = 15
      Width = 115
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
    end
    object ComboBox3: TComboBox
      Left = 12
      Top = 41
      Width = 116
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 1
    end
  end
  object GroupBox5: TGroupBox
    Left = 10
    Top = 476
    Width = 138
    Height = 66
    Caption = 'GroupBox5'
    TabOrder = 4
    object Label2: TLabel
      Left = 21
      Top = 12
      Width = 94
      Height = 16
      Caption = #1064#1080#1088#1080#1085#1072' '#1083#1080#1085#1080#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 13
      Top = 31
      Width = 110
      Height = 21
      TabOrder = 0
      Text = '4'
    end
  end
  object BitBtn1: TBitBtn
    Left = 11
    Top = 552
    Width = 135
    Height = 33
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
    TabOrder = 5
    OnClick = BitBtn1Click
    Style = bsWin31
  end
end
