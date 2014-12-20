program EVMathTestCase;

{$mode objfpc}{$H+}

uses
  Interfaces, Forms, GuiTestRunner, EVMathTestCaseMain;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TGuiTestRunner, TestRunner);
  Application.Run;
end.

