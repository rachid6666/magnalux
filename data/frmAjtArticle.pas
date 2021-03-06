unit frmAjtArticle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmAjtarticlee = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmAjtarticlee: TfrmAjtarticlee;

implementation

{$R *.dfm}

uses article, data_model;

procedure TfrmAjtarticlee.Button1Click(Sender: TObject);
begin
//button enregister
  if frmArticle.op='N' then
  begin
       with dm.ADOQueryArticle do
          begin
            close;
              with dm.ADOQueryArticle.SQL do
                begin
                  clear;
                  add('Use showroom_38 ');
                  add('INSERT INTO article ');
                  add('(ref_art,code_barre,designation,marque,qts_art,prix_achats_ht,prix_vente_faciliter,prix_vente_cache )');
                  add('VALUES');
                  add('(:ref_art,:code_barre,:designation,:marque,:qts_art,:prix_achats_ht,:prix_vente_faciliter,:prix_vente_cache)');
                  parameters.ParamByName('ref_art').Value:=Edit2.text;
                  parameters.ParamByName('code_barre').Value:=Edit3.text;
                  parameters.ParamByName('marque').Value:=Edit4.text;
                  parameters.ParamByName('qts_art').Value:=Edit5.text;
                  parameters.ParamByName('designation').Value:=Edit6.text;
                  parameters.ParamByName('prix_achats_ht').Value:=Edit7.text;
                  parameters.ParamByName('prix_vente_faciliter').Value:=Edit8.text;
                  parameters.ParamByName('prix_vente_cache').Value:=Edit9.text;
                  execsql;
                end;

              frmArticle.refresh.onClick(self);
            ShowMessage(' Article ajouté avec succès  ');

          end;
  end;
// enregister en cas de modfier
 if frmArticle.op='M' then
  begin
      with dm.ADOQueryArticle do
          begin
          close;
          with SQL do
           begin
              clear;
              add('Use showroom_38 ' );
              add('UPDATE article SET ' );
              add('ref_art=:ref_art,code_barre=:code_barre,designation=:designation,marque=:marque,qts_art=:qts_art,prix_achats_ht=:prix_achats_ht,prix_vente_faciliter=:prix_vente_faciliter,prix_vente_cache=:prix_vente_cache');
              Add('Where ID_prod=:val_mod');
              parameters.ParamByName('ref_art').Value:=Edit2.text;
              parameters.ParamByName('code_barre').Value:=Edit3.text;
              parameters.ParamByName('marque').Value:=Edit4.text;
              parameters.ParamByName('qts_art').Value:=Edit5.text;
              parameters.ParamByName('designation').Value:=Edit6.text;
              parameters.ParamByName('prix_achats_ht').Value:=Edit7.text;
              parameters.ParamByName('prix_vente_faciliter').Value:=Edit8.text;
              parameters.ParamByName('prix_vente_cache').Value:=Edit9.text;
              parameters.ParamByName('val_mod').Value:=frmArticle.val_mod;
              Execsql;
          end;
    end;
        frmArticle.refresh.OnClick(self);
        frmAjtarticlee.close;
        ShowMessage(' Enregistrement modifié avec succès  ');

   end;
  end;

procedure TfrmAjtarticlee.Button2Click(Sender: TObject);
begin
frmArticle.op:='';

 frmArticle.refresh.OnClick(self);
 frmAjtarticlee.Close;


end;

end.
