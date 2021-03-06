unit frmAjtClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TAjtClient = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit11: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Panel1: TPanel;
    Button2: TButton;
    Button1: TButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Edit10: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  AjtClient: TAjtClient;

implementation

{$R *.dfm}

uses frmClinet, data_model;

procedure TAjtClient.Button1Click(Sender: TObject);
begin
//------cas de noveau client
  if client.op='N' then
  begin
       with dm.ADOQueryClient do
          begin
            close;
              with dm.ADOQueryClient.SQL do
                begin
                  clear;
                  add('Use showroom_38 ');
                  add('INSERT INTO client ');
                  add('(NOM,prenom,Tel,Adresse,date_Naissance,Lieu_Naissance,N_cheque,N_cheque_ccp,Montant_salaire,N_IDN,Deliver_le,A_,Fils_de,et_de,N_act_naissance )');
                  add('VALUES');
                  add('(:NOM,:prenom,:Tel,:Adresse,:date_Naissance,:Lieu_Naissance,:N_cheque,:N_cheque_ccp,:Montant_salaire,:N_IDN,:Deliver_le,:A_,:Fils_de,:et_de,:N_act_naissance)');
                  parameters.ParamByName('NOM').Value:=Edit2.text;
                  parameters.ParamByName('prenom').Value:=Edit3.text;
                  parameters.ParamByName('Tel').Value:=Edit4.text;
                  parameters.ParamByName('Adresse').Value:=Edit5.text;
                  //5asaha mn date time picker

                  parameters.ParamByName('Lieu_Naissance').Value:=Edit7.text;
                  parameters.ParamByName('N_cheque').Value:=Edit8.text;
                  parameters.ParamByName('N_cheque_ccp').Value:=Edit9.text;
                  parameters.ParamByName('Montant_salaire').Value:=Edit10.text;
                  parameters.ParamByName('N_IDN').Value:=Edit11.text;
                  // 5asa dat time picker deliver le
                  parameters.ParamByName('A_').Value:=Edit13.text;
                  parameters.ParamByName('Fils_de').Value:=Edit14.text;
                  parameters.ParamByName('et_de').Value:=Edit15.text;
                  parameters.ParamByName('N_act_naissance').Value:=Edit16.text;
                  execsql;
                end;

              client.refresh.onClick(self);
              ShowMessage(' Client ajouté avec succès  ');

          end;
  end;
//----- cas de modifer client


end;

procedure TAjtClient.Button2Click(Sender: TObject);
begin
Client.op:='';
 Client.refresh.OnClick(self);
 AjtClient.Close;
end;

procedure TAjtClient.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Client.op:='';
 Client.refresh.OnClick(self);
 AjtClient.Close;
end;

end.
