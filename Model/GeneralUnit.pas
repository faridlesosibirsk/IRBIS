unit GeneralUnit;

interface

uses
  RegExpr {TRegExpr} ,
  SysUtils {Date} ,
  GeneralInterfaceUnit {GeneralInterface};

type
  General = class(TInterfacedObject, GeneralInterface)
  private
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
    constructor Create(LogPath: string; StartDate, EndDate: TDateTime);
  end;

implementation

{ General }

constructor General.Create(LogPath: string; StartDate, EndDate: TDateTime);
var
  text: string;
begin
  Self.LogPath := LogPath;
  Self.StartDate := StartDate;
  Self.EndDate := EndDate;

end;

procedure General.Read;
begin
  AssignFile(Log, LogPath);
  //while not Eof(Log) do
  //begin
    //ReadLn(Log, text);
  //end;
  //CloseFile(Log);
end;

end.
