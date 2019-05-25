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
    return: TList<ReadInterface>;
    StartDate: TDateTime;
    EndDate: TDateTime;

    LogPath: string;

  public
    function getOverallAnalyzedRequests: TList<ReadInterface>;
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
  Self.return := TList<ReadInterface>.Create;
  Self.return := reader;
end;

function General.getOverallAnalyzedRequests: TList<ReadInterface>;
begin
  result := TList<ReadInterface>.Create;
  result := return;
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
    end;
  end;
  CloseFile(Log);
end;

end.
