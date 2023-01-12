object Form2: TForm2
  Left = 642
  Top = 358
  Width = 618
  Height = 211
  Caption = 'Dashboard'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object lbl4: TLabel
    Left = 343
    Top = 120
    Width = 244
    Height = 19
    Caption = 'M. YEDI ARISANDI - 2010010210'
  end
  object grp1: TGroupBox
    Left = 16
    Top = 16
    Width = 177
    Height = 89
    Caption = 'Dosen'
    TabOrder = 0
    object lbl1: TLabel
      Left = 80
      Top = 33
      Width = 17
      Height = 39
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object grp2: TGroupBox
    Left = 216
    Top = 16
    Width = 177
    Height = 89
    Caption = 'Mahasiswa'
    TabOrder = 1
    object lbl2: TLabel
      Left = 80
      Top = 33
      Width = 17
      Height = 39
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object grp3: TGroupBox
    Left = 408
    Top = 16
    Width = 177
    Height = 89
    Caption = 'Mata Kuliah'
    TabOrder = 2
    object lbl3: TLabel
      Left = 80
      Top = 33
      Width = 17
      Height = 39
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object mm1: TMainMenu
    Left = 16
    Top = 120
    object MENU1: TMenuItem
      Caption = 'MENU MASTER'
      object DATADOSEN1: TMenuItem
        Caption = 'DATA DOSEN'
        OnClick = DATADOSEN1Click
      end
      object DATAMAHASISWA1: TMenuItem
        Caption = 'DATA MAHASISWA'
        OnClick = DATAMAHASISWA1Click
      end
      object DATAMATAKULIAH1: TMenuItem
        Caption = 'DATA MATA KULIAH'
        OnClick = DATAMATAKULIAH1Click
      end
      object DATAPERKULIAHAN1: TMenuItem
        Caption = 'DATA PERKULIAHAN'
        OnClick = DATAPERKULIAHAN1Click
      end
    end
    object LAPORAN1: TMenuItem
      Caption = 'LAPORAN'
      object L1: TMenuItem
        Caption = 'LAPORAN DOSEN'
        OnClick = L1Click
      end
      object LAPORANMAHASISWA1: TMenuItem
        Caption = 'LAPORAN MAHASISWA'
        OnClick = LAPORANMAHASISWA1Click
      end
      object LAPORANMATAKULIAH1: TMenuItem
        Caption = 'LAPORAN MATA KULIAH'
        OnClick = LAPORANMATAKULIAH1Click
      end
      object LAPORANPERKULIAHAN1: TMenuItem
        Caption = 'LAPORAN PERKULIAHAN'
        OnClick = LAPORANPERKULIAHAN1Click
      end
    end
    object EXIT1: TMenuItem
      Caption = 'EXIT'
      OnClick = EXIT1Click
    end
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tperkuliahan')
    Left = 272
    Top = 120
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
    Left = 232
    Top = 120
  end
end
