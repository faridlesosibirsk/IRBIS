unit TotalRequestsUnit;

interface

uses
  GeneralUnit {General},
  GeneralInterfaceUnit {GeneralInterface};

type
  TotalRequests = class(TInterfacedObject, GeneralInterface)
  private
    /// <link>aggregation</link>
    realGeneral: General;
  public
    procedure Read;
    constructor create(LogPath: string; StartDate, EndDate: TDateTime);
  end;

implementation

{ TotalRequests }

constructor TotalRequests.create(LogPath: string; StartDate, EndDate: TDateTime);
begin
  realGeneral:= General.Create(LogPath, StartDate, EndDate);
end;

procedure TotalRequests.Read;
begin
  realGeneral.Read;
end;

end.
