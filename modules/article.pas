unit article;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.Imaging.pngimage;
type
  TfrmArticle = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    refresh: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Image1: TImage;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure refreshClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    op,val_mod:string;
  end;

var
  frmArticle: TfrmArticle;

implementation

{$R *.dfm}

uses frmAjtArticle, data_model;

procedure TfrmArticle.Button1Click(Sender: TObject);
begin
    with frmAjtarticlee do
        begin
          Edit1.Text:='';
          Edit2.Text:='';
          Edit3.Text:='';
          Edit4.Text:='';
          Edit5.Text:='';
          Edit6.Text:='';
          Edit7.Text:='';
          Edit8.Text:='';
          Edit9.Text:='';
          Edit1.Focused;
          op:='N';
          caption:='Ajouter un nouveau article';
      showmodal;
end;



end;

procedure TfrmArticle.Button2Click(Sender: TObject);
begin
    op:='M';

    with frmajtArticlee do
      begin
        Edit1.text:=dm.ADOQueryArticle.fieldbyname('ID_prod').Value;
        Edit2.text:=dm.ADOQueryArticle.fieldbyname('ref_art').Value;
        Edit3.text:=dm.ADOQueryArticle.fieldbyname('code_barre').Value;
        Edit4.text:=dm.ADOQueryArticle.fieldbyname('marque').asstring;
        Edit5.text:=dm.ADOQueryArticle.fieldbyname('qts_art').Value;
        Edit6.text:=dm.ADOQueryArticle.fieldbyname('designation').asstring;
        Edit7.text:=dm.ADOQueryArticle.fieldbyname('prix_achats_ht').Value;
        Edit8.text:=dm.ADOQueryArticle.fieldbyname('prix_vente_faciliter').Value;
        Edit9.text:=dm.ADOQueryArticle.fieldbyname('prix_vente_cache').Value;
        val_mod:=dm.ADOQueryArticle.fieldbyname('ID_prod').asstring;
      end;
       op:='M';
       frmAjtarticlee.caption:='Modifer un article';
       frmAjtarticlee.ShowModal;


end;

procedure TfrmArticle.Button3Click(Sender: TObject);
begin
    with dm.ADOQueryArticle do
        begin
          close;
          with SQL do
              begin
                  clear;
                  add('Use showroom_38 ' );
                  add('Delete from article ' );
                  Add('Where ID_prod='+edit2.text);
                  Execsql;
              end;
          frmArticle.refresh.onClick(self);
          ShowMessage(' Enregistrement supprimé avec succès  ');
      end;

end;

procedure TfrmArticle.DBGrid1CellClick(Column: TColumn);
begin
   // cell click take out the vlaue

          edit2.Text:=dm.ADOQueryArticle.FieldByName('ID_prod').Value


end;

procedure TfrmArticle.Edit1Change(Sender: TObject);
begin
  if radiobutton2.Checked then
    begin
      with dm.ADOQueryArticle do
    begin
      active:=false;
        with sql do
        begin
          clear;
          add('select * from article');
          add('where designation LIKE'+quotedstr(edit1.text+'%')+'');
          execSQL;
        end;
        active:=true;
    end;
    end
    else
      if radiobutton1.Checked then
               begin
                    with dm.ADOQueryArticle do
                          begin
                            active:=false;
                              with sql do
                              begin
                                clear;
                                add('select * from article');
                                add('where marque LIKE'+quotedstr(edit1.text+'%')+'');
                                execSQL;
                              end;
                              active:=true;
                          end;

                end;


end;

procedure TfrmArticle.FormShow(Sender: TObject);
begin
with dm.ADOQueryArticle do
      begin
       close;
         with SQL do
            begin
              clear;
               add('Use showroom_38 ' );
                add('Select * from article ' );
                Execsql;
                end;
               open;
        end ;
end;

procedure TfrmArticle.refreshClick(Sender: TObject);
begin
    with dm.ADOQueryArticle do
      begin
       close;
         with SQL do
            begin
              clear;
               add('Use showroom_38 ' );
                add('Select * from article ' );
                Execsql;
                end;
               open;
        end ;
end;

end.
