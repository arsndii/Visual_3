object Form4: TForm4
  Left = 474
  Top = 219
  Width = 1009
  Height = 714
  Caption = 'Mahasiswa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object lbl1: TLabel
    Left = 16
    Top = 69
    Width = 29
    Height = 19
    Caption = 'NIM'
  end
  object lbl2: TLabel
    Left = 16
    Top = 112
    Width = 144
    Height = 19
    Caption = 'NAMA MAHASISWA'
  end
  object lbl3: TLabel
    Left = 417
    Top = 13
    Width = 159
    Height = 23
    Caption = 'DATA MAHASISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 16
    Top = 157
    Width = 124
    Height = 19
    Caption = 'TANGGAL LAHIR'
  end
  object lbl5: TLabel
    Left = 16
    Top = 192
    Width = 63
    Height = 19
    Caption = 'ALAMAT'
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 328
    Width = 961
    Height = 329
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'nim'
        Title.Alignment = taCenter
        Title.Caption = 'NIM'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_mhs'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Mahasiswa'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_lahir'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Lahir'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Title.Alignment = taCenter
        Title.Caption = 'Alamat'
        Width = 350
        Visible = True
      end>
  end
  object edt1: TEdit
    Left = 184
    Top = 65
    Width = 329
    Height = 27
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 184
    Top = 108
    Width = 329
    Height = 27
    TabOrder = 2
  end
  object btn1: TButton
    Left = 16
    Top = 288
    Width = 113
    Height = 25
    Caption = 'SAVE'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 144
    Top = 288
    Width = 113
    Height = 25
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 272
    Top = 288
    Width = 113
    Height = 25
    Caption = 'DELETE'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 400
    Top = 288
    Width = 113
    Height = 25
    Caption = 'CANCEL'
    TabOrder = 6
    OnClick = btn4Click
  end
  object dtp1: TDateTimePicker
    Left = 184
    Top = 152
    Width = 329
    Height = 27
    Date = 36967.000000000000000000
    Time = 36967.000000000000000000
    TabOrder = 7
  end
  object mmo1: TMemo
    Left = 184
    Top = 192
    Width = 329
    Height = 73
    Lines.Strings = (
      '')
    TabOrder = 8
  end
  object grp1: TGroupBox
    Left = 704
    Top = 216
    Width = 273
    Height = 97
    Caption = 'Pencarian'
    TabOrder = 9
    object edt3: TEdit
      Left = 8
      Top = 56
      Width = 257
      Height = 27
      TabOrder = 0
      OnChange = edt3Change
    end
    object cbb1: TComboBox
      Left = 8
      Top = 24
      Width = 257
      Height = 27
      ItemHeight = 19
      TabOrder = 1
      Text = 'NIM'
      Items.Strings = (
        'NIM'
        'NAMA MAHASISWA')
    end
  end
  object btn5: TButton
    Left = 528
    Top = 288
    Width = 113
    Height = 25
    Caption = 'PRINT'
    TabOrder = 10
    OnClick = btn5Click
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=prakt' +
      'ikum.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OL' +
      'EDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Data' +
      'base Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lock' +
      'ing Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global ' +
      'Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB' +
      ':Create System Database=False;Jet OLEDB:Encrypt Database=False;J' +
      'et OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Wi' +
      'thout Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 872
    Top = 64
  end
  object qry2: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tmahasiswa ORDER BY nim'
      ''
      '')
    Left = 912
    Top = 64
  end
  object ds1: TDataSource
    DataSet = qry2
    Left = 952
    Top = 64
  end
end
