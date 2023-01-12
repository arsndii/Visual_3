unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TForm4 = class(TForm)
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
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    dtp1: TDateTimePicker;
    mmo1: TMemo;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Unit5, Unit2;

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
  qry2.Append;
  qry2.FieldByName('nim').AsString:=edt1.Text;
  qry2.FieldByName('nama_mhs').AsString:=edt2.Text;
  qry2.FieldByName('tgl_lahir').AsDateTime:=dtp1.Date;
  qry2.FieldByName('alamat').AsString:=mmo1.Text;
  qry2.Post;
  btn4Click(Sender);
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  qry2.Edit;
  qry2.FieldByName('nim').AsString:=edt1.Text;
  qry2.FieldByName('nama_mhs').AsString:=edt2.Text;
  qry2.FieldByName('tgl_lahir').AsDateTime:=dtp1.Date;
  qry2.FieldByName('alamat').AsString:=mmo1.Text;
  qry2.Post;
  btn4Click(Sender);
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:=qry2.fieldbyname('nim').AsString;
edt2.Text:=qry2.fieldbyname('nama_mhs').AsString;
dtp1.Date:=qry2.fieldbyname('tgl_lahir').AsDateTime;
mmo1.Text:=qry2.fieldbyname('alamat').AsString;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
  if MessageDlg('Hapus data?..',mtConfirmation,[mbYes,mbNo],0)=mryes then
  qry2.Delete;
  btn4Click(Sender);
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
dtp1.Date:=Now;
mmo1.Clear;
end;

procedure TForm4.edt3Change(Sender: TObject);
begin
if cbb1.Text = 'NIM' then
with qry2 do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'SELECT * FROM tmahasiswa WHERE nim LIKE ' + QuotedStr('%' + edt3.Text + '%');
  Open;
end
else if cbb1.Text = 'NAMA MAHASISWA' then
with qry2 do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'SELECT * FROM tmahasiswa WHERE nama_mhs LIKE ' + QuotedStr('%' + edt3.Text + '%');
  Open;
end;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
Form5.qckrp1.Preview;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2.show;
end;

end.
