program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ModelControllerInterfaceUnit in 'Model\ModelControllerInterfaceUnit.pas',
  ModelControllerUnit in 'Model\ModelControllerUnit.pas',
  InvironmentInterfaceUnit in 'View\InvironmentInterfaceUnit.pas',
  ViewControllerInterfaceUnit in 'View\ViewControllerInterfaceUnit.pas',
  ViewControllerUnit in 'View\ViewControllerUnit.pas',
  GeneralInterfaceUnit in 'Model\GeneralInterfaceUnit.pas',
  GeneralUnit in 'Model\GeneralUnit.pas',
  regexpr in 'src\regexpr.pas',
  TotalRequestsUnit in 'Model\TotalRequestsUnit.pas',
  ReadInterfaceUnit in 'Model\ReadInterfaceUnit.pas',
  ValidRequestsUnit in 'Model\ValidRequestsUnit.pas',
  FailedRequestUnit in 'Model\FailedRequestUnit.pas',
  GenerationTimeUnit in 'Model\GenerationTimeUnit.pas',
  UniqueVisitorsUnit in 'Model\UniqueVisitorsUnit.pas',
  UniqueFilesUnit in 'Model\UniqueFilesUnit.pas',
  ExcludedHitsUnit in 'Model\ExcludedHitsUnit.pas',
  UniqueRefferersUnit in 'Model\UniqueRefferersUnit.pas',
  UniqueNotFoundUnit in 'Model\UniqueNotFoundUnit.pas',
  UniqueStaticFilesUnit in 'Model\UniqueStaticFilesUnit.pas',
  LogSizeUnit in 'Model\LogSizeUnit.pas',
  BandWidthUnit in 'Model\BandWidthUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
