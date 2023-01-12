unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, DB, ADODB;

type
  TForm2 = class(TForm)
    mm1: TMainMenu;
    MENU1: TMenuItem;
    EXIT1: TMenuItem;
    DATADOSEN1: TMenuItem;
    DATAMAHASISWA1: TMenuItem;
    DATAMATAKULIAH1: TMenuItem;
    DATAPERKULIAHAN1: TMenuItem;
    LAPORAN1: TMenuItem;
    grp1: TGroupBox;
    lbl1: TLabel;
    grp2: TGroupBox;
    lbl2: TLabel;
    grp3: TGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    qry1: TADOQuery;
    con1: TADOConnection;
    L1: TMenuItem;
    LAPORANMAHASISWA1: TMenuItem;
    LAPORANMATAKULIAH1: TMenuItem;
    LAPORANPERKULIAHAN1: TMenuItem;
    procedure DATADOSEN1Click(Sender: TObject);
    procedure DATAMAHASISWA1Click(Sender: TObject);
    procedure DATAMATAKULIAH1Click(Sender: TObject);
    procedure DATAPERKULIAHAN1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure LAPORANMAHASISWA1Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure LAPORANMATAKULIAH1Click(Sender: TObject);
    procedure LAPORANPERKULIAHAN1Click(Sender: TObject);
    procedure EXIT1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Unit3, Unit4, Unit6, Unit8, Unit5, Unit7;

{$R *.dfm}

procedure TForm2.DATADOSEN1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm2.DATAMAHASISWA1Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm2.DATAMATAKULIAH1Click(Sender: TObject);
begin
Form6.Show;
end;


procedure TForm2.DATAPERKULIAHAN1Click(Sender: TObject);
begin
Form8.Show;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  with qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT (nip) AS jumlah_dosen FROM tdosen');
    Open;
    lbl1.Caption := fieldbyname('jumlah_dosen').AsString
  end;
  with qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT (nim) AS jumlah_mhs FROM tmahasiswa');
    Open;
    lbl2.Caption := fieldbyname('jumlah_mhs').AsString
  end;
  with qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT (kode_mk) AS jumlah_mk FROM tmatakuliah');
    Open;
    lbl3.Caption := fieldbyname('jumlah_mk').AsString
  end;
end;

procedure TForm2.LAPORANMAHASISWA1Click(Sender: TObject);
begin
  Form5.qckrp1.Preview;
end;

procedure TForm2.L1Click(Sender: TObject);
begin
Form5.qckrp2.Preview
end;

procedure TForm2.LAPORANMATAKULIAH1Click(Sender: TObject);
begin
form7.qckrp1.preview
end;

procedure TForm2.LAPORANPERKULIAHAN1Click(Sender: TObject);
begin
Form7.qckrp2.Preview;
end;

procedure TForm2.EXIT1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  with qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT (nip) AS jumlah_dosen FROM tdosen');
    Open;
    lbl1.Caption := fieldbyname('jumlah_dosen').AsString
  end;
  with qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT (nim) AS jumlah_mhs FROM tmahasiswa');
    Open;
    lbl2.Caption := fieldbyname('jumlah_mhs').AsString
  end;
  with qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT (kode_mk) AS jumlah_mk FROM tmatakuliah');
    Open;
    lbl3.Caption := fieldbyname('jumlah_mk').AsString
  end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  with qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT (nip) AS jumlah_dosen FROM tdosen');
    Open;
    lbl1.Caption := fieldbyname('jumlah_dosen').AsString
  end;
  with qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT (nim) AS jumlah_mhs FROM tmahasiswa');
    Open;
    lbl2.Caption := fieldbyname('jumlah_mhs').AsString
  end;
  with qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT (kode_mk) AS jumlah_mk FROM tmatakuliah');
    Open;
    lbl3.Caption := fieldbyname('jumlah_mk').AsString
  end;
end;

end.
