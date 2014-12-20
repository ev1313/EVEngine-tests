program EVMainTestCase;

{$mode objfpc}{$H+}

uses
  Interfaces, Forms, GuiTestRunner, EVMainTestCaseMain;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TGuiTestRunner, TestRunner);
  Application.Run;
end.

