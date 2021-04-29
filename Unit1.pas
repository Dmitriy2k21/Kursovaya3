unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    RichEdit1: TRichEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function Bush(X,Y:integer):integer; overload;
    function Bush(X,Y,Z:word):word; overload;
    function Bush(S,C:string):string; overload;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.Bush(X, Y: integer): integer;
begin
result:=X*Y;
end;

function TForm1.Bush(X, Y, Z: word): word;
begin
result:=(X*Y)*Z;
end;

function TForm1.Bush(S, C: string): string;
begin
result:=S+C;
end;

procedure TForm1.Button1Click(Sender: TObject);
var a:integer;
b:word;
Stroka:string;
begin
RichEdit1.Clear;
a:=Bush(3,5);
RichEdit1.Lines.Add('Bush(X,Y:integer):integer; ='+IntToStr(a));
b:=Bush(1,3,5);
RichEdit1.Lines.Add('Bush(X,Y,Z:word):word; ='+IntToStr(b));
Stroka:=Bush('Мощный ','Процессор');
RichEdit1.Lines.Add('Bush(S,C:string):string; ='+Stroka);
end;

end.
