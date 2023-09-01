unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TColored = class(TForm)
    GroupBox1: TGroupBox;
    CB1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    CB2: TComboBox;
    CB3: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Colored: TColored;

implementation

uses Unit1;

{$R *.dfm}

procedure TColored.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.enabled:=true;
end;

procedure TColored.FormShow(Sender: TObject);
var
i:integer;
begin
form1.enabled:=false;
//Загрузка в EColA и EColB колонок с сетки
for i:=0 to form1.sgrid.ColCount-1 do begin
                                   CB1.Items.Add(form1.sgrid.Cells[i,0]);
                                   CB2.Items.Add(form1.sgrid.Cells[i,0]);
                                   CB3.Items.Add(form1.sgrid.Cells[i,0]);
                                   CB1.ItemIndex:=0;
                                   CB2.ItemIndex:=0;
                                   CB3.ItemIndex:=0;
                                   end;
end;

procedure TColored.Button2Click(Sender: TObject);
begin
close;
end;

procedure TColored.Button1Click(Sender: TObject);
var
mas1,mas2,mas3,masF:array[1..1000] of byte;
j,i:integer;
begin
j:=1;
for i:=1 to form1.sgrid.RowCount do
   begin
        //Заполняем три массива:
        if edit1.Text<>'' then begin if form1.sgrid.Cells[cb1.ItemIndex,i]=edit1.Text then mas1[i]:=1 else mas1[i]:=0; end else mas1[i]:=1;
        if edit2.Text<>'' then begin if form1.sgrid.Cells[cb2.ItemIndex,i]=edit2.Text then mas2[i]:=1 else mas2[i]:=0; end else mas2[i]:=1;
        if edit3.Text<>'' then begin if form1.sgrid.Cells[cb3.ItemIndex,i]=edit3.Text then mas3[i]:=1 else mas3[i]:=0; end else mas3[i]:=1;
   end;
for i:=1 to form1.sgrid.RowCount do
   begin
        //Сравниваем три массива:
        if (mas1[i]=1) and (mas2[i]=1) and (mas3[i]=1) then begin masF[j]:=i; j:=j+1; end;
   end;
//Заносим массив в комбобокс1 на форме1:
for i:=1 to j do form1.ComboBox1.Items.Add(inttostr(masF[i]));

end;

end.
