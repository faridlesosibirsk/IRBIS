unit GenerationTimeUnit;

interface

uses
  readInterfaceUnit;

type
  GenerationTime = class(TInterfacedObject, ReadInterface)
  const
    name = 'GenerationTime';
  private
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
  end;

implementation

{ GenerationTime }

function GenerationTime.GetName: string;
begin
  result:=name;
end;

procedure GenerationTime.read(OneLogString: String);
begin

end;

function GenerationTime.return: integer;
begin
result:= 0;
end;

end.
