unit UniqueVisitorsUnit;

interface

uses
  ReadInterfaceUnit;

type
  UniqueVisitors = Class(TInterfacedObject, ReadInterface)
  const
    name = 'UniqueVisitors';
  private
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
  End;

implementation

{ UniqueVisitors }

function UniqueVisitors.GetName: string;
begin
  result := name;
end;

procedure UniqueVisitors.read(OneLogString: String);
begin

end;

function UniqueVisitors.return: integer;
begin
  result := 0;
end;

end.
