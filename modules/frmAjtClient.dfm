object AjtClient: TAjtClient
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ajouter un nouveau client'
  ClientHeight = 546
  ClientWidth = 685
  Color = 12767456
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  StyleElements = [seFont, seBorder]
  OnClose = FormClose
  DesignSize = (
    685
    546)
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 8
    Top = 161
    Width = 666
    Height = 93
    Brush.Style = bsClear
    Pen.Color = clSilver
    Pen.Width = 2
    Shape = stRoundRect
  end
  object Label1: TLabel
    Left = 32
    Top = 19
    Width = 60
    Height = 18
    Caption = 'ID_client'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 51
    Width = 33
    Height = 18
    Caption = 'Nom'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 347
    Top = 51
    Width = 55
    Height = 18
    Caption = 'Pr'#233'nom'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 83
    Width = 71
    Height = 18
    Caption = 'Telephone'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 347
    Top = 83
    Width = 59
    Height = 18
    Caption = 'Adresse'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 32
    Top = 116
    Width = 131
    Height = 18
    Caption = 'Date de naissance'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 329
    Top = 116
    Width = 131
    Height = 18
    Caption = 'Lieu de niassance '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 32
    Top = 181
    Width = 68
    Height = 18
    Caption = 'N'#176'cheque'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 331
    Top = 181
    Width = 107
    Height = 18
    Caption = 'N'#176'cheque CCP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 33
    Top = 216
    Width = 106
    Height = 18
    Caption = 'Montant salaire'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 31
    Top = 299
    Width = 47
    Height = 18
    Caption = 'N'#176' IDN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 33
    Top = 336
    Width = 73
    Height = 18
    Caption = 'Deliver le :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 31
    Top = 363
    Width = 14
    Height = 18
    Caption = 'A'#39
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 31
    Top = 395
    Width = 55
    Height = 18
    Caption = 'Fils de :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 31
    Top = 427
    Width = 45
    Height = 18
    Caption = 'Et de :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel
    Left = 31
    Top = 459
    Width = 121
    Height = 18
    Caption = 'N'#176' act naissance '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Shape2: TShape
    Left = 8
    Top = 279
    Width = 666
    Height = 219
    Brush.Style = bsClear
    Pen.Color = clSilver
    Pen.Width = 2
    Shape = stRoundRect
  end
  object Shape3: TShape
    Left = 8
    Top = 5
    Width = 666
    Height = 146
    Brush.Style = bsClear
    Pen.Color = clSilver
    Pen.Width = 2
    Shape = stRoundRect
  end
  object Edit1: TEdit
    Left = 168
    Top = 16
    Width = 160
    Height = 26
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'Edit1'
    TextHint = 'ID de client'
  end
  object Edit2: TEdit
    Left = 168
    Top = 48
    Width = 160
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'Edit2'
    TextHint = 'Nom'
  end
  object Edit3: TEdit
    Left = 466
    Top = 48
    Width = 160
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = 'Edit3'
    TextHint = 'Pr'#233'nom'
  end
  object Edit4: TEdit
    Left = 168
    Top = 80
    Width = 160
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = 'Edit4'
    TextHint = 'Telephone'
  end
  object Edit5: TEdit
    Left = 466
    Top = 80
    Width = 160
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = 'Edit5'
    TextHint = 'Adresse'
  end
  object Edit7: TEdit
    Left = 466
    Top = 113
    Width = 160
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = 'Edit7'
    TextHint = 'Lieu de niassance '
  end
  object Edit8: TEdit
    Left = 168
    Top = 178
    Width = 160
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = 'Edit8'
    TextHint = 'N'#176'cheque'
  end
  object Edit9: TEdit
    Left = 467
    Top = 178
    Width = 160
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = 'Edit9'
    TextHint = 'N'#176'cheque CCP'
  end
  object Edit11: TEdit
    Left = 168
    Top = 296
    Width = 160
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = 'Edit11'
    TextHint = 'N'#176' IDN'
  end
  object Edit13: TEdit
    Left = 167
    Top = 360
    Width = 160
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = 'Edit13'
    TextHint = 'A'#39
  end
  object Edit14: TEdit
    Left = 167
    Top = 392
    Width = 160
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Text = 'Edit14'
    TextHint = 'Fils de '
  end
  object Edit15: TEdit
    Left = 168
    Top = 424
    Width = 160
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Text = 'Edit15'
    TextHint = 'Et de '
  end
  object Edit16: TEdit
    Left = 168
    Top = 456
    Width = 160
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Text = 'Edit16'
    TextHint = 'N'#176' act naissance '
  end
  object DateTimePicker1: TDateTimePicker
    Left = 169
    Top = 115
    Width = 154
    Height = 24
    Date = 44246.918063564820000000
    Format = 'dd mm yyyy '
    Time = 44246.918063564820000000
    DoubleBuffered = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 13
    StyleElements = []
  end
  object DateTimePicker2: TDateTimePicker
    Left = 168
    Top = 328
    Width = 154
    Height = 26
    Date = 44452.918336898150000000
    Time = 44452.918336898150000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object Panel1: TPanel
    Left = 212
    Top = 505
    Width = 473
    Height = 41
    Anchors = [akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 15
    ExplicitLeft = 225
    ExplicitTop = 449
    object Button2: TButton
      Left = 237
      Top = 0
      Width = 236
      Height = 41
      Align = alRight
      Caption = 'Annuler'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 5
      Top = 0
      Width = 232
      Height = 41
      Align = alRight
      Caption = 'Enregister'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Edit10: TEdit
    Left = 169
    Top = 210
    Width = 160
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    Text = 'Edit10'
  end
end
