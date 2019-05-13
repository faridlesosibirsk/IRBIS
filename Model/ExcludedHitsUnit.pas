unit ExcludedHitsUnit;

interface

uses
  ReadInterfaceUnit;

type
  ExcludedHits = class(TInterfacedObject, ReadInterface)
  const
    name = 'ExcludedHits';
  private
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
  end;

implementation

{ ExcludedHits }

function ExcludedHits.GetName: string;
begin
  result:= name;
end;

procedure ExcludedHits.read(OneLogString: String);
begin

end;

function ExcludedHits.return: integer;
begin
  result:=0;
end;

end.
