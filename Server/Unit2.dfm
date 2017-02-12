object rdmw: Trdmw
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  Left = 263
  Top = 152
  Height = 401
  Width = 823
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\Dima\Documents\Delphi\'#1057#1077#1088#1074' '#1056#1072#1079'\'#1057#1077#1088#1074#1077#1088'\db1.mdb;Mode=Share Den' +
      'y None;Persist Security Info=False;Jet OLEDB:System database="";' +
      'Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OL' +
      'EDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Gl' +
      'obal Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet' +
      ' OLEDB:New Database Password="";Jet OLEDB:Create System Database' +
      '=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Loc' +
      'ale on Compact=False;Jet OLEDB:Compact Without Replica Repair=Fa' +
      'lse;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 16
  end
  object ADOPers: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_pers'
    TableName = 'Pers'
    Left = 144
    Top = 24
    object ADOPersid_pers: TAutoIncField
      FieldName = 'id_pers'
      ReadOnly = True
    end
    object ADOPersdep: TWideStringField
      FieldName = 'dep'
      Size = 50
    end
    object ADOPersfam: TWideStringField
      FieldName = 'fam'
      Size = 50
    end
    object ADOPersnam: TWideStringField
      FieldName = 'nam'
      Size = 50
    end
    object ADOPerspar: TWideStringField
      FieldName = 'par'
      Size = 50
    end
    object ADOPersyear_b: TIntegerField
      FieldName = 'year_b'
    end
    object ADOPerspol: TWideStringField
      FieldName = 'pol'
      Size = 255
    end
    object ADOPerscharact: TMemoField
      FieldName = 'charact'
      BlobType = ftMemo
    end
    object ADOPersphoto: TWideStringField
      FieldName = 'photo'
      Size = 255
    end
  end
  object ADOTelephon: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_pers'
    MasterFields = 'id_pers'
    MasterSource = DataPers
    TableName = 'telephon'
    Left = 144
    Top = 96
  end
  object ADOInform: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_pers'
    MasterFields = 'id_pers'
    MasterSource = DataSourcePers_inf
    TableName = 'inform'
    Left = 144
    Top = 160
  end
  object DataPers: TDataSource
    DataSet = ADOPers
    Left = 48
    Top = 80
  end
  object DataSourcePers_inf: TDataSource
    DataSet = ADOPers
    Left = 40
    Top = 152
  end
  object DataSetPers: TDataSetProvider
    DataSet = ADOPers
    UpdateMode = upWhereKeyOnly
    Left = 256
    Top = 40
  end
  object DataSetTelephon: TDataSetProvider
    DataSet = ADOTelephon
    UpdateMode = upWhereKeyOnly
    Left = 264
    Top = 120
  end
  object DataSetInform: TDataSetProvider
    DataSet = ADOInform
    UpdateMode = upWhereKeyOnly
    Left = 264
    Top = 184
  end
end
