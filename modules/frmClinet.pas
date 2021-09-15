unit frmClinet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tclient = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    refresh: TButton;
    Edit2: TEdit;
    Panel2: TPanel;
    Image1: TImage;
    Edit1: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure refreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
     val_mod,op:string;

  end;

var
  client: Tclient;

implementation

{$R *.dfm}

uses data_model, frmAjtClient;

procedure Tclient.Button1Click(Sender: TObject);
begin
  with AjtClient do
        begin
          Edit1.Text:='';
          Edit2.Text:='';
          Edit3.Text:='';
          Edit4.Text:='';
          Edit5.Text:='';
          Edit7.Text:='';
          Edit8.Text:='';
          Edit9.Text:='';
          Edit10.Text:='';
          Edit11.Text:='';
          Edit13.Text:='';
          Edit14.Text:='';
          Edit15.Text:='';
          Edit16.Text:='';
          Edit2.Focused;
          op:='N';
          caption:='Ajouter un nouveau client';
          showmodal;
       end;
end;

procedure Tclient.FormCreate(Sender: TObject);
begin
 with dm.ADOQueryClient do
      begin
       close;
         with SQL do
            begin
              clear;
               add('Use showroom_38 ' );
                add('Select * from client ' );
                Execsql;
                end;
               open;
        end ;
end;

procedure Tclient.refreshClick(Sender: TObject);
begin
   with dm.ADOQueryClient do
      begin
       close;
         with SQL do
            begin
              clear;
               add('Use showroom_38 ' );
                add('Select * from client ' );
                Execsql;
                end;
               open;
        end ;
end;

end.
