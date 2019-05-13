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
  ViewControllerUnit in 'View\ViewControllerUnit.pas',
  GeneralInterfaceUnit in 'Model\GeneralInterfaceUnit.pas',
  GeneralUnit in 'Model\GeneralUnit.pas',
  regexpr in 'src\regexpr.pas',
  TotalRequestsUnit in 'Model\TotalRequestsUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
