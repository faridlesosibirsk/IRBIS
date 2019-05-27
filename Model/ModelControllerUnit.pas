unit ModelControllerUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  TotalRequestsUnit,
  ReadInterfaceUnit,
  GeneralUnit,
  GeneralInterfaceUnit {GeneralInterface} ,
  ModelControllerInterfaceUnit {ModelControllerInterface};

const
  AccessLog = 'irbislog_copy_01.02.2013.log';

type
  ModelController = class(TInterfacedObject, ModelControllerInterface)
  private
    /// <link>aggregation</link>
    GeneralInterface1: GeneralInterface;
  public
    function getGeneralAnalyzedRequests: TList<ReadInterface>;
    constructor create;
  end;

implementation

{ ModelController }

constructor ModelController.create;
var
  ReadList: TList<ReadInterface>;
begin
  ReadList := TList<ReadInterface>.create;
  ReadList.Add(TotalRequests.create);
  // GeneralInterface1 := General.Create('irbislog_copy_01.02.2013.log', 0, 1, ReadList);
  GeneralInterface1 := General.create(AccessLog, 0, 1, ReadList);
  GeneralInterface1.Read;
end;

function ModelController.getGeneralAnalyzedRequests: TList<ReadInterface>;
begin
  Result := TList<ReadInterface>.create;
  Result := GeneralInterface1.getAnalyzedRequests;
end;

end.
