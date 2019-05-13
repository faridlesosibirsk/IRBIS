unit GeneralUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  ReadInterfaceUnit {ReadInterface} ,
  RegExpr {TRegExpr} ,
  SysUtils {Date} ,
  GeneralInterfaceUnit {GeneralInterface};

type
  General = class(TInterfacedObject, GeneralInterface)
  private
    OverallAnalyzedRequests: TDictionary<string, integer>;
    RegExp: TRegExpr;
    Log: TextFile;
    reader: TList<ReadInterface>;
    return: TDictionary<string, integer>;
    StartDate: TDateTime;
    EndDate: TDateTime;

    LogPath: string;

  public
    function getOverallAnalyzedRequests: TDictionary<string, integer>;
    procedure Read;

    constructor Create(LogPath: string; StartDate, EndDate: TDateTime;
      reader: TList<ReadInterface>);
  end;

implementation

{ General }

constructor General.Create(LogPath: string; StartDate, EndDate: TDateTime;
  reader: TList<ReadInterface>);
begin
  Self.LogPath := LogPath;
  Self.StartDate := StartDate;
  Self.EndDate := EndDate;
  Self.reader := TList<ReadInterface>.Create;
  Self.reader := reader;
  Self.return := TDictionary<string, integer>.Create;
end;

function General.getOverallAnalyzedRequests: TDictionary<string, integer>;
begin
  result:= TDictionary<string, integer>.create;
  result:=return;
end;


procedure General.Read;
var
  text: string;
  key: string;
  value: ReadInterface;
begin
  AssignFile(Log, LogPath);
  Reset(Log);
  while not Eof(Log) do
  begin
    for value in reader do
    begin
      readln(Log, text);
      value.Read(text);
      return.Add(value.GetName, value.return);
    end;
  end;
  CloseFile(Log);
end;

end.
