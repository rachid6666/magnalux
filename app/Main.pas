unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  Tmain_form = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;

    procedure ImgsansgrasClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel5MouseEnter(Sender: TObject);
    procedure Panel5MouseLeave(Sender: TObject);
    procedure Panel3MouseLeave(Sender: TObject);
    procedure Panel3MouseEnter(Sender: TObject);
    procedure Panel4MouseEnter(Sender: TObject);
    procedure Panel4MouseLeave(Sender: TObject);
    procedure Panel6MouseLeave(Sender: TObject);
    procedure Panel6MouseEnter(Sender: TObject);
    procedure Panel7MouseEnter(Sender: TObject);
    procedure Panel7MouseLeave(Sender: TObject);
    procedure Panel8MouseEnter(Sender: TObject);
    procedure Panel8MouseLeave(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Exit(Sender: TObject);

    protected
    procedure WMNCHitTest(var Message: TWMNCHitTest); Message WM_NCHITTEST;

    {protected
       procedure CreateParams(var Params: TCreateParams); override;}

  private

    { Déclarations privées }

  public
        MouseDown: Boolean;
           TopLeft,
          MouseStart: TPoint;
          open:string;
    { Déclarations publiques }
  end;

var
  main_form: Tmain_form;

implementation

 

{$R *.dfm}

uses data_model, article, frmClinet;



 procedure Tmain_form.ImgsansgrasClick(Sender: TObject);

begin
APPLICATION.Terminate;
end;

Procedure Tmain_form.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
  MouseDown := (Button = mbLeft);
  if MouseDown then
  begin
    MouseStart.X := X;
    MouseStart.Y := Y;
    TopLeft := ClientToScreen(MouseStart);
    TopLeft.X := TopLeft.X - X;
    TopLeft.Y := TopLeft.Y - Y;
    end;
end;



procedure Tmain_form.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  NewPoint: TPoint;
begin
  if MouseDown  then
  begin
    NewPoint.X := X;
    NewPoint.Y := Y;
    NewPoint := ClientToScreen(NewPoint);    // On Screen
    NewPoint.Y := NewPoint.Y - MouseStart.Y; // New Onscreen
    NewPoint.X := NewPoint.X - MouseStart.X;
    Top := NewPoint.Y;
    Left := NewPoint.X;
    Refresh;
  end;
end;

procedure Tmain_form.Panel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MouseDown := False;

end;

procedure Tmain_form.Panel3MouseEnter(Sender: TObject);
begin
panel3.Font.Color:=clwhite;
panel3.Color:=$005D5D5D;
end;

procedure Tmain_form.Panel3MouseLeave(Sender: TObject);
begin
panel3.Font.Color:=$00939393;
panel3.Color:=$00353535;
end;


procedure Tmain_form.Panel4Click(Sender: TObject);

begin
frmArticle := TfrmArticle.Create(nil);
       with frmArticle do
        begin
          Name := 'MyForm';       // function show from inside panel9
          Parent := Panel9;
          align:=alclient;
          Position := poDesigned; // add this line
          Top := 10;
          Show;

        end;
    open:='client';
      panel10.Font.Size:=16;
        panel10.Caption:='Article';
end;

procedure Tmain_form.Panel4MouseEnter(Sender: TObject);
begin
Panel4.font.Color:=clwhite;
panel4.Color:=$005D5D5D;
end;

procedure Tmain_form.Panel4MouseLeave(Sender: TObject);
begin
 Panel4.font.Color:=$00939393;
 panel4.Color:=$00353535;
end;

procedure Tmain_form.WMNCHitTest(var Message: TWMNCHitTest);

const
  EDGEDETECT = 7; // adjust
var
  deltaRect: TRect;                 // hadi ta3 moving form
begin
  inherited;
  if BorderStyle = bsNone then
    with Message, deltaRect do
    begin
      Left := XPos - BoundsRect.Left;
      Right := BoundsRect.Right - XPos;
      Top := YPos - BoundsRect.Top;
      Bottom := BoundsRect.Bottom - YPos;
      if (Top < EDGEDETECT) and (Left < EDGEDETECT) then
        Result := HTTOPLEFT
      else if (Top < EDGEDETECT) and (Right < EDGEDETECT) then
        Result := HTTOPRIGHT
      else if (Bottom < EDGEDETECT) and (Left < EDGEDETECT) then
        Result := HTBOTTOMLEFT
      else if (Bottom < EDGEDETECT) and (Right < EDGEDETECT) then
        Result := HTBOTTOMRIGHT
      else if (Top < EDGEDETECT) then
        Result := HTTOP
      else if (Left < EDGEDETECT) then
        Result := HTLEFT
      else if (Bottom < EDGEDETECT) then
        Result := HTBOTTOM
      else if (Right < EDGEDETECT) then
        Result := HTRIGHT
    end;
end;



procedure Tmain_form.Panel5Click(Sender: TObject);
begin
// if open <> 'client' then
  // begin
   client := Tclient.Create(nil);
       with client do
        begin
          Name := 'MyForm';       // function show from inside panel9
          Parent := Panel9;
          align:=alclient;
          Position := poDesigned; // add this line
          Top := 10;
          Show;

        end;
        panel10.Font.Size:=16;
        panel10.Caption:='Client';
   // open:='client'

  // else
    //  begin

   //   end;
end;
procedure Tmain_form.Panel5Exit(Sender: TObject);
begin
client.destroy;
end;

procedure Tmain_form.Panel5MouseEnter(Sender: TObject);
begin
panel5.Font.Color:=clwhite;
panel5.Color:=$005D5D5D;
end;

procedure Tmain_form.Panel5MouseLeave(Sender: TObject);
begin
panel5.font.Color:=$00939393;
panel5.Color:=$00353535;
end;

procedure Tmain_form.Panel6MouseEnter(Sender: TObject);
begin
panel6.font.Color:=clwhite;
panel6.Color:=$005D5D5D;
end;

procedure Tmain_form.Panel6MouseLeave(Sender: TObject);
begin
panel6.font.Color:=$00939393;
panel6.Color:=$00353535;
end;

procedure Tmain_form.Panel7MouseEnter(Sender: TObject);
begin
panel7.font.Color:=clwhite;
panel7.Color:=$005D5D5D;
end;

procedure Tmain_form.Panel7MouseLeave(Sender: TObject);
begin
panel7.font.Color:=$00939393;
panel7.Color:=$00353535;
end;

procedure Tmain_form.Panel8MouseEnter(Sender: TObject);
begin
panel8.font.Color:=clwhite;
panel8.Color:=$005D5D5D;
end;

procedure Tmain_form.Panel8MouseLeave(Sender: TObject);
begin
panel8.font.Color:=$00939393;
panel8.Color:=$00353535;
end;

end.


