unit TotalRequestsUnit;

interface

uses
  ReadInterfaceUnit;

type
  TotalRequests = class(TInterfacedObject, ReadInterface)
  private
  public
    function return: integer;
    procedure Read;
    constructor create(LogPath: string; StartDate, EndDate: TDateTime);
  end;

implementation

{ TotalRequests }

constructor TotalRequests.create(LogPath: string;
  StartDate, EndDate: TDateTime);
begin

end;

procedure TotalRequests.Read;
begin

end;

end.
