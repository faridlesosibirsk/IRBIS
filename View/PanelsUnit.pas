unit PanelsUnit;

interface

uses
  ViewControllerInterfaceUnit,
  Vcl.Forms,
  Vcl.ExtCtrls,
  InvironmentInterfaceunit;

type
  Panels = class(TInterfacedObject, InvironmentInterface)
  private
    Panel: TPanel;
    /// <link>aggregation</link>
    AOwner: ViewControllerInterface;
    Procedure PanelOnClick(Sender: TObject);
  public
    procedure Destroy;
    Constructor Create(Aowner: ViewControllerInterface);
  end;

implementation

{ Panels }

constructor Panels.Create(AOwner: ViewControllerInterface);
begin
  Self.AOwner:=AOwner;
  Panel:=TPanel.Create(AOwner.GetForm);
  With Panel do begin
    Parent := AOwner.GetForm;
    OnClick:=PanelOnClick;
  end;
end;

procedure Panels.Destroy;
begin
  Panel.Parent:=NIL;
  Panel.Free;
  Panel := NIL;
end;

procedure Panels.PanelOnClick(Sender: TObject);
begin
 AOwner.CreateButton;
end;

end.
