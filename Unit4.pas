unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TAddCol = class(TForm)
    GroupBox1: TGroupBox;
    EColA: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    EDey1: TComboBox;
    Label3: TLabel;
    EColB: TComboBox;
    Label4: TLabel;
    Edey2: TComboBox;
    Label5: TLabel;
    EZnac: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label6: TLabel;
    ENameCol: TEdit;
    CheckBox1: TCheckBox;
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
  AddCol: TAddCol;

implementation

uses Unit1;

{$R *.dfm}

function RoundEx(chislo: double; Precision: Integer): string; //Функция округления числа
var
  ChisloInStr: string;
  ChisloInCurr: currency;
begin
  ChisloInCurr := chislo;
  Str(ChisloInCurr: 20: Precision, ChisloInStr);
  ChisloInStr[Pos('.', ChisloInStr)] := ',';
  RoundEx := Trim(ChisloInStr);
end;

procedure TAddCol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.enabled:=true;
end;

procedure TAddCol.FormShow(Sender: TObject);
var
i:integer;
dlina:string;
begin
form1.enabled:=false;
//Загрузка в EColA и EColB колонок с сетки
for i:=0 to form1.sgrid.ColCount-1 do begin
                                   EColA.Items.Add(form1.sgrid.Cells[i,0]);
                                   EColB.Items.Add(form1.sgrid.Cells[i,0]);
                                   EColA.ItemIndex:=0;
                                   EColB.ItemIndex:=0;
                                   end;
end;

procedure TAddCol.Button2Click(Sender: TObject);
begin
close;
end;

procedure TAddCol.Button1Click(Sender: TObject);
var
i:integer;
rez:extended;
begin
//Создание колонки (девятьнадцатая):
form1.SGrid.ColCount:=20;
form1.SGrid.Cells[19,0]:=ENamecol.Text;
form1.SGrid.ColWidths[19]:=length(ENameCol.Text)*8;
for i:=1 to form1.sgrid.RowCount-1 do begin
                     rez:=strtofloat(form1.SGrid.Cells[ecola.ItemIndex,i]);
                     if edey1.Text='+' then rez:=rez + strtofloat(form1.SGrid.Cells[ecolb.ItemIndex,i]);
                     if edey1.Text='-' then rez:=rez - strtofloat(form1.SGrid.Cells[ecolb.ItemIndex,i]);
                     if edey1.Text='*' then rez:=rez * strtofloat(form1.SGrid.Cells[ecolb.ItemIndex,i]);
                     if edey1.Text='/' then rez:=rez / strtofloat(form1.SGrid.Cells[ecolb.ItemIndex,i]);
                     if EZnac.text<>'' then begin
                        if edey2.Text='+' then rez:=rez + strtofloat(EZnac.text);
                        if edey2.Text='-' then rez:=rez - strtofloat(EZnac.text);
                        if edey2.Text='*' then rez:=rez * strtofloat(EZnac.text);
                        if edey2.Text='/' then rez:=rez / strtofloat(EZnac.text);
                                            end;
            if checkbox1.Checked=true then form1.SGrid.Cells[19,i]:=RoundEx(rez, 2)
            else form1.SGrid.Cells[19,i]:=floattostr(rez);
                                      end;
close;
end;

end.
