unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  TForm3 = class(TForm)
    con1: TADOConnection;
    qry2: TADOQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    grp1: TGroupBox;
    edt3: TEdit;
    cbb1: TComboBox;
    btn5: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure edt3Change(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Unit5, Unit2;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
  qry2.Append;
  qry2.FieldByName('nip').AsString:=edt1.Text;
  qry2.FieldByName('nama_dosen').AsString:=edt2.Text;
  qry2.Post;
  btn4Click(Sender);
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  qry2.Edit;
  qry2.FieldByName('nip').AsString:=edt1.Text;
  qry2.FieldByName('nama_dosen').AsString:=edt2.Text;
  qry2.Post;
  btn4Click(Sender);
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:=qry2.fieldbyname('nip').AsString;
  edt2.Text:=qry2.fieldbyname('nama_dosen').AsString;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  if MessageDlg('Hapus data?..',mtConfirmation,[mbYes,mbNo],0)=mryes then
  qry2.Delete;
  btn4Click(Sender);
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
end;

procedure TForm3.edt3Change(Sender: TObject);
begin
if cbb1.Text = 'NIP' then
with qry2 do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'SELECT * FROM tdosen WHERE nip LIKE ' + QuotedStr('%' + edt3.Text + '%');
  Open;
end
else if cbb1.Text = 'NAMA DOSEN' then
with qry2 do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'SELECT * FROM tdosen WHERE nama_dosen LIKE ' + QuotedStr('%' + edt3.Text + '%');
  Open;
end;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
Form5.qckrp2.Preview
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Show;
end;

procedure TForm3.FormHide(Sender: TObject);
begin
  Form2.Show;
end;

end.
