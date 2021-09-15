unit data_model;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdm = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQueryArticle: TADOQuery;
    DataSourceArticle: TDataSource;
    ADOQueryClient: TADOQuery;
    DataSourceClient: TDataSource;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
