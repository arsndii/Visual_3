unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm8 = class(TForm)
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    grp1: TGroupBox;
    edt3: TEdit;
    cbb1: TComboBox;
    btn5: TButton;
    con1: TADOConnection;
    qry2: TADOQuery;
    ds1: TDataSource;
    grp2: TGroupBox;
    lbl1: TLabel;
    cbb2: TComboBox;
    lbl2: TLabel;
    edt1: TEdit;
    grp3: TGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    cbb3: TComboBox;
    edt2: TEdit;
    lbl5: TLabel;
    edt4: TEdit;
    grp4: TGroupBox;
    lbl6: TLabel;
    lbl7: TLabel;
    cbb4: TComboBox;
    edt5: TEdit;
    qry1: TADOQuery;
    qry3: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure cbb2Change(Sender: TObject);
    procedure cbb3Change(Sender: TObject);
    procedure cbb4Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
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
  Form8: TForm8;

implementation

uses Unit7, Unit2;

{$R *.dfm}

procedure TForm8.FormActivate(Sender: TObject);
begin

  // Mahasiswa
  with qry2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT nim FROM tmahasiswa');
    Open;
      cbb2.Clear;
      while not qry2.Eof do
      begin
        cbb2.Items.Add(qry2.FieldByName('nim').AsString);
        qry2.Next;
      end;
  end;

  // Dosen
  with qry2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT nip FROM tdosen');
    Open;
      cbb3.Clear;
      while not qry2.Eof do
      begin
        cbb3.Items.Add(qry2.FieldByName('nip').AsString);
        qry2.Next;
      end;
  end;

  // Mata Kuliah
  with qry2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT kode_mk FROM tmatakuliah');
    Open;
      cbb4.Clear;
      while not qry2.Eof do
      begin
        cbb4.Items.Add(qry2.FieldByName('kode_mk').AsString);
        qry2.Next;
      end;
  end;

end;

procedure TForm8.cbb2Change(Sender: TObject);
begin
  with qry2 do
  begin
    Close;
    SQL.Clear;
    // Mencari nama anggota berdasarkan id_anggota
    SQL.Add('SELECT * FROM tmahasiswa WHERE nim = "'+ cbb2.Text +'" ');
    Open;
    edt1.Text := fieldbyname('nama_mhs').AsString
  end;
end;

procedure TForm8.cbb3Change(Sender: TObject);
begin
  with qry2 do
  begin
    Close;
    SQL.Clear;
    // Mencari nama anggota berdasarkan id_anggota
    SQL.Add('SELECT * FROM tdosen WHERE nip = "'+ cbb3.Text +'" ');
    Open;
    edt2.Text := fieldbyname('nama_dosen').AsString
  end;
end;

procedure TForm8.cbb4Change(Sender: TObject);
begin
  with qry2 do
  begin
    Close;
    SQL.Clear;
    // Mencari nama anggota berdasarkan id_anggota
    SQL.Add('SELECT * FROM tmatakuliah WHERE kode_mk = "'+ cbb4.Text +'" ');
    Open;
    edt5.Text := fieldbyname('nama_mk').AsString
  end;
end;

procedure TForm8.btn1Click(Sender: TObject);
begin
  qry3.Append;
  qry3.FieldByName('nim').AsString:=cbb2.Text;
  qry3.FieldByName('kode_mk').AsString:=cbb4.Text;
  qry3.FieldByName('nip').AsString:=cbb3.Text;
  qry3.FieldByName('nilai').AsString:=edt4.Text;
  qry3.Post;
  with qry1 do
  begin
    Close;
    Open;
  end;
  btn4Click(Sender);
