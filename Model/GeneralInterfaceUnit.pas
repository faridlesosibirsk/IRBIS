unit GeneralInterfaceUnit;

interface

uses
  System.Generics.Collections {TDictionary};

type
  GeneralInterface = interface
    procedure Read;
    function getOverallAnalyzedRequests: TDictionary<string, integer>;
    function getTotalRequests: integer;
  end;

implementation

end.
