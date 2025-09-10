unit view.login1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Skia,
  FMX.Skia, FMX.Effects, FMX.Objects;

type
  TForm1 = class(TForm)
    Rectangle1: TRectangle;
    ShadowEffect1: TShadowEffect;
    Rectangle2: TRectangle;
    ShadowEffect2: TShadowEffect;
    Rectangle3: TRectangle;
    SkLabel1: TSkLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
