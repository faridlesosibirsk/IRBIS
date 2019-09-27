unit Unit1;

interface

uses
  ViewControllerUnit {ViewController} ,
  ViewControllerInterfaceUnit {ViewControllerInterface} ,
  Vcl.Forms, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Vcl.Menus, Vcl.Dialogs {TForm};

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    OpenDialog1: TOpenDialog;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    AccessLog: string;
    /// <link>aggregation</link>
    ViewController1: ViewControllerInterface;
  public
    function getAccessLog: string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.getAccessLog: string;
begin
  Result := AccessLog;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  if opendialog1.Execute then
    AccessLog := OpenDialog1.FileName;
  ViewController1 := ViewController.Create(Self);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsTotalRequest;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Close;
end;

end.
