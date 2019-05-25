unit TotalRequestsUnit;

interface

uses
  ReadInterfaceUnit;

type
  TotalRequests = class(TInterfacedObject, ReadInterface)
  const
    name = 'TotalRequest';
  private
    count: integer;
  public
    procedure Read(OneLogString: String);
    function return: integer;
    function GetName: string;
    constructor create;
  end;

implementation

{ TotalRequests }

constructor TotalRequests.create;
begin
  Self.count := 0;
end;

function TotalRequests.GetName: string;
begin
  Result := name;
end;

procedure TotalRequests.Read(OneLogString: String);
begin
  Inc(count);
end;

function TotalRequests.return: integer;
begin
  Result := Self.count;
end;

end.