end;

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin

  // Mahasiswa
  with qry2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT nim FROM tmahasiswa');
    Open;
      cbb2.Clear;
      while not qry2.Eof do
      begin
        cbb2.Items.Add(qry2.FieldByName('nim').AsString);
        qry2.Next;
      end;
  end;

  // Dosen
  with qry2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT nip FROM tdosen');
    Open;
      cbb3.Clear;
      while not qry2.Eof do
      begin
        cbb3.Items.Add(qry2.FieldByName('nip').AsString);
        qry2.Next;
      end;
  end;

  // Mata Kuliah
  with qry2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT kode_mk FROM tmatakuliah');
    Open;
      cbb4.Clear;
      while not qry2.Eof do
      begin
        cbb4.Items.Add(qry2.FieldByName('kode_mk').AsString);
        qry2.Next;
      end;
  end;

  cbb2.Text:=qry1.fieldbyname('tmahasiswa.nim').AsString;
  cbb4.Text:=qry1.fieldbyname('tmatakuliah.kode_mk').AsString;
  cbb3.Text:=qry1.fieldbyname('tdosen.nip').AsString;
  edt4.Text:=qry1.fieldbyname('nilai').AsString;
  with qry2 do
  begin
    Close;
    SQL.Clear;
    // Mencari nama anggota berdasarkan id_anggota
    SQL.Add('SELECT * FROM tmahasiswa WHERE nim = "'+ cbb2.Text +'" ');
    Open;
    edt1.Text := fieldbyname('nama_mhs').AsString
  end;
  with qry2 do
  begin
    Close;
    SQL.Clear;
    // Mencari nama anggota berdasarkan id_anggota
    SQL.Add('SELECT * FROM tdosen WHERE nip = "'+ cbb3.Text +'" ');
    Open;
    edt2.Text := fieldbyname('nama_dosen').AsString
  end;
  with qry2 do
  begin
    Close;
    SQL.Clear;
    // Mencari nama anggota berdasarkan id_anggota
    SQL.Add('SELECT * FROM tmatakuliah WHERE kode_mk = "'+ cbb4.Text +'" ');
    Open;
    edt5.Text := fieldbyname('nama_mk').AsString
  end;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
  qry3.Edit;
  qry3.FieldByName('nim').AsString:=cbb2.Text;
  qry3.FieldByName('kode_mk').AsString:=cbb4.Text;
  qry3.FieldByName('nip').AsString:=cbb3.Text;
  qry3.FieldByName('nilai').AsString:=edt4.Text;
  qry3.Post;
  with qry1 do
  begin
    Close;
    Open;
  end;
  btn4Click(Sender);
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
  if MessageDlg('Hapus data?..',mtConfirmation,[mbYes,mbNo],0)=mryes then
  qry3.Delete;
  with qry1 do
  begin
    Close;
    Open;
  end;
  btn4Click(Sender);
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
  cbb2.Clear;
  cbb4.Clear;
  cbb3.Clear;
  edt4.Clear;
  edt1.Clear;
  edt2.Clear;
  edt5.Clear;

  // Mahasiswa
  with qry2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT nim FROM tmahasiswa');
    Open;
      cbb2.Clear;
      while not qry2.Eof do
      begin
        cbb2.Items.Add(qry2.FieldByName('nim').AsString);
        qry2.Next;
      end;
  end;

  // Dosen
  with qry2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT nip FROM tdosen');
    Open;
      cbb3.Clear;
      while not qry2.Eof do
      begin
        cbb3.Items.Add(qry2.FieldByName('nip').AsString);
        qry2.Next;
      end;
  end;

  // Mata Kuliah
  with qry2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT kode_mk FROM tmatakuliah');
    Open;
      cbb4.Clear;
      while not qry2.Eof do
      begin
        cbb4.Items.Add(qry2.FieldByName('kode_mk').AsString);
        qry2.Next;
      end;
  end;
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
Form7.qckrp2.Preview;
end;

procedure TForm8.edt3Change(Sender: TObject);
begin
if cbb1.Text = 'KODE MK' then
with qry1 do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'SELECT * FROM (((tperkuliahan INNER JOIN tmahasiswa ON tperkuliahan.nim = tmahasiswa.nim) INNER JOIN tdosen ON tperkuliahan.nip = tdosen.nip) INNER JOIN tmatakuliah ON tperkuliahan.kode_mk = tmatakuliah.kode_mk) WHERE tperkuliahan.kode_mk LIKE ' + QuotedStr('%' + edt3.Text + '%');
  Open;
end
else if cbb1.Text = 'NIM MHS' then
with qry1 do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'SELECT * FROM (((tperkuliahan INNER JOIN tmahasiswa ON tperkuliahan.nim = tmahasiswa.nim) INNER JOIN tdosen ON tperkuliahan.nip = tdosen.nip) INNER JOIN tmatakuliah ON tperkuliahan.kode_mk = tmatakuliah.kode_mk) WHERE tperkuliahan.nim LIKE ' + QuotedStr('%' + edt3.Text + '%');
  Open;
end
else if cbb1.Text = 'NIP DOSEN' then
with qry1 do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'SELECT * FROM (((tperkuliahan INNER JOIN tmahasiswa ON tperkuliahan.nim = tmahasiswa.nim) INNER JOIN tdosen ON tperkuliahan.nip = tdosen.nip) INNER JOIN tmatakuliah ON tperkuliahan.kode_mk = tmatakuliah.kode_mk) WHERE tperkuliahan.nip LIKE ' + QuotedStr('%' + edt3.Text + '%');
  Open;
end;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2.show;
end;

end.
