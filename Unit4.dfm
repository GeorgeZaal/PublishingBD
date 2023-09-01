object AddCol: TAddCol
  Left = 402
  Top = 370
  BorderStyle = bsDialog
  Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1082#1086#1083#1086#1085#1082#1072
  ClientHeight = 200
  ClientWidth = 520
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 8
    Top = 16
    Width = 188
    Height = 13
    Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1082#1080':'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 40
    Width = 505
    Height = 121
    Caption = #1060#1086#1088#1084#1091#1083#1072
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 28
      Width = 50
      Height = 13
      Caption = #1050#1086#1083#1086#1082#1072' '#1040':'
    end
    object Label2: TLabel
      Left = 160
      Top = 28
      Width = 53
      Height = 13
      Caption = #1044#1077#1081#1089#1090#1074#1080#1077':'
    end
    object Label3: TLabel
      Left = 224
      Top = 28
      Width = 50
      Height = 13
      Caption = #1050#1086#1083#1086#1082#1072' '#1041':'
    end
    object Label4: TLabel
      Left = 376
      Top = 28
      Width = 53
      Height = 13
      Caption = #1044#1077#1081#1089#1090#1074#1080#1077':'
    end
    object Label5: TLabel
      Left = 440
      Top = 28
      Width = 51
      Height = 13
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077':'
    end
    object EColA: TComboBox
      Left = 8
      Top = 52
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
    object EDey1: TComboBox
      Left = 160
      Top = 52
      Width = 57
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = '+'
      Items.Strings = (
        '+'
        '-'
        '*'
        '/')
    end
    object EColB: TComboBox
      Left = 224
      Top = 52
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
    end
    object Edey2: TComboBox
      Left = 376
      Top = 52
      Width = 57
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = '+'
      Items.Strings = (
        '+'
        '-'
        '*'
        '/')
    end
    object EZnac: TEdit
      Left = 440
      Top = 52
      Width = 57
      Height = 21
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 88
      Width = 97
      Height = 17
      Caption = #1054#1082#1088#1091#1075#1083#1077#1085#1080#1077
      TabOrder = 5
    end
  end
  object Button1: TButton
    Left = 352
    Top = 168
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 437
    Top = 168
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
  object ENameCol: TEdit
    Left = 208
    Top = 13
    Width = 305
    Height = 21
    TabOrder = 3
    Text = '----------'
  end
end
