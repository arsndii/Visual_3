object Form3: TForm3
  Left = 504
  Top = 292
  Width = 1009
  Height = 513
  Caption = 'Dosen'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnHide = FormHide
  PixelsPerInch = 96
  TextHeight = 19
  object lbl1: TLabel
    Left = 16
    Top = 13
    Width = 26
    Height = 19
    Caption = 'NIP'
  end
  object lbl2: TLabel
    Left = 16
    Top = 48
    Width = 102
    Height = 19
    Caption = 'NAMA DOSEN'
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 128
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
        FieldName = 'nip'
        Title.Alignment = taCenter
        Title.Caption = 'NIP'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_dosen'
        Title.Alignment = taCenter
        Title.Caption = 'NAMA DOSEN'
        Width = 620
        Visible = True
      end>
  end
  object edt1: TEdit
    Left = 160
    Top = 9
    Width = 353
    Height = 27
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 160
    Top = 44
    Width = 353
    Height = 27
    TabOrder = 2
  end
  object btn1: TButton
    Left = 16
    Top = 88
    Width = 113
    Height = 25
    Caption = 'SAVE'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 144
    Top = 88
    Width = 113
    Height = 25
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 272
    Top = 88
    Width = 113
    Height = 25
    Caption = 'DELETE'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 400
    Top = 88
    Width = 113
    Height = 25
    Caption = 'CANCEL'
    TabOrder = 6
    OnClick = btn4Click
  end
  object grp1: TGroupBox
    Left = 704
    Top = 16
    Width = 273
    Height = 97
    Caption = 'Pencarian'
    TabOrder = 7
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
      Text = 'NIP'
      Items.Strings = (
        'NIP'
        'NAMA DOSEN')
    end
  end
  object btn5: TButton
    Left = 528
    Top = 88
    Width = 113
    Height = 25
    Caption = 'PRINT'
    TabOrder = 8
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
    Left = 560
    Top = 16
  end
  object qry2: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tdosen ORDER BY nip')
    Left = 600
    Top = 16
  end
  object ds1: TDataSource
    DataSet = qry2
    Left = 640
    Top = 16
  end
end
