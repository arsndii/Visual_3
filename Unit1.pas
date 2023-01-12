unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    lbl3: TLabel;
    con1: TADOConnection;
    qry1: TADOQuery;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
with qry1 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * FROM tlogin WHERE username = ' + QuotedStr(edt1.Text));
  Open;
end;
if qry1.RecordCount = 0 then
Application.MessageBox('Maaf, Username atau Password anda salah !!!','informasi',MB_OK or MB_ICONINFORMATION)
else begin
  if qry1.FieldByName('pass').AsString<>edt2.Text then
    Application.MessageBox('Maaf, Username atau Password anda salah !!!','informasi',MB_OK or MB_ICONINFORMATION)
  else begin
    hide;
    form2.show
  end;
end;

end;


end.

