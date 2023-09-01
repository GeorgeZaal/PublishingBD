object Colored: TColored
  Left = 404
  Top = 377
  BorderStyle = bsDialog
  Caption = #1042#1099#1076#1077#1083#1077#1085#1080#1077' '#1094#1074#1077#1090#1086#1084
  ClientHeight = 168
  ClientWidth = 511
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 497
    Height = 121
    Caption = #1060#1086#1088#1084#1091#1083#1072' '#1074#1099#1076#1077#1083#1077#1085#1080#1103':'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 47
      Height = 13
      Caption = #1057#1090#1086#1073#1100#1094#1099':'
    end
    object Label2: TLabel
      Left = 8
      Top = 72
      Width = 84
      Height = 13
      Caption = #1057#1086#1076#1077#1088#1078#1072#1090' '#1090#1077#1082#1089#1090':'
    end
    object Label3: TLabel
      Left = 160
      Top = 40
      Width = 6
      Height = 13
      Caption = #1080
    end
    object Label4: TLabel
      Left = 328
      Top = 40
      Width = 6
      Height = 13
      Caption = #1080
    end
    object CB1: TComboBox
      Left = 8
      Top = 40
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
    object CB2: TComboBox
      Left = 176
      Top = 40
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
    end
    object CB3: TComboBox
      Left = 344
      Top = 40
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 8
      Top = 88
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 176
      Top = 88
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 344
      Top = 88
      Width = 145
      Height = 21
      TabOrder = 5
    end
  end
  object Button1: TButton
    Left = 344
    Top = 136
    Width = 75
    Height = 25
    Caption = #1042#1099#1076#1077#1083#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 429
    Top = 136
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
end
