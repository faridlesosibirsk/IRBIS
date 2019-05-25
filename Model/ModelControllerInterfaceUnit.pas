unit ModelControllerInterfaceUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  ReadInterfaceUnit;

type
  ModelControllerInterface = interface
    function getOverallAnalyzedRequests:  TList<ReadInterface>;
  end;

implementation

end.
