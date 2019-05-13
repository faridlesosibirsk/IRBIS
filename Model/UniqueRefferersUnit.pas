unit UniqueRefferersUnit;

interface

uses
  ReadinterfaceUnit;

type
  UniqueRefferers = class(TInterfacedObject, Readinterface)
  const
    name = 'UniqueRefferers';
  private
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
  end;

implementation

{ UniqueRefferers }

function UniqueRefferers.GetName: string;
begin
  result := name;
end;

procedure UniqueRefferers.read(OneLogString: String);
begin

end;

function UniqueRefferers.return: integer;
begin
  result := 0;
end;

end.
