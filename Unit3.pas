unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TAbout = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Label2: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  About: TAbout;

implementation

uses Unit1;

{$R *.dfm}

procedure RemoveAll(path: string);    //Процедура удаление папок с файлами
var
  sr: TSearchRec;
begin
  if FindFirst(path + '\*.*', faAnyFile, sr) = 0 then
  begin
    repeat
      if sr.Attr and faDirectory = 0 then
      begin
        DeleteFile(path + '\' + sr.name);
      end
      else
      begin
        if pos('.', sr.name) <= 0 then
          RemoveAll(path + '\' + sr.name);
      end;
    until
      FindNext(sr) <> 0;
  end;
  FindClose(sr);
  RemoveDirectory(PChar(path));
end;

procedure TAbout.FormShow(Sender: TObject);
begin
form1.enabled:=false;
end;

procedure TAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.enabled:=true;
end;

procedure TAbout.Button3Click(Sender: TObject);
begin
close;
end;

procedure TAbout.Button1Click(Sender: TObject);
begin
                 close;
end;

procedure TAbout.Button2Click(Sender: TObject);
var
i,j:integer;
begin
                 RemoveAll(form1.sgrid.Cells[18,form1.SGrid.Selection.Top]);

for i:=form1.SGrid.Selection.Top to form1.SGrid.RowCount-1 do
begin
for j:=0 to 18 do
form1.SGrid.Cells[j,i]:=form1.SGrid.Cells[j,i+1];
end;
                 form1.sgrid.RowCount:=form1.sgrid.RowCount-1;
                 close;
end;

end.
