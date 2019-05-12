unit ModelControllerUnit;

interface

uses
  GeneralInterfaceUnit {GeneralInterface} ,
  ModelControllerInterfaceUnit {ModelControllerInterface};

type
  ModelController = class(TInterfacedObject, ModelControllerInterface)
  private
    /// <link>aggregation</link>
    GeneralInterface1: GeneralInterface;
  end;

implementation

end.
