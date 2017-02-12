unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ExtDlgs;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Button4: TButton;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Button5: TButton;
    Button2: TButton;
    DBEdit8: TDBEdit;
    Label2: TLabel;
    DBEdit9: TDBEdit;
    Label3: TLabel;
    DBEdit10: TDBEdit;
    Label4: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    DBEdit7: TDBEdit;
    procedure Image1Click(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Select_Image();

  private
    { Private declarations }
    id_pers : String;
    close_flag : Boolean;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

Uses Unit2;

{$R *.dfm}

procedure TForm3.Select_Image();
begin
  if OpenPictureDialog1.Execute then
  begin
   DbEdit7.Text := OpenPictureDialog1.FileName;
   label1.Visible := false;

   Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);

   //копировать файл в папку изоражений на сервере и в базу писать только им€
  end
  else
  begin
    label1.Visible := true;
  end;
end;

procedure TForm3.Image1Click(Sender: TObject);
begin
  Select_Image();
end;

procedure TForm3.ButtonClick(Sender: TObject);
begin
  DataModule2.ClientDataSetPers.ApplyUpdates(0);

  DataModule2.ClientDataSetInform.Close;
  DataModule2.ClientDataSetTelephon.Close;
  DataModule2.ClientDataSetPers.Close;
  DataModule2.DCOMConnection.Close;

  DataModule2.DCOMConnection.Open;
  DataModule2.ClientDataSetPers.Open;
  DataModule2.ClientDataSetInform.Open;
  DataModule2.ClientDataSetTelephon.Open;

  DataModule2.ClientDataSetInform.Append;

  DataModule2.ClientDataSetPers.Last;
  id_pers := DataModule2.ClientDataSetPers.FieldByName('id_pers').AsString;

  DbEdit11.Text := id_pers;
  GroupBox2.Visible := true;
end;

procedure TForm3.Label1Click(Sender: TObject);
begin
  Select_Image();
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  close_flag := false;
  DataModule2.ClientDataSetPers.Append;
end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
dlgResult: Integer;
begin
  if not close_flag then
  begin
    dlgResult := MessageDlg('¬ы точно хотите выйти, изменени€ не будут сохранены?',mtError, mbOKCancel, 0);

    if((dlgResult = mrOK)) then
    begin
      CanClose := true;
    end
    else
    begin
      CanClose := false;
    end;
  end;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  DataModule2.ClientDataSetInform.ApplyUpdates(0);

  DataModule2.ClientDataSetInform.Close;
  DataModule2.ClientDataSetTelephon.Close;
  DataModule2.ClientDataSetPers.Close;
  DataModule2.DCOMConnection.Close;

  DataModule2.DCOMConnection.Open;
  DataModule2.ClientDataSetPers.Open;
  DataModule2.ClientDataSetInform.Open;
  DataModule2.ClientDataSetTelephon.Open;

  DataModule2.ClientDataSetTelephon.Append;

  DbEdit15.Text := id_pers;

  GroupBox3.Visible := true;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  DataModule2.ClientDataSetTelephon.ApplyUpdates(0);

  DataModule2.ClientDataSetInform.Close;
  DataModule2.ClientDataSetTelephon.Close;
  DataModule2.ClientDataSetPers.Close;
  DataModule2.DCOMConnection.Close;

  DataModule2.DCOMConnection.Open;
  DataModule2.ClientDataSetPers.Open;
  DataModule2.ClientDataSetInform.Open;
  DataModule2.ClientDataSetTelephon.Open;

  close_flag := true;

  Form3.Close();
end;

end.
