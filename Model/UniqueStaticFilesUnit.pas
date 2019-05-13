unit UniqueStaticFilesUnit;

interface
uses
  ReadinterfaceUnit;

type
  UniqueStaticFiles = class(TInterfacedObject, Readinterface)
  const
    name = 'UniqueStaticFiles';
  private
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
  end;

implementation

{ UniqueStaticFiles }

function UniqueStaticFiles.GetName: string;
begin
  result:=name;
end;

procedure UniqueStaticFiles.read(OneLogString: String);
begin

end;

function UniqueStaticFiles.return: integer;
begin
 result:=0;
end;

end.
