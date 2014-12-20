unit EVMainTestCaseMain;

{$mode objfpc}{$H+}

interface

uses
  Classes,
  SysUtils,
  fpcunit,
  testutils,
  testregistry,
  EVMain;

type

  TEVWindow1 = class(TEVWindow)
    private

    protected

    public

	end;

  TEVMainTestCase = class(TTestCase)
	  private
	    fWindow: TEVWindow;
	  protected
	    procedure SetUp; override;
	    procedure TearDown; override;
	  published
	    procedure WindowCreation;
  end;

implementation

procedure TEVMainTestCase.WindowCreation;
begin
end;

procedure TEVMainTestCase.SetUp;
begin
  EVApplication := TEVApplication.Create;
end;

procedure TEVMainTestCase.TearDown;
begin
  EVApplication.Free;
end;

initialization
  RegisterTest(TEVMainTestCase);
end.

