program Project1Tests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  TestGeneralUnit in 'TestGeneralUnit.pas',
  DUnitTestRunner,
  regexpr in '..\src\regexpr.pas',
  FailedRequestUnit in '..\Model\FailedRequestUnit.pas',
  GeneralInterfaceUnit in '..\Model\GeneralInterfaceUnit.pas',
  GeneralUnit in '..\Model\GeneralUnit.pas',
  ModelControllerInterfaceUnit in '..\Model\ModelControllerInterfaceUnit.pas',
  ModelControllerUnit in '..\Model\ModelControllerUnit.pas',
  ReadInterfaceUnit in '..\Model\ReadInterfaceUnit.pas',
  TotalRequestsUnit in '..\Model\TotalRequestsUnit.pas',
  ValidRequestsUnit in '..\Model\ValidRequestsUnit.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

