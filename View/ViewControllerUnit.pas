unit ViewControllerUnit;

interface

uses
  PanelsUnit,
  Vcl.Forms,
  ButtonsUnit,
  InvironmentInterfaceUnit,
  ViewControllerInterfaceUnit,
  ModelControllerInterfaceUnit {ModelControllerInterface};
type
  ViewController = Class(TInterfacedObject, ViewControllerInterface)
  private
    /// <link>aggregation</link>
    Invironment: InvironmentInterface;
    AOwner:TForm;
    /// <link>aggregation</link>
    ModuleController: ModelControllerInterface;
    procedure DestroyInvironment;
  public
    procedure CreateButton;
    Procedure CreatePanel;
    constructor create(AOwner: TForm);
    Function GetForm:TForm;
  End;

implementation

{ ViewController }

constructor ViewController.create(AOwner: TForm);
begin
  Self.AOwner:=AOwner;
  CreateButton;
end;

procedure ViewController.CreateButton;
begin
  DestroyInvironment;
  Invironment := Buttons.create(Self);
end;

procedure ViewController.CreatePanel;
begin
  DestroyInvironment;
  Invironment := Panels.create(Self);
end;

procedure ViewController.DestroyInvironment;
begin
  if assigned(Invironment) then
    Invironment.Destroy;
end;

function ViewController.GetForm: TForm;
begin
  Result:=AOwner;
end;

end.
