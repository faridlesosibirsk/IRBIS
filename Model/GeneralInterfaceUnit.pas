unit GeneralInterfaceUnit;

interface

uses
  ReadInterfaceUnit {ReadInterface} ,
  System.Generics.Collections {TDictionary};

type
  GeneralInterface = interface
    procedure Read;
    function getAnalyzedRequests:  TList<ReadInterface>;
  end;

implementation

end.
