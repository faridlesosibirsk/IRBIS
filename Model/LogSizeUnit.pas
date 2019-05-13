unit LogSizeUnit;

interface
uses
  ReadinterfaceUnit;

type
  LogSize = class(TInterfacedObject, Readinterface)
  const
    name = 'LogSize';
  private
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
  end;

implementation

{ UniqueStaticFiles }

function LogSize.GetName: string;
begin
  result:=name;
end;

procedure LogSize.read(OneLogString: String);
begin

end;

function LogSize.return: integer;
begin
 result:=0;
end;

end.
