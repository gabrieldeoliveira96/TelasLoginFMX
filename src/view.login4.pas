unit view.login4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Ani, FMX.Controls.Presentation, FMX.StdCtrls, System.Skia,
  FMX.Skia;

type
  TForm3 = class(TForm)
    Arc1: TArc;
    Arc2: TArc;
    Layout1: TLayout;
    Button1: TButton;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    SkAnimatedImage1: TSkAnimatedImage;
    procedure Button1Click(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.Button1Click(Sender: TObject);
begin
  FloatAnimation1.StartValue:= 0;
  FloatAnimation1.StopValue:= 90;
  FloatAnimation1.Duration:= 1;
  FloatAnimation1.Start;
end;

procedure TForm3.FloatAnimation1Finish(Sender: TObject);
begin
  Arc1.Visible:= false;
  Arc2.Visible:= true;


  FloatAnimation2.StartValue:= 270;
  FloatAnimation2.StopValue:= 0;
  FloatAnimation2.Duration:= 1;
  FloatAnimation2.Start;

end;

procedure TForm3.FloatAnimation2Finish(Sender: TObject);
begin

  Arc2.Visible:= false;
  Arc1.Visible:= true;

  FloatAnimation1.StartValue:= 180;
  FloatAnimation1.StopValue:= 450;
  FloatAnimation1.Duration:= 1;
  FloatAnimation1.Start;


end;

end.
