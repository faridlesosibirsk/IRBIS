unit UniqueNotFoundUnit;

interface

uses
  ReadinterfaceUnit;

type
  UniqueNotFound = class(TInterfacedObject, Readinterface)
  const
    name = 'UniqueNotFound';
  private
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
  end;

implementation

{ UniqueNotFound }

function UniqueNotFound.GetName: string;
begin
  result := name;
end;

procedure UniqueNotFound.read(OneLogString: String);
begin

end;

function UniqueNotFound.return: integer;
begin
result := 0;
end;

end.
