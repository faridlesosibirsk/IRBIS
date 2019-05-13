unit ViewControllerInterfaceUnit;

interface

Uses
  Vcl.Forms;

type
  ViewControllerInterface = interface
    procedure CreateButton;
    Procedure CreatePanel;
    Function GetForm:TForm;
  end;

implementation

end.
