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

    StartDate: TDateTime;
    EndDate: TDateTime;
    {
      DateTime: TDateTime;
      TotalRequests: integer;
      ValidRequests: integer;
      FailedRequests: integer;
      GenerationTime: integer;
      UniqueVisitors: integer;
      UniqueFiles: integer;
      ExcludedHits: integer;
      UniqueReferrers: integer;
      UniqueNotFound: integer;
      UniqueStaticFiles: integer;
      LogSize: integer;
      Bandwidth: integer;
    }
    LogPath: string;
  public
    function getTotalRequests: integer;
    function getOverallAnalyzedRequests: TDictionary<string, integer>;
    procedure Read;
    {
      function GetStartDate: TDateTime;
      function GetEndDate: TDateTime;
      function GetDateTime: TDateTime;
      function GetTotalRequests: integer;
      function GetValidRequests: integer;
      function GetFailedRequests: integer;
      function GetGenerationTime: integer;
      function GetUniqueVisitors: integer;
      function GetUniqueFiles: integer;
      function GetExcludedHits: integer;
      function GetUniqueReferrers: integer;
      function GetUniqueNotFound: integer;
      function GetUniqueStaticFiles: integer;
      function GetLogSize: integer;
      function GetBandwidth: integer;
      function GetLogPath: string;
    }
    constructor Create(LogPath: string; StartDate, EndDate: TDateTime;
      reader: TDictionary<string, ReadInterface>);
  end;

implementation

{ General }

constructor General.Create(LogPath: string; StartDate, EndDate: TDateTime);
begin
  Self.LogPath := LogPath;
  Self.StartDate := StartDate;
  Self.EndDate := EndDate;

end;

procedure General.Read;
var
  text: string;
begin
  AssignFile(Log, LogPath);
  Reset(Log);
  while not Eof(Log) do
  begin
    ReadLn(Log, text);
  end;
  CloseFile(Log);
end;

end.
