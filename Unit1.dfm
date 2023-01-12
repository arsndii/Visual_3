object Form1: TForm1
  Left = 704
  Top = 384
  Width = 529
  Height = 343
  Caption = 'Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 23
  object lbl1: TLabel
    Left = 96
    Top = 96
    Width = 84
    Height = 23
    Caption = 'Username'
  end
  object lbl2: TLabel
    Left = 96
    Top = 144
    Width = 78
    Height = 23
    Caption = 'Password'
  end
  object lbl3: TLabel
    Left = 195
    Top = 32
    Width = 94
    Height = 23
    Caption = 'Login Form'
  end
  object edt1: TEdit
    Left = 232
    Top = 92
    Width = 185
    Height = 31
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 232
    Top = 140
    Width = 185
    Height = 31
    TabOrder = 1
  end
  object btn1: TButton
    Left = 128
    Top = 199
    Width = 129
    Height = 41
    Caption = 'Login'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 272
    Top = 199
    Width = 129
    Height = 41
    Caption = 'Exit'
    TabOrder = 3
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=kampu' +
      's.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB' +
      ':System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Databas' +
      'e Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking' +
      ' Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bul' +
      'k Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Cr' +
      'eate System Database=False;Jet OLEDB:Encrypt Database=False;Jet ' +
      'OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Witho' +
      'ut Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 344
    Top = 24
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tlogin')
    Left = 400
    Top = 24
  end
end
