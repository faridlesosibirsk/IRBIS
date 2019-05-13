unit ReadInterfaceUnit;

interface

type
  ReadInterface = interface
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
  end;

implementation

end.
