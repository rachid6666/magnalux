object dm: Tdm
  OldCreateOrder = False
  Height = 292
  Width = 471
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=showroom_38;Data Source=YG'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 216
    Top = 24
  end
  object ADOQueryArticle: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 80
    Top = 104
  end
  object DataSourceArticle: TDataSource
    DataSet = ADOQueryArticle
    Left = 80
    Top = 152
  end
  object ADOQueryClient: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 200
    Top = 96
  end
  object DataSourceClient: TDataSource
    DataSet = ADOQueryClient
    Left = 200
    Top = 160
  end
end
