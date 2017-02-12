unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, Jpeg, StdCtrls, DBCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Image1: TImage;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    DBLookupListBox1: TDBLookupListBox;
    procedure DBLookupListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

Uses Unit2;

{$R *.dfm}

procedure TForm4.DBLookupListBox1Click(Sender: TObject);
begin
  if(FileExists(DataModule2.ClientDataSetPers.FieldByName('photo').AsString)) then
  begin
    try
      Image1.Picture.LoadFromFile(DataModule2.ClientDataSetPers.FieldByName('photo').AsString);
    except on Error: Exception do
      ShowMessage(Error.Message);
    end;
  end;
end;

end.
 