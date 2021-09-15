program MangaLux;

uses
  Vcl.Forms,
  Main in '..\app\Main.pas' {main_form},
  data_model in 'data_model.pas' {dm: TDataModule},
  frmClinet in '..\modules\frmClinet.pas' {client},
  article in '..\modules\article.pas' {frmArticle},
  Vcl.Themes,
  Vcl.Styles,
  frmAjtArticle in 'frmAjtArticle.pas' {frmAjtarticlee},
  frmAjtClient in '..\modules\frmAjtClient.pas' {AjtClient};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(Tmain_form, main_form);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tclient, client);
  Application.CreateForm(TfrmArticle, frmArticle);
  Application.CreateForm(TfrmAjtarticlee, frmAjtarticlee);
  Application.CreateForm(TAjtClient, AjtClient);
  Application.Run;
end.
