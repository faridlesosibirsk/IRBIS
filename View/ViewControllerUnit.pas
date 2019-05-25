unit ViewControllerUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  ReadInterfaceUnit,
  SysUtils,
  Vcl.Forms,
  GeneralUnit,
  InvironmentInterfaceUnit,
  ViewControllerInterfaceUnit,
  ModelControllerUnit {ModelControllerUnit} ,
  ModelControllerInterfaceUnit {ModelControllerInterface};

type
  ViewController = Class(TInterfacedObject, ViewControllerInterface)
  private
    /// <link>aggregation</link>
    Invironment: InvironmentInterface;
    AOwner: TForm;
    /// <link>aggregation</link>
    ModuleController: ModelControllerInterface;
    procedure DestroyInvironment;
  public
    constructor create(AOwner: TForm);
    Function GetForm: TForm;
  End;

implementation

{ ViewController }

constructor ViewController.create(AOwner: TForm);
var
  List: ReadInterface;
begin
  Self.AOwner := AOwner;
  ModuleController := ModelController.create;

  for List in ModuleController.getOverallAnalyzedRequests do
    if List.GetName = 'TotalRequest' then
      AOwner.Caption := IntToStr(List.return);
end;

procedure ViewController.DestroyInvironment;
begin
  if assigned(Invironment) then
    Invironment.Destroy;
end;

function ViewController.GetForm: TForm;
begin
  Result := AOwner;
end;

end.
