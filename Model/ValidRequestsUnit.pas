unit ValidRequestsUnit;

interface

Uses
  ReadInterfaceUnit;

type
  ValidRequest = Class(TInterfacedObject, ReadInterface)
  const
    name = 'ValidRequest';
  private
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
  End;

implementation

{ ValidRequest }

function ValidRequest.GetName: string;
begin
  result:=name;
end;

procedure ValidRequest.read(OneLogString: String);
begin

end;

function ValidRequest.return: integer;
begin
  return:=0;
end;

end.
