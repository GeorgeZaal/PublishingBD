object SearchForm: TSearchForm
  Left = 582
  Top = 397
  BorderStyle = bsDialog
  Caption = #1055#1086#1080#1089#1082
  ClientHeight = 332
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 16
    Top = 56
    Width = 393
    Height = 25
    Shape = bsTopLine
  end
  object SpeedButton1: TSpeedButton
    Left = 16
    Top = 296
    Width = 73
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 96
    Top = 296
    Width = 73
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074
    OnClick = SpeedButton2Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 481
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 420
    Top = 48
    Width = 75
    Height = 25
    Caption = #1053#1072#1081#1090#1080'!'
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 16
    Top = 88
    Width = 481
    Height = 201
    ItemHeight = 13
    MultiSelect = True
    TabOrder = 2
    OnDblClick = ListBox1DblClick
  end
  object Edit2: TEdit
    Left = 176
    Top = 296
    Width = 321
    Height = 21
    TabOrder = 3
    Text = 'C:\'
  end
end
