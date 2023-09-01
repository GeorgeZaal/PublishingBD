object AddBook: TAddBook
  Left = 430
  Top = 205
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1081' '#1082#1085#1080#1075#1080
  ClientHeight = 698
  ClientWidth = 338
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
  object Bevel5: TBevel
    Left = 226
    Top = 200
    Width = 15
    Height = 49
    Shape = bsLeftLine
  end
  object Bevel6: TBevel
    Left = 90
    Top = 664
    Width = 15
    Height = 25
    Shape = bsLeftLine
  end
  object Label5: TLabel
    Left = 104
    Top = 670
    Width = 73
    Height = 13
    Cursor = crHandPoint
    Caption = '* '#1055#1088#1080#1082#1080#1085#1091#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label5Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 321
    Height = 249
    Caption = #1054#1089#1085#1086#1074#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
    TabOrder = 0
    object LAvtor: TLabel
      Left = 8
      Top = 24
      Width = 36
      Height = 13
      Caption = #1040#1074#1090#1086#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LSostavitel: TLabel
      Left = 56
      Top = 24
      Width = 65
      Height = 13
      Caption = #1057#1086#1089#1090#1072#1074#1080#1090#1077#1083#1100
    end
    object Label1: TLabel
      Left = 8
      Top = 80
      Width = 53
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    end
    object Label3: TLabel
      Left = 240
      Top = 216
      Width = 37
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089':'
    end
    object Bevel1: TBevel
      Left = 50
      Top = 24
      Width = 17
      Height = 17
      Shape = bsLeftLine
    end
    object Bevel2: TBevel
      Left = 106
      Top = 192
      Width = 15
      Height = 49
      Shape = bsLeftLine
    end
    object Bevel3: TBevel
      Left = 218
      Top = 192
      Width = 15
      Height = 49
      Shape = bsLeftLine
    end
    object Label6: TLabel
      Left = 240
      Top = 192
      Width = 37
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089':'
    end
    object Label7: TLabel
      Left = 128
      Top = 24
      Width = 83
      Height = 13
      Caption = '['#1060#1072#1084#1080#1083#1080#1103' '#1048'. '#1054'.]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EAvtor: TEdit
      Left = 8
      Top = 48
      Width = 305
      Height = 21
      TabOrder = 0
    end
    object EMName: TMemo
      Left = 8
      Top = 96
      Width = 305
      Height = 49
      TabOrder = 1
    end
    object EVid: TLabeledEdit
      Left = 8
      Top = 168
      Width = 305
      Height = 21
      EditLabel.Width = 74
      EditLabel.Height = 13
      EditLabel.Caption = '* '#1042#1080#1076' '#1080#1079#1076#1072#1085#1080#1103':'
      PopupMenu = VidMenu
      TabOrder = 2
      OnKeyUp = EVidKeyUp
    end
    object EData: TLabeledEdit
      Left = 8
      Top = 208
      Width = 73
      Height = 21
      EditLabel.Width = 61
      EditLabel.Height = 13
      EditLabel.Caption = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080':'
      TabOrder = 3
      OnKeyPress = EDataKeyPress
    end
    object EZakaz: TLabeledEdit
      Left = 128
      Top = 208
      Width = 73
      Height = 21
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = #1047#1072#1082#1072#1079':'
      TabOrder = 4
      OnKeyPress = EZakazKeyPress
    end
    object EStatus: TComboBox
      Left = 240
      Top = 208
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      Text = #1056#1048#1057
      Items.Strings = (
        #1056#1048#1057
        #1082#1080#1086#1089#1082
        #1076#1086#1087'.'
        '---')
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 264
    Width = 153
    Height = 185
    Caption = #1050#1086#1085#1089#1090#1088#1091#1082#1094#1080#1103' '#1080' '#1090#1080#1088#1072#1078':'
    TabOrder = 1
    object Label2: TLabel
      Left = 48
      Top = 90
      Width = 45
      Height = 13
      Caption = #1060#1086#1088#1084#1072#1090':'
    end
    object EPages: TLabeledEdit
      Left = 96
      Top = 24
      Width = 49
      Height = 21
      EditLabel.Width = 81
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1083'-'#1074#1086' '#1089#1090#1088#1072#1085#1080#1094':'
      LabelPosition = lpLeft
      TabOrder = 0
      OnKeyPress = EPagesKeyPress
      OnKeyUp = EPagesKeyUp
    end
    object ETiraz: TLabeledEdit
      Left = 96
      Top = 56
      Width = 49
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = #1058#1080#1088#1072#1078':'
      LabelPosition = lpLeft
      TabOrder = 1
      OnKeyPress = ETirazKeyPress
    end
    object ECena: TLabeledEdit
      Left = 96
      Top = 152
      Width = 49
      Height = 21
      EditLabel.Width = 62
      EditLabel.Height = 13
      EditLabel.Caption = #1062#1077#1085#1072' 1 '#1101#1082#1079'.:'
      LabelPosition = lpLeft
      TabOrder = 4
      OnKeyPress = ECenaKeyPress
    end
    object EFormat: TComboBox
      Left = 96
      Top = 88
      Width = 49
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'A5'
      Items.Strings = (
        'A5'
        'A4')
    end
    object Elist: TLabeledEdit
      Left = 96
      Top = 120
      Width = 49
      Height = 21
      EditLabel.Width = 62
      EditLabel.Height = 13
      EditLabel.Caption = '* '#1059#1095'. '#1080#1079#1076'. '#1083'.:'
      LabelPosition = lpLeft
      PopupMenu = UIMenu
      TabOrder = 3
      OnClick = ElistClick
      OnEnter = ElistEnter
      OnKeyPress = ElistKeyPress
    end
  end
  object GroupBox3: TGroupBox
    Left = 168
    Top = 264
    Width = 161
    Height = 185
    Caption = 'GroupBox3'
    TabOrder = 2
    object EBBK: TLabeledEdit
      Left = 96
      Top = 56
      Width = 49
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = #1041#1041#1050':'
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object EUDK: TLabeledEdit
      Left = 96
      Top = 24
      Width = 49
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = #1059#1044#1050':'
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object EAznak: TLabeledEdit
      Left = 96
      Top = 88
      Width = 49
      Height = 21
      EditLabel.Width = 84
      EditLabel.Height = 13
      EditLabel.Caption = #1040#1074#1090#1086#1088#1089#1082#1080#1081' '#1079#1085#1072#1082':'
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object EISBN: TLabeledEdit
      Left = 40
      Top = 120
      Width = 105
      Height = 21
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'ISBN:'
      LabelPosition = lpLeft
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 456
    Width = 321
    Height = 201
    Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103':'
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 288
      Top = 87
      Width = 21
      Height = 21
      Caption = '...'
    end
    object Label4: TLabel
      Left = 8
      Top = 120
      Width = 99
      Height = 13
      Caption = '* '#1055#1086#1083#1085#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077':'
    end
    object EPrim: TLabeledEdit
      Left = 8
      Top = 40
      Width = 305
      Height = 21
      EditLabel.Width = 66
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
      PopupMenu = PrimMenu
      TabOrder = 0
    end
    object EDir: TLabeledEdit
      Left = 8
      Top = 88
      Width = 281
      Height = 21
      EditLabel.Width = 133
      EditLabel.Height = 13
      EditLabel.Caption = '* '#1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077' '#1085#1072' '#1076#1080#1089#1082#1077':'
      PopupMenu = DirMenu
      TabOrder = 1
      OnContextPopup = EDirContextPopup
    end
    object EFull: TMemo
      Left = 8
      Top = 136
      Width = 297
      Height = 57
      PopupMenu = FullMenu
      TabOrder = 2
    end
  end
  object Button2: TButton
    Left = 8
    Top = 664
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 200
    Top = 664
    Width = 65
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 5
  end
  object Button4: TButton
    Left = 272
    Top = 664
    Width = 57
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 6
    OnClick = Button4Click
  end
  object VidMenu: TPopupMenu
    Left = 288
    Top = 168
    object N9: TMenuItem
      Caption = #1072#1074#1090#1086#1088#1077#1092'.'
      OnClick = N9Click
    end
    object N10: TMenuItem
      Caption = #1083#1072#1073'. '#1087#1088#1072#1082#1090#1080#1082#1091#1084
      OnClick = N10Click
    end
    object N2: TMenuItem
      Caption = #1084#1077#1090#1086#1076'. '#1091#1082#1072#1079#1072#1085#1080#1103
      OnClick = N2Click
    end
    object N4: TMenuItem
      Caption = #1084#1086#1085#1086#1075#1088#1072#1092#1080#1103
      OnClick = N4Click
    end
    object N12: TMenuItem
      Caption = #1087#1088#1086#1075#1088#1072#1084#1084#1072
      OnClick = N12Click
    end
    object N7: TMenuItem
      Caption = #1089#1073#1086#1088#1085#1080#1082' '#1091#1087#1088#1072#1078#1085#1077#1085#1080#1081
      OnClick = N7Click
    end
    object N3: TMenuItem
      Caption = #1091#1095#1077#1073#1085#1080#1082
      OnClick = N3Click
    end
    object N1: TMenuItem
      Caption = #1091#1095#1077#1073'. '#1087#1086#1089#1086#1073#1080#1077
      OnClick = N1Click
    end
    object N11: TMenuItem
      Caption = #1091#1095#1077#1073'.-'#1084#1077#1090#1086#1076'. '#1087#1086#1089#1086#1073#1080#1077
      OnClick = N11Click
    end
    object N8: TMenuItem
      Caption = #1093#1088#1077#1089#1090#1086#1084#1072#1090#1080#1103
      OnClick = N8Click
    end
  end
  object DirMenu: TPopupMenu
    Left = 256
    Top = 544
    object DM: TMenuItem
      Caption = '+'
      OnClick = DMClick
    end
  end
  object FullMenu: TPopupMenu
    Left = 256
    Top = 600
    object N5: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = N5Click
    end
  end
  object UIMenu: TPopupMenu
    Left = 16
    Top = 384
    object N6: TMenuItem
      Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100
      OnClick = N6Click
    end
  end
  object PrimMenu: TPopupMenu
    Left = 256
    Top = 496
    object N13: TMenuItem
      Caption = #1044#1086#1075#1086#1074#1086#1088' '#1086#1090
      OnClick = N13Click
    end
  end
end
