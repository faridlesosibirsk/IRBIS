unit TotalRequestsUnit;

interface

uses
  ReadInterfaceUnit;

type
  TotalRequests = class(TInterfacedObject, ReadInterface)
  const
    name = 'TotalRequest';
  private
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

end;

function TotalRequests.GetName: string;
begin
  Result := name;
end;

procedure TotalRequests.Read(OneLogString: String);
begin

end;

function TotalRequests.return: integer;
begin
  Result := 0;
end;

end.
