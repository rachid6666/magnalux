program Project4;

uses
  Vcl.Forms,
  Main in '..\app\Main.pas' {Form4},
  data_model in 'data_model.pas' {dm: TDataModule},
  frmClinet in '..\modules\frmClinet.pas' {client},
  article in '..\modules\article.pas' {frmArticle},
  Vcl.Themes,
  Vcl.Styles,
  frmAjtArticle in 'frmAjtArticle.pas' {frmAjtarticlee};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tclient, client);
  Application.CreateForm(TfrmArticle, frmArticle);
  Application.CreateForm(TfrmAjtarticlee, frmAjtarticlee);
  Application.Run;
end.
