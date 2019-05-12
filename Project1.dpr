program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ModelControllerInterfaceUnit in 'Model\ModelControllerInterfaceUnit.pas',
  ModelControllerUnit in 'Model\ModelControllerUnit.pas',
  ButtonsUnit in 'View\ButtonsUnit.pas',
  InvironmentInterfaceUnit in 'View\InvironmentInterfaceUnit.pas',
  PanelsUnit in 'View\PanelsUnit.pas',
  ViewControllerInterfaceUnit in 'View\ViewControllerInterfaceUnit.pas',
  ViewControllerUnit in 'View\ViewControllerUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TForm1, Form1);
  pplication.Run;
end.
