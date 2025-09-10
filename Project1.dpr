program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  view.login1 in 'src\view.login1.pas' {Form1},
  view.login2 in 'src\view.login2.pas' {frmLogin2},
  uLoading in 'src\feature\uLoading.pas',
  view.login3 in 'src\view.login3.pas' {Form2},
  view.login4 in 'src\view.login4.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
//  Application.CreateForm(TForm1, Form1);
//  Application.CreateForm(TfrmLogin2, frmLogin2);
//  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
