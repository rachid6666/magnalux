object client: Tclient
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'client'
  ClientHeight = 397
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 654
    Height = 316
    Align = alClient
    DataSource = dm.DataSourceClient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 357
    Width = 654
    Height = 40
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 131
      Top = 4
      Width = 120
      Height = 32
      Margins.Left = 10
      Align = alRight
      Caption = 'Ajouter'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 264
      Top = 4
      Width = 120
      Height = 32
      Margins.Left = 10
      Align = alRight
      Caption = 'Modifier'
      TabOrder = 1
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 530
      Top = 4
      Width = 120
      Height = 32
      Margins.Left = 10
      Align = alRight
      Caption = 'Supprimer'
      TabOrder = 2
    end
    object refresh: TButton
      AlignWithMargins = True
      Left = 397
      Top = 4
      Width = 120
      Height = 32
      Margins.Left = 10
      Align = alRight
      Caption = 'Acualiser'
      TabOrder = 3
      OnClick = refreshClick
      ExplicitTop = 6
    end
    object Edit2: TEdit
      Left = 4
      Top = 6
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
      Text = 'valmod of db grid Edit2'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 654
    Height = 41
    Align = alTop
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 2
    object Image1: TImage
      AlignWithMargins = True
      Left = 367
      Top = 4
      Width = 25
      Height = 26
      Margins.Bottom = 10
      Align = alLeft
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
        003208060000001E3F88B1000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000004
        164944415478DAED99596C4C6114C74F694B91C6122FA848AC25A296D6532D2F
        08A1D45E4B637BB0C4838A582A11BB0889C41A2141D29194DA9758A2D6D01221
        48F04042F02076ADA5D4FF9F73279D4C66A67397B9BD233DC92FE9F4B677EEEF
        DEEF3BDFF9CE4D90FF2412EAFA02EA451C16E90A46806CD01DB4054D8D63EFC1
        4BF0005C01A7C1672F893400E3C022D03FC4F12A9018E2F795A0046C048FEA5A
        240BEC06BD8DCFDFC039700A948117E09771AC39E80206831C439A37E12FD807
        96820F6E8BF0EF968355A277FB2D580BF6831F519EA31D5809661AE77805F2C0
        0DB7441A8ADEC17C500D368175A24FC34AA4833DA2F3EA27980A8EC45A84C70F
        8069E0BB2173D4F6ED134906DBC11CF007E48293B114E170E2DDAF101DEB650E
        4804C66AD1E1C6F3730E594E02914438B16F894ED0F1E2CC9308F5FD3E30113C
        067D45879B6322BCF87B2003AC072B6220E18F26A24FBA0758269A9E1D139964
        DCA977A093E8FC88650C0767C027D0412C2C9CE144788732C15CD175C38DE0EA
        3F081480AD4E88303D3E015F416BB138662DC468704CB4A4C970426431D80C8A
        C1049724189C2BACCF52401A786D57E4B86849310514B928C238014681C9E0B0
        5D9167A033E8069EBA2C5208D688AE5D85764558A5360649A295AC9BC10AE2A0
        41BE1D117E6675CA4230C56509C648D15285933ED78E08838521EB9F44332772
        2878F1AC200E81E976453E8AEE25524553B09B311BEC155D470AEC8AB034E923
        BA20DE7559845B8425A24BC016BB22DC2CCDB0723207A21CF413ADB44BED8AF8
        3307776ED92E4AB071C15D23EBBA5652B365B62CD212BC114DBF69C6CF6EC442
        B04D346BE598FDE77045232B5F56C03BC17C172498EAB910735F3F045C744AA4
        17B82FBA20729FF03CC622ECA86C109D2359564E106987E89FF4A560A8981CB3
        26828DBDDBA01918062E382DC209F710B401BBC0BC1848703EDE11DDBCED000B
        AC9EA8B6E603B3D625D1AE078B386E7BAB1D9460293240747E700F52192B1106
        9B684CC7EC6FB1AC9F25D137E5C2058713B35347E3334B2296EEC5B114618C31
        2458157307C7C979DEC2F7313B31CDB2CD941A74ACCAB8699664CCF47E330C99
        74E3F365D1BCCFA157DB90E0623756B45AE0DAC4E1795634890416A794E19331
        DD7934DBC46E645C0CEB21FF1D65738D9986A9934DEC2FA273AA85D434B13303
        BE8B4D38AE4DD744FB65454EC8587D3FC28B64BB937DDB9E51FC3D1B181C8ACC
        4C7C8281092394CC6FD16116B58C136FACDA8381A2438EC3862F7A980CD84860
        5FECA6687B29D2F0E3FB169F1D192FBD7AA30C9F4C52900C8759ADED5A2F89D8
        92F19A4838199647799164BC28C260AAF68590E19329892711BF0C9F4C723432
        5E163125E37511065B44BE1032DC805D8D279150322C8FD823AE883711060B57
        36B6AF074BC49B0883154479B0443C8A848D7A11AFC53FE174DA337576085B00
        00000049454E44AE426082}
      Stretch = True
      ExplicitLeft = 359
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 357
      Height = 26
      Margins.Bottom = 10
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TextHint = 'Rechercher'
      ExplicitHeight = 21
    end
    object RadioButton1: TRadioButton
      AlignWithMargins = True
      Left = 511
      Top = 4
      Width = 113
      Height = 33
      Align = alLeft
      Caption = 'Par ID'
      TabOrder = 1
    end
    object RadioButton2: TRadioButton
      AlignWithMargins = True
      Left = 398
      Top = 4
      Width = 107
      Height = 33
      Align = alLeft
      Caption = 'Par nom'
      TabOrder = 2
    end
  end
end
