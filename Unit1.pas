unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    ListView1: TListView;
    CornerButton1: TCornerButton;
    procedure CornerButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
    procedure renderList;
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{ TForm1 }

procedure TForm1.CornerButton1Click(Sender: TObject);
begin
  renderList;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  renderList;
end;

procedure TForm1.renderList;
var t_item: TListViewItem;
  i: integer;
begin
  try
    ListView1.BeginUpdate;
    ListView1.Items.Clear;
    for i := 0 to 99 do
    begin
      t_item:=ListView1.Items.Add;
      TlistItemText(t_item.Objects[0]).Text:=i.ToString;
      TlistItemText(t_item.Objects[1]).Text:='colored '+i.ToString;
    end;
  finally
    ListView1.EndUpdate;
  end;
end;

end.
