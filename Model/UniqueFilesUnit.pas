unit UniqueFilesUnit;

interface

uses
  ReadInterfaceUnit;

type
  UniqueFiles = class(TInterfacedObject, ReadInterface)
  const
    name = 'UniqueFiles';
  private
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
  end;

implementation

{ UniqueFiles }

function UniqueFiles.GetName: string;
begin
  result := name;
end;

procedure UniqueFiles.read(OneLogString: String);
begin

end;

function UniqueFiles.return: integer;
begin
  result := 0;
end;

end.
