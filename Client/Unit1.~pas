unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Grids, DBGrids, Menus, DB, DBClient;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Button5: TButton;
    Button6: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

Uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if not DataModule2.DCOMConnection.Connected then
  begin
    DataModule2.DCOMConnection.Open;
    DataModule2.ClientDataSetPers.Open;
    DataModule2.ClientDataSetInform.Open;
    DataModule2.ClientDataSetTelephon.Open;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    DataModule2.ClientDataSetInform.Close;
    DataModule2.ClientDataSetTelephon.Close;
    DataModule2.ClientDataSetPers.Close;
    DataModule2.DCOMConnection.Close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    DataModule2.ClientDataSetInform.CancelUpdates;
    DataModule2.ClientDataSetTelephon.CancelUpdates;
    DataModule2.ClientDataSetPers.CancelUpdates;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
inform_error_count: integer;
telephon_error_count: integer;
pers_error_count: integer;
sum_error: integer;
begin
   inform_error_count := DataModule2.ClientDataSetInform.ApplyUpdates(0);
   telephon_error_count := DataModule2.ClientDataSetTelephon.ApplyUpdates(0);
   pers_error_count := DataModule2.ClientDataSetPers.ApplyUpdates(0);
   sum_error := inform_error_count + telephon_error_count + pers_error_count;

   if(sum_error > 0) then
   begin
     ShowMessage('Ошибка сохранения: ' + intToStr(sum_error))
   end
   else
   begin
     ShowMessage('Сохранено')
   end
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if(Edit1.Text <> '') then
  begin
    DataModule2.ClientDataSetPers.Filtered := false;

    DataModule2.ClientDataSetPers.Filter := 'fam = ''' + Edit1.Text + ''' or nam = ''' + Edit1.Text +
    ''' or dep = ''' + Edit1.Text + ''' or par = ''' + Edit1.Text + '''';
    DataModule2.ClientDataSetPers.Filtered := true;
  end
  else
  begin
    DataModule2.ClientDataSetPers.Filtered := false;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form3.Show();
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Form4.Show();
end;

procedure TForm1.GroupBox1Click(Sender: TObject);
//var
//i:Integer;
//count:Integer;
begin
  {ClientDataSetPers.First;

  for i := 0 to ClientDataSetPers.RecordCount - 1 do
  begin
    if(ClientDataSetPers.FieldByName('dep').AsString = DbText1.Caption) then
    begin
      count := count + 1;
    end;

    ClientDataSetPers.Next;
  end;

  label7.Caption := IntToStr(ClientDataSetPers.RecordCount);
  label8.Caption := IntToStr(count);}
end;

end.
