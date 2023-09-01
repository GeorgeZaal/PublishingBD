unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, CheckLst, ExtCtrls, Menus, Buttons, ShellAPI;

type
  TSearchForm = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    ListBox1: TListBox;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SearchForm: TSearchForm;
  u, zu : integer;

implementation

uses Unit1;

{$R *.dfm}

function CopyDir( const fromDir, toDir: string ): boolean;
var
  fos: TSHFileOpStruct;
begin
   ZeroMemory( @fos, SizeOf( fos ) );
   with fos do
   begin
      wFunc := FO_COPY;
      fFlags := FOF_FILESONLY;
      pFrom := PChar( fromDir + #0 );
      pTo := PChar( toDir )
   end;
   Result := ( 0 = ShFileOperation( fos ) );
end;

procedure TSearchForm.Button1Click(Sender: TObject);
// form1.SGrid.Selection.Top
begin
listbox1.Clear;
   for u := 0 to form1.SGrid.RowCount - 1 do
     for zu := 0 to 16 do
        if pos(edit1.Text, form1.SGrid.Cells[zu, u]) >= 1 then
           begin
//           form1.SGrid.Col := zu;
//           form1.SGrid.Row := u;
           ListBox1.Items.Add(inttostr(u) + '. ' +form1.SGrid.Cells[4, u]);
           break;
           end else
          // beep;
end;

procedure TSearchForm.ListBox1DblClick(Sender: TObject);
var
  i, sel: integer;
  str, num : string;
begin
  sel := listbox1.ItemIndex;
  str := ListBox1.Items[sel];
  for i := 1 to Length(str) do
      if str[i] <> '.' then num := num + str[i] else break;
  form1.SGrid.Col := 1; //zu;
  form1.SGrid.Row := strtoint(num);
end;

procedure TSearchForm.SpeedButton1Click(Sender: TObject);
begin
ListBox1.DeleteSelected;//удаляем
end;

procedure TSearchForm.SpeedButton2Click(Sender: TObject);
var
  i, sel: integer;
  str, num, copdir : string;
begin
  for sel := 0 to listbox1.Items.Count - 1 do
    begin
      str := ListBox1.Items[sel];
      for i := 1 to Length(str) do
          if str[i] <> '.' then num := num + str[i] else break;
          copdir := form1.SGrid.Cells[18, strtoint(num)];
      CopyDir(copdir, Edit2.Text);
      num := '';
    end;
end;

end.
