unit ModelControllerUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  TotalRequestsUnit,
  ReadInterfaceUnit,
  GeneralUnit,
  GeneralInterfaceUnit {GeneralInterface} ,
  ModelControllerInterfaceUnit {ModelControllerInterface};

type
  ModelController = class(TInterfacedObject, ModelControllerInterface)
  private
    /// <link>aggregation</link>
    GeneralInterface1: GeneralInterface;
  public
    function getOverallAnalyzedRequests:  TList<ReadInterface>;
    constructor create;
  end;

implementation

{ ModelController }

constructor ModelController.create;
var
  ReadList: TList<ReadInterface>;
begin
  ReadList:= TList<ReadInterface>.create;
  ReadList.Add(TotalRequests.create);
  GeneralInterface1 := General.Create('irbislog_copy_01.02.2013.log', 0, 1, ReadList);
  GeneralInterface1.Read;
end;

function ModelController.getOverallAnalyzedRequests: TList<ReadInterface>;
begin
  Result := TList<ReadInterface>.create;
  Result := GeneralInterface1.getOverallAnalyzedRequests;
end;

end.
