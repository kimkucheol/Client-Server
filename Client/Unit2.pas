unit Unit2;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  TDataModule2 = class(TDataModule)
    DCOMConnection: TDCOMConnection;
    ClientDataSetInform: TClientDataSet;
    ClientDataSetPers: TClientDataSet;
    ClientDataSetTelephon: TClientDataSet;
    DataSourceInform: TDataSource;
    DataSourcePers: TDataSource;
    DataSourceTelephon: TDataSource;
    ClientDataSetPersid_pers: TAutoIncField;
    ClientDataSetPersdep: TWideStringField;
    ClientDataSetPersfam: TWideStringField;
    ClientDataSetPersnam: TWideStringField;
    ClientDataSetPerspar: TWideStringField;
    ClientDataSetPersyear_b: TIntegerField;
    ClientDataSetPerspol: TWideStringField;
    ClientDataSetPerscharact: TMemoField;
    ClientDataSetPersphoto: TWideStringField;
    ClientDataSetPersADOInform: TDataSetField;
    ClientDataSetPersADOTelephon: TDataSetField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

procedure TDataModule2.DataModuleCreate(Sender: TObject);
begin
   ClientDataSetPers.Active := true;
   ClientDataSetInform.Active := true;
   ClientDataSettelephon.Active := true;
end;

end.
