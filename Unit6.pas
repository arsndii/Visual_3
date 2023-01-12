unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    dbgrd1: TDBGrid;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    con1: TADOConnection;
    qry2: TADOQuery;
    ds1: TDataSource;
    grp1: TGroupBox;
    edt3: TEdit;
    cbb1: TComboBox;
    btn5: TButton;
    lbl3: TLabel;
    edt4: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure edt3Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  Unit7, Unit2;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
  qry2.Append;
  qry2.FieldByName('kode_mk').AsString:=edt1.Text;
  qry2.FieldByName('nama_mk').AsString:=edt2.Text;
  qry2.FieldByName('sks').AsString:=edt4.Text;
  qry2.Post;
  btn4Click(Sender);
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
  qry2.Edit;
  qry2.FieldByName('kode_mk').AsString:=edt1.Text;
  qry2.FieldByName('nama_mk').AsString:=edt2.Text;
  qry2.FieldByName('sks').AsString:=edt4.Text;
  qry2.Post;
  btn4Click(Sender);
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:=qry2.fieldbyname('kode_mk').AsString;
edt2.Text:=qry2.fieldbyname('nama_mk').AsString;
edt4.Text:=qry2.fieldbyname('sks').AsString;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
  if MessageDlg('Hapus data?..',mtConfirmation,[mbYes,mbNo],0)=mryes then
  qry2.Delete;
  btn4Click(Sender);
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt4.Clear;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
form7.qckrp1.preview
end;

procedure TForm6.edt3Change(Sender: TObject);
begin
if cbb1.Text = 'KODE MK' then
with qry2 do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'SELECT * FROM tmatakuliah WHERE kode_mk LIKE ' + QuotedStr('%' + edt3.Text + '%');
  Open;
end
else if cbb1.Text = 'NAMA MK' then
with qry2 do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'SELECT * FROM tmatakuliah WHERE nama_mk LIKE ' + QuotedStr('%' + edt3.Text + '%');
  Open;
end;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2.show;
end;

end.
