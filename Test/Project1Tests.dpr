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
  GeneralInterfaceUnit in '..\Model\GeneralInterfaceUnit.pas',
  GeneralUnit in '..\Model\GeneralUnit.pas',
  ModelControllerInterfaceUnit in '..\Model\ModelControllerInterfaceUnit.pas',
  ModelControllerUnit in '..\Model\ModelControllerUnit.pas',
  regexpr in '..\src\regexpr.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

