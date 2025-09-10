unit view.login2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.Objects, System.Skia, FMX.Skia, uLoading;

type
  TfrmLogin2 = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    ShadowEffect1: TShadowEffect;
    Rectangle4: TRectangle;
    SkLabel1: TSkLabel;
    ShadowEffect2: TShadowEffect;
    ShadowEffect3: TShadowEffect;
    procedure Rectangle4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin2: TfrmLogin2;

implementation

{$R *.fmx}

procedure TfrmLogin2.Rectangle4Click(Sender: TObject);
begin
  TLoading.Show(self,'Aguardade carregando login');

  Rectangle1.AnimateFloat('Position.Y',600,1);
  Rectangle1.AnimateFloat('Position.X',0,1);

  Rectangle3.AnimateFloat('Position.Y',-600,1);
  Rectangle3.AnimateFloat('Position.X',0,1);

  TThread.CreateAnonymousThread(
  procedure
  begin
    sleep(1000);

    TThread.Synchronize(nil,
    procedure
    begin
      TLoading.Hide;
    end);
  end).Start;
end;


end.
