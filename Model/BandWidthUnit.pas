unit BandWidthUnit;

interface
uses
  ReadinterfaceUnit;

type
  BandWidth = class(TInterfacedObject, Readinterface)
  const
    name = 'BandWidth';
  private
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
  end;

implementation

{ BandWidth }

function BandWidth.GetName: string;
begin
  result:= name;
end;

procedure BandWidth.read(OneLogString: String);
begin

end;

function BandWidth.return: integer;
begin
 result:=0;
end;

end.
