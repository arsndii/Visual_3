object Form8: TForm8
  Left = 333
  Top = 254
  Width = 1332
  Height = 682
  Caption = 'Perkuliahan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object lbl5: TLabel
    Left = 520
    Top = 140
    Width = 42
    Height = 19
    Caption = 'NILAI'
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 256
    Width = 1281
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
        FieldName = 'tperkuliahan.nim'
        Title.Alignment = taCenter
        Title.Caption = 'NIM'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_mhs'
        Title.Alignment = taCenter
        Title.Caption = 'NAMA MAHASISWA'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tperkuliahan.kode_mk'
        Title.Alignment = taCenter
        Title.Caption = 'KODE MATA KULIAH'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_mk'
        Title.Alignment = taCenter
        Title.Caption = 'NAMA MATA KULIAH'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tperkuliahan.nip'
        Title.Alignment = taCenter
        Title.Caption = 'NIP'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_dosen'
        Title.Alignment = taCenter
        Title.Caption = 'NAMA DOSEN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilai'
        Title.Alignment = taCenter
        Title.Caption = 'NILAI'
        Width = 100
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 504
    Top = 176
    Width = 113
    Height = 25
    Caption = 'SAVE'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 504
    Top = 216
    Width = 113
    Height = 25
    Caption = 'EDIT'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 632
    Top = 176
    Width = 113
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 632
    Top = 216
    Width = 113
    Height = 25
    Caption = 'CANCEL'
    TabOrder = 4
    OnClick = btn4Click
  end
  object grp1: TGroupBox
    Left = 1024
    Top = 144
    Width = 273
    Height = 97
    Caption = 'Pencarian'
    TabOrder = 5
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
      Text = 'KODE MK'
      Items.Strings = (
        'KODE MK'
        'NIM MHS'
        'NIP DOSEN')
    end
  end
  object btn5: TButton
    Left = 760
    Top = 176
    Width = 113
    Height = 25
    Caption = 'PRINT'
    TabOrder = 6
    OnClick = btn5Click
  end
  object grp2: TGroupBox
    Left = 16
    Top = 16
    Width = 473
    Height = 105
    Caption = 'Mahasiswa'
    TabOrder = 7
    object lbl1: TLabel
      Left = 16
      Top = 35
      Width = 32
      Height = 19
      Caption = 'NPM'
    end
    object lbl2: TLabel
      Left = 16
      Top = 68
      Width = 45
      Height = 19
      Caption = 'NAMA'
    end
    object cbb2: TComboBox
      Left = 104
      Top = 31
      Width = 353
      Height = 27
      ItemHeight = 19
      TabOrder = 0
      OnChange = cbb2Change
    end
    object edt1: TEdit
      Left = 104
      Top = 64
      Width = 353
      Height = 27
      ReadOnly = True
      TabOrder = 1
    end
  end
  object grp3: TGroupBox
    Left = 16
    Top = 128
    Width = 473
    Height = 105
    Caption = 'Dosen'
    TabOrder = 8
    object lbl3: TLabel
      Left = 16
      Top = 35
      Width = 41
      Height = 19
      Caption = 'KODE'
    end
    object lbl4: TLabel
      Left = 16
      Top = 68
      Width = 45
      Height = 19
      Caption = 'NAMA'
    end
    object cbb3: TComboBox
      Left = 104
      Top = 31
      Width = 353
      Height = 27
      ItemHeight = 19
      TabOrder = 0
      OnChange = cbb3Change
    end
    object edt2: TEdit
      Left = 104
      Top = 64
      Width = 353
      Height = 27
      ReadOnly = True
      TabOrder = 1
    end
  end
  object edt4: TEdit
    Left = 608
    Top = 136
    Width = 353
    Height = 27
    TabOrder = 9
  end
  object grp4: TGroupBox
    Left = 504
    Top = 16
    Width = 473
    Height = 105
    Caption = 'Mata Kuliah'
    TabOrder = 10
    object lbl6: TLabel
      Left = 16
      Top = 35
      Width = 41
      Height = 19
      Caption = 'KODE'
    end
    object lbl7: TLabel
      Left = 16
      Top = 68
      Width = 45
      Height = 19
      Caption = 'NAMA'
    end
    object cbb4: TComboBox
      Left = 104
      Top = 31
      Width = 353
      Height = 27
      ItemHeight = 19
      TabOrder = 0
      OnChange = cbb4Change
    end
    object edt5: TEdit
      Left = 104
      Top = 64
      Width = 353
      Height = 27
      ReadOnly = True
      TabOrder = 1
    end
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
    Left = 1136
    Top = 32
  end
  object qry2: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM (((tperkuliahan INNER JOIN tmahasiswa ON tperkulia' +
        'han.nim = tmahasiswa.nim) INNER JOIN tdosen ON tperkuliahan.nip ' +
        '= tdosen.nip) INNER JOIN tmatakuliah ON tperkuliahan.kode_mk = t' +
        'matakuliah.kode_mk) ORDER BY tperkuliahan.id')
    Left = 1216
    Top = 32
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 1256
    Top = 32
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM (((tperkuliahan INNER JOIN tmahasiswa ON tperkulia' +
        'han.nim = tmahasiswa.nim) INNER JOIN tdosen ON tperkuliahan.nip ' +
        '= tdosen.nip) INNER JOIN tmatakuliah ON tperkuliahan.kode_mk = t' +
        'matakuliah.kode_mk) ORDER BY tperkuliahan.id')
    Left = 1176
    Top = 32
  end
  object qry3: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tperkuliahan')
    Left = 1176
    Top = 88
  end
end
