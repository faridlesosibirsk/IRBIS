unit ButtonsUnit;

interface

uses
  ViewControllerinterfaceUnit,
  Vcl.Forms,
  Vcl.StdCtrls,
  InvironmentInterfaceUnit;

type
  Buttons = class(TInterfacedObject, InvironmentInterface)
  private
    Button: TButton;
    /// <link>aggregation</link>
    AOwner: ViewControllerInterface;
    procedure ButtonOnClick(Sender: TObject);
  public
    procedure Destroy;
    constructor create(AOwner: ViewControllerInterface);
  end;

implementation

{ Buttons }

procedure Buttons.ButtonOnClick(Sender: TObject);
begin
 AOwner.CreatePanel;
end;

constructor Buttons.create(AOwner: ViewControllerInterface);
begin
  Self.AOwner:=AOwner;
  Button:= TButton.Create(AOwner.GetForm);
  with Button do begin
    Parent := AOwner.GetForm;
    OnClick:=ButtonOnClick;
  end;

end;

procedure Buttons.Destroy;
begin
  Button.Parent := NIL;
  Button.Free;
  Button := NIL;
end;

end.
