unit Unit1;

interface

uses
  ViewControllerUnit {ViewController} ,
  ViewControllerInterfaceUnit {ViewControllerInterface} ,
  Vcl.Forms {TForm};

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    /// <link>aggregation</link>
    ViewController1: ViewControllerInterface;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ViewController1 := ViewController.Create(Self);
end;

end.
