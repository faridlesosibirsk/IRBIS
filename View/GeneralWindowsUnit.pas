unit GeneralWindowsUnit;

interface

uses
  Vcl.Controls {Align := AlClient},
  Vcl.ExtCtrls {TFlowPanel},
  Vcl.Forms,
  WindowsInterfaceUnit;

type
  GeneralWindows = class(TInterfacedObject, WindowsInterface)
  private
     FlowPanel1: TFlowPanel;
  public
    procedure Destroy;
    constructor create(AOwner: TForm);
  end;

implementation

{ GeneralWindows }

constructor GeneralWindows.create(AOwner: TForm);
begin
  FlowPanel1:= TFlowPanel.Create(AOwner);
  with FlowPanel1 do begin
    Parent := AOwner;
    Align := AlClient;
  end;

end;

procedure GeneralWindows.Destroy;
begin

end;

end.
