object main_form: Tmain_form
  Left = 0
  Top = 0
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  Caption = 'Main form '
  ClientHeight = 461
  ClientWidth = 780
  Color = 3487029
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  StyleElements = [seBorder]
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 41
    Width = 185
    Height = 419
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 1
    Align = alLeft
    AutoSize = True
    BevelEdges = []
    BevelOuter = bvNone
    Color = 3487029
    ParentBackground = False
    TabOrder = 0
    StyleElements = []
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 91
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Caption = 'ADmin pnl'
      Color = 3487029
      Font.Charset = ANSI_CHARSET
      Font.Color = 9671571
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      VerticalAlignment = taAlignTop
      StyleElements = []
      OnMouseEnter = Panel3MouseEnter
      OnMouseLeave = Panel3MouseLeave
    end
    object Panel4: TPanel
      Left = 0
      Top = 91
      Width = 185
      Height = 32
      Cursor = crHandPoint
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Caption = 'Dashboard'
      Font.Charset = ANSI_CHARSET
      Font.Color = 9671571
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentBackground = False
      ParentColor = True
      ParentFont = False
      TabOrder = 1
      StyleElements = []
      OnMouseEnter = Panel4MouseEnter
      OnMouseLeave = Panel4MouseLeave
    end
    object Panel6: TPanel
      Left = 0
      Top = 155
      Width = 185
      Height = 32
      Cursor = crHandPoint
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Caption = 'Article'
      Font.Charset = ANSI_CHARSET
      Font.Color = 9671571
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentBackground = False
      ParentColor = True
      ParentFont = False
      TabOrder = 3
      StyleElements = []
      OnClick = Panel4Click
      OnMouseEnter = Panel6MouseEnter
      OnMouseLeave = Panel6MouseLeave
    end
    object Panel8: TPanel
      Left = 0
      Top = 219
      Width = 185
      Height = 32
      Cursor = crHandPoint
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Caption = 'Vente CCP'
      Font.Charset = ANSI_CHARSET
      Font.Color = 9671571
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentBackground = False
      ParentColor = True
      ParentFont = False
      TabOrder = 5
      StyleElements = []
      OnMouseEnter = Panel8MouseEnter
      OnMouseLeave = Panel8MouseLeave
    end
    object Panel7: TPanel
      Left = 0
      Top = 187
      Width = 185
      Height = 32
      Cursor = crHandPoint
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Caption = 'Fournisseur'
      Font.Charset = ANSI_CHARSET
      Font.Color = 9671571
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentBackground = False
      ParentColor = True
      ParentFont = False
      TabOrder = 4
      StyleElements = []
      OnMouseEnter = Panel7MouseEnter
      OnMouseLeave = Panel7MouseLeave
    end
    object Panel5: TPanel
      Left = 0
      Top = 123
      Width = 185
      Height = 32
      Cursor = crHandPoint
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Caption = 'Clients'
      Font.Charset = ANSI_CHARSET
      Font.Color = 9671571
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentBackground = False
      ParentColor = True
      ParentFont = False
      TabOrder = 2
      StyleElements = []
      OnClick = Panel5Click
      OnExit = Panel5Exit
      OnMouseEnter = Panel5MouseEnter
      OnMouseLeave = Panel5MouseLeave
    end
  end
  object Panel9: TPanel
    Left = 185
    Top = 41
    Width = 595
    Height = 420
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BevelEdges = []
    BevelOuter = bvNone
    Caption = 'container for FORMS'
    Color = 16053235
    ParentBackground = False
    TabOrder = 1
    StyleElements = []
  end
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel10'
    Color = 11321559
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 2
    StyleElements = [seBorder]
  end
end