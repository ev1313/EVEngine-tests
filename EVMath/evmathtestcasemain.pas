unit EVMathTestCaseMain;

{$mode objfpc}{$H+}

interface

uses
  Classes,
  SysUtils,
  fpcunit,
  testutils,
  testregistry,
  EVMath;

type

  TEVMathTestCase = class(TTestCase)
	  private
      fVector1fA,
      fVector1fB,
      fVector1fC: TEVVector1f;
      fVector2fA,
      fVector2fB,
      fVector2fC: TEVVector2f;
      fVector3fA,
      fVector3fB,
      fVector3fC: TEVVector3f;
      fVector4fA,
      fVector4fB,
      fVector4fC: TEVVector4f;
      fTemp: Single;
	  protected
		  procedure SetUp; override;
	    procedure TearDown; override;
	  published
	    procedure Vector1fAddition;
	    procedure Vector2fAddition;
	    procedure Vector3fAddition;
	    procedure Vector4fAddition;
	    procedure Vector3fSubtraction;
      procedure Vector3fScalar;
  end;

implementation

procedure TEVMathTestCase.Vector1fAddition;
begin
  //4 + -7 = -3
  fVector1fC := fVector1fA + fVector1fB;
  if fVector1fC.X <> -3 then
    Fail('Vector1f addition failed!');
end;

procedure TEVMathTestCase.Vector2fAddition;
begin
  //5 +  9 = 14
  //9 + -8 = 1
  fVector2fC := fVector2fA + fVector2fB;
  if (fVector2fC.X <> 6) or
     (fVector2fC.Y <> 1) then
    Fail('Vector2f addition failed!');
end;

procedure TEVMathTestCase.Vector3fAddition;
begin
  //2 + -2 = 0
  //4 +  5 = 9
  //6 + -4 = 2
  fVector3fC := fVector3fA + fVector3fB;
  if (fVector3fC.X <> 0) or
     (fVector3fC.Y <> 9) or
     (fVector3fC.Z <> 2) then
    Fail('Vector3f addition failed!');
end;

procedure TEVMathTestCase.Vector4fAddition;
begin
  //43 + -10 = 33
  //-3 +  10 =  7
  //-5 +   5 =  0
  // 6 +  -8 = -2
  fVector4fC := fVector4fA + fVector4fB;
  if (fVector4fC.X <> 33) or
     (fVector4fC.Y <>  7) or
     (fVector4fC.Z <>  0) or
     (fVector4fC.W <> -2) then
    Fail('Vector4f addition failed!');
end;

procedure TEVMathTestCase.Vector3fSubtraction;
begin
  //2 - -2 =  4
  //4 -  5 = -1
  //6 - -4 = 10
  fVector3fC := fVector3fA - fVector3fB;
  if (fVector3fC.X <>  4) or
     (fVector3fC.Y <> -1) or
     (fVector3fC.Z <> 10) then
    Fail('Vector3f subtraction failed!');
end;

procedure TEVMathTestCase.Vector3fScalar;
begin
  //2 * -2 = -04
  //4 *  5 =  20
  //6 * -4 = -24
  //-------------
  //         -08
  fTemp := fVector3fA * fVector3fB;
  if fTemp <> -8 then
    Fail('Vector3f scalar product failed!');
end;

procedure TEVMathTestCase.SetUp;
begin
  //vector tests
  fVector1fA.X := 4;

  fVector1fB.X := -7;

  fVector2fA.X := 5;
  fVector2fA.Y := 9;

  fVector2fB.X := 1;
  fVector2fB.Y := -8;

  fVector3fA.X := 2;
  fVector3fA.Y := 4;
  fVector3fA.Z := 6;

  fVector3fB.X := -2;
  fVector3fB.Y :=  5;
  fVector3fB.Z := -4;

  fVector4fA.X := 43;
  fVector4fA.Y := -3;
  fVector4fA.Z := -5;
  fVector4fA.W :=  6;

  fVector4fB.X := -10;
  fVector4fB.Y := 10;
  fVector4fB.Z := 5;
  fVector4fB.W := -8;
end;

procedure TEVMathTestCase.TearDown;
begin
  //not necessary
end;

initialization
  RegisterTest(TEVMathTestCase);
end.

