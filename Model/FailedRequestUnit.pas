unit FailedRequestUnit;

interface
 Uses
   readinterfaceunit;
type
  FaikedRequest = Class (TInterfacedObject, ReadInterface)
  const
    name = 'FaikedRequest';
  private
  public
    procedure read(OneLogString:String);
    function return: integer;
    function GetName: string;
  End;

implementation

{ FaikedRequest }

function FaikedRequest.GetName: string;
begin

end;

procedure FaikedRequest.read(OneLogString: String);
begin

end;

function FaikedRequest.return: integer;
begin
  result:=0;
end;

end.
