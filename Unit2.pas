unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Menus;

type
  TAddBook = class(TForm)
    GroupBox1: TGroupBox;
    LAvtor: TLabel;
    LSostavitel: TLabel;
    EAvtor: TEdit;
    EMName: TMemo;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    EPages: TLabeledEdit;
    ETiraz: TLabeledEdit;
    ECena: TLabeledEdit;
    Label2: TLabel;
    EFormat: TComboBox;
    EVid: TLabeledEdit;
    Elist: TLabeledEdit;
    EData: TLabeledEdit;
    EZakaz: TLabeledEdit;
    Label3: TLabel;
    EStatus: TComboBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    GroupBox3: TGroupBox;
    EBBK: TLabeledEdit;
    EUDK: TLabeledEdit;
    EAznak: TLabeledEdit;
    EISBN: TLabeledEdit;
    GroupBox4: TGroupBox;
    EPrim: TLabeledEdit;
    EDir: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    EFull: TMemo;
    Bevel3: TBevel;
    Bevel5: TBevel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Bevel6: TBevel;
    VidMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label6: TLabel;
    Label5: TLabel;
    N3: TMenuItem;
    N4: TMenuItem;
    DirMenu: TPopupMenu;
    DM: TMenuItem;
    FullMenu: TPopupMenu;
    N5: TMenuItem;
    UIMenu: TPopupMenu;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    Label7: TLabel;
    PrimMenu: TPopupMenu;
    N13: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure EDirContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DMClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure EZakazKeyPress(Sender: TObject; var Key: Char);
    procedure EPagesKeyPress(Sender: TObject; var Key: Char);
    procedure ETirazKeyPress(Sender: TObject; var Key: Char);
    procedure ElistKeyPress(Sender: TObject; var Key: Char);
    procedure EDataKeyPress(Sender: TObject; var Key: Char);
    procedure ECenaKeyPress(Sender: TObject; var Key: Char);
    procedure EVidKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EPagesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElistClick(Sender: TObject);
    procedure ElistEnter(Sender: TObject);
    procedure N13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddBook: TAddBook;

implementation

uses Unit1;

{$R *.dfm}


function RoundEx(chislo: double; Precision: Integer): string; //������� ���������� �����
var
  ChisloInStr: string;
  ChisloInCurr: currency;
begin
  ChisloInCurr := chislo;
  Str(ChisloInCurr: 20: Precision, ChisloInStr);
  ChisloInStr[Pos('.', ChisloInStr)] := ',';
  RoundEx := Trim(ChisloInStr);
end;

procedure TAddBook.FormShow(Sender: TObject);
var
calday,calmonth:string;
i,max_index,max_num:integer;
begin
form1.Enabled:=false;
eavtor.SetFocus;
//�������� �����:
EAvtor.Clear;           EMName.Lines.Clear;
EVid.Clear;             EData.Clear;
EZakaz.Clear;           EFull.Lines.Clear;
Epages.Clear;           ETiraz.Clear;
EList.Clear;            ECena.Clear;
EUDK.Clear;             EBBk.Clear;
EAznak.Clear;           EISBN.Clear;
EPrim.Clear;            EDir.Clear;
//-------------------------------------------------------------
//�������������� ���� ����������:
if DirectoryExists('D:\BOOKS\')=false                         //!!!�������� "������ ��� ���������� ����������"
then CreateDir('D:\BOOKS');
//����� � �����:
if DirectoryExists('D:\BOOKS\'+floattostr(form1.calendar1.Year))=false
then CreateDir('D:\BOOKS\'+floattostr(form1.calendar1.Year));
//����� � �������:
if form1.calendar1.Month=1 then form1.calendar1.Hint:='01 ������';
if form1.calendar1.Month=2 then form1.calendar1.Hint:='02 �������';
if form1.calendar1.Month=3 then form1.calendar1.Hint:='03 ����';
if form1.calendar1.Month=4 then form1.calendar1.Hint:='04 ������';
if form1.calendar1.Month=5 then form1.calendar1.Hint:='05 ���';
if form1.calendar1.Month=6 then form1.calendar1.Hint:='06 ����';
if form1.calendar1.Month=7 then form1.calendar1.Hint:='07 ����';
if form1.calendar1.Month=8 then form1.calendar1.Hint:='08 ������';
if form1.calendar1.Month=9 then form1.calendar1.Hint:='09 ��������';
if form1.calendar1.Month=10 then form1.calendar1.Hint:='10 �������';
if form1.calendar1.Month=11 then form1.calendar1.Hint:='11 ������';
if form1.calendar1.Month=12 then form1.calendar1.Hint:='12 �������';
if DirectoryExists('D:\BOOKS\'+floattostr(form1.calendar1.Year)+'\'+form1.calendar1.Hint)=false
then CreateDir('D:\BOOKS\'+floattostr(form1.calendar1.Year)+'\'+form1.calendar1.Hint);
//
EDir.Text:='D:\BOOKS\'+floattostr(form1.calendar1.Year)+'\'+form1.calendar1.Hint+'\';
//-------------------------------------------------------------
//�������������� ����:
if form1.Calendar1.Day<10 then calday:='0'+floattostr(form1.Calendar1.Day) else
   calday:=floattostr(form1.Calendar1.Day);
if form1.Calendar1.Month<10 then calmonth:='0'+floattostr(form1.Calendar1.Month) else
   calmonth:=floattostr(form1.Calendar1.Month);
Edata.Text:=calday+'.'+calmonth+'.'+floattostr(form1.Calendar1.Year);
//�������������� ������:
max_index:=1;
max_num:=strtoint(form1.SGrid.Cells[2,1]);
for i:=2 to form1.SGrid.RowCount-1 do
            if strtoint(form1.SGrid.Cells[2,i]) > max_num then begin
               max_index:=i;
               max_num:=strtoint(form1.SGrid.Cells[2,i]);
            end;
addbook.EZakaz.Text:=inttostr(max_num+1);
end;

procedure TAddBook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Enabled:=true;
end;

procedure TAddBook.Label5Click(Sender: TObject);
begin
N5.Click;   N6.Click;   DM.Click;
end;

procedure TAddBook.Button2Click(Sender: TObject);
var
s, ss:string;
i, n:integer;

begin
//������� ������ ������� �� memo's:
  s := '';
  for i:=0 to EMName.Lines.Count-1 do
    s := s + EMName.Lines.Strings[i];
  EMName.Lines.Text := s;
i:=0;
  s := '';
  for i:=0 to EFull.Lines.Count-1 do
    s := s + EFull.Lines.Strings[i];
  EFull.Lines.Text := s;
i:=0;
//������� ������ ������:
for i:=0 to EMName.Lines.Count-1 do
if (EMName.Lines[i]='') or (EMName.Lines[i]=' ') or (EMName.Lines[i]='  ') then
EMName.Lines.Delete(i);
i:=0;
for i:=0 to EFull.Lines.Count-1 do
if (EFull.Lines[i]='') or (EFull.Lines[i]=' ') or (EFull.Lines[i]='  ') then
EFull.Lines.Delete(i);
i:=0;
//��� ���:
with EFull do
    begin
    SelStart:=GetWindowTextLength(Handle)-2;
    SelLength:=2;
    if SelText = #13#10 then SelText:=''
    else
    SelStart:=GetWindowTextLength(Handle);
    end;
with EMName do
    begin
    SelStart:=GetWindowTextLength(Handle)-2;
    SelLength:=2;
    if SelText = #13#10 then SelText:=''
    else
    SelStart:=GetWindowTextLength(Handle);
    end;
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! �������, ����� ������� ���������� ������ �� ���� ������!!!!!!!!!!!!!!!!!
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! � ����������� ������ �� EDIR.TEXT !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//���������� ������ � �����:
form1.SGrid.RowCount:=form1.SGrid.RowCount+1;

//���������� �����: --------------------------------------

  //���� �����:
  form1.SGrid.Cells[1,form1.SGrid.RowCount-1]:=edata.Text;
  //�����:
  form1.SGrid.Cells[2,form1.SGrid.RowCount-1]:=ezakaz.Text;
  //�����:
  form1.SGrid.Cells[3,form1.SGrid.RowCount-1]:=eavtor.Text;
  //��������:
  form1.SGrid.Cells[4,form1.SGrid.RowCount-1]:=eMname.Lines.Text;
  //��� �������:
  form1.SGrid.Cells[5,form1.SGrid.RowCount-1]:=evid.Text;
  //���������� �������:
  form1.SGrid.Cells[6,form1.SGrid.RowCount-1]:=epages.Text;
  //��.���.�.:
  form1.SGrid.Cells[7,form1.SGrid.RowCount-1]:=elist.Text;
  //�����:
  form1.SGrid.Cells[8,form1.SGrid.RowCount-1]:=etiraz.Text;
  //������:
  form1.SGrid.Cells[9,form1.SGrid.RowCount-1]:=eformat.Text;
  //����:
  form1.SGrid.Cells[10,form1.SGrid.RowCount-1]:=ecena.Text;
  //���:
  form1.SGrid.Cells[11,form1.SGrid.RowCount-1]:=eudk.Text;
  //���:
  form1.SGrid.Cells[12,form1.SGrid.RowCount-1]:=ebbk.Text;
  //��������� ����:
  form1.SGrid.Cells[13,form1.SGrid.RowCount-1]:=eAznak.Text;
  //ISBN/ISSN:
  form1.SGrid.Cells[14,form1.SGrid.RowCount-1]:=eisbn.Text;
  //������:
  form1.SGrid.Cells[15,form1.SGrid.RowCount-1]:=estatus.Text;
  //����������:
  form1.SGrid.Cells[16,form1.SGrid.RowCount-1]:=eprim.Text;
  //������ ��������:
                //�������������� ����, ��� �� ���������:
                if EFull.Lines.Text='' then N5.Click;
  form1.SGrid.Cells[17,form1.SGrid.RowCount-1]:=efull.Lines.Text;
                //�������������� ����, ��� �� ���������:
                if EDir.Text='D:\BOOKS\'+floattostr(form1.calendar1.Year)+'\'+form1.calendar1.Hint+'\' then
                DM.Click;
  //����:
  form1.SGrid.Cells[18,form1.SGrid.RowCount-1]:=edir.Text;
//--------------------------------------------------------

//�������� ����������:
CreateDir(edir.Text); CreateDir(edir.Text+'\'+'book'); CreateDir(edir.Text+'\'+'info');

//������ ����� � �����
for i:=0 to form1.sgrid.RowCount do form1.SGrid.RowHeights[i-1]:=18;
//��������
close;
end;

procedure TAddBook.N1Click(Sender: TObject);
begin
evid.Text:=addbook.N1.Caption;
end;

procedure TAddBook.N2Click(Sender: TObject);
begin
evid.Text:=addbook.N2.Caption;
end;

procedure TAddBook.EDirContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
//���� ������: �����, �����, ��������
dm.Caption:=EDir.Text+Ezakaz.Text+' '+eavtor.Text+' - '+emname.Lines.Text;
end;

procedure TAddBook.DMClick(Sender: TObject);
var
emna : string;
begin
emna := emname.Lines.Text;
//������ ������ ������� �� ������ ������:
    emna := StringReplace(emna,'<','',[rfReplaceAll]);
    emna := StringReplace(emna,'>','',[rfReplaceAll]);
    emna := StringReplace(emna,':','',[rfReplaceAll]);
    emna := StringReplace(emna,'"','',[rfReplaceAll]);
    emna := StringReplace(emna,'/','',[rfReplaceAll]);
    emna := StringReplace(emna,'\','',[rfReplaceAll]);
    emna := StringReplace(emna,'|','',[rfReplaceAll]);
    emna := StringReplace(emna,'?','',[rfReplaceAll]);
    emna := StringReplace(emna,'*','',[rfReplaceAll]);
Edir.Text:=EDir.Text+Ezakaz.Text+' '+eavtor.Text+' - '+emna;
//� ������ ������� �������:
Edir.Text := StringReplace(Edir.Text,'  ',' ',[rfReplaceAll]);
end;

procedure TAddBook.N5Click(Sender: TObject);
var
zpt,i, i2, j, c:integer;
av2memo, k, s, stt, str, str2, famil, init:string;
begin
elist.Font.Color:=clblack;
//������� ������� �� ������:
 k:=eavtor.Text;
 i:=Length(k);
 for i:=1 to i do begin
 j:=pos(',',k);
 Delete(k,j,1);
 eavtor.Text:=k;
 end;
//������� ������ ������� �� EMName
  s := '';
  for i:=0 to EMName.Lines.Count-1 do
    s := s + EMName.Lines.Strings[i] + ' ';
  EMName.Lines.Text := s;
i:=0;
//                       ����������������� ��������:
//����������� ������� � ���������:
if eavtor.Text<>'' then begin
init:=eavtor.Text[length(eavtor.Text)-4]+
      eavtor.Text[length(eavtor.Text)-3]+
      eavtor.Text[length(eavtor.Text)-2]+
      eavtor.Text[length(eavtor.Text)-1]+
      eavtor.Text[length(eavtor.Text)];
for i:=1 to length(eavtor.Text)-6 do
famil:=famil+eavtor.Text[i];
//av2memo:
av2memo:=eavtor.Text;
zpt:=length(eavtor.Text);
insert(',',av2memo, zpt-5);
                        end;
//��������� � ����:
EFull.Lines.Clear;
EFull.Lines[0]:=(av2memo{Eavtor.Text} +' '+ emname.Lines.Text+': '+evid.Text);
if eavtor.Text<>'' then
EFull.Lines[0]:=EFull.Lines[0]+' / '+
init+' '+famil+'. - ������������: ���-�� ����, '+floattostr(form1.calendar1.Year)+'. - '+epages.Text+ ' �.'
                   else
EFull.Lines[0]:=EFull.Lines[0]+
init+famil+'. - ������������: ���-�� ����, '+floattostr(form1.calendar1.Year)+'. - '+epages.Text+ ' �.';
//������� ������ �������:
   i:=0; c := 0;
   str := efull.Lines.Text;              // ������� ������ ������ ������� ������ (���� �� ����)
   if str[1]=' ' then delete(str,1,1);   // ������� ��� ������ ������� � ������
   for i := 1 to Length(str) do
     begin
     stt := copy(str, i, 1);
     if (stt = ' ') and (c >= 1) then
         begin
         str2 := str2;
         c := c + 1;
         end
         else if (stt = ' ') and (c = 0) then
              begin
              c := c + 1;
              str2 := str2 + stt;
              end
              else if (stt <> ' ') then
                   begin
                   c := 0;
                   str2 := str2 + stt;
                   end
     end;                                // ������� ������ � ����� ������
   i2:=length(str2);
   if str2[i2]=' ' then delete(str2,i2,1);
   efull.Lines.Text := str2;

end;

procedure TAddBook.Button4Click(Sender: TObject);
begin
close;
end;

procedure TAddBook.N6Click(Sender: TObject);
var
uchizd:real;
begin
elist.Font.Color:=clblack;
//������-������������ �����:
if EFormat.Text='A5' then uchizd:=(strtoint(EPages.Text) * 0.93) / 16;
if EFormat.Text='A4' then uchizd:=(strtoint(EPages.Text) * 0.93) / 8;
Elist.Text:=floattostr(uchizd);
Elist.Text := RoundEx(StrToFloat(Elist.Text), 2);
end;

procedure TAddBook.N3Click(Sender: TObject);
begin
evid.Text:=addbook.N3.Caption;
end;

procedure TAddBook.N4Click(Sender: TObject);
begin
evid.Text:=addbook.N4.Caption;
end;

procedure TAddBook.N9Click(Sender: TObject);
begin
evid.Text:=addbook.N9.Caption;
end;

procedure TAddBook.N10Click(Sender: TObject);
begin
evid.Text:=addbook.N10.Caption;
end;

procedure TAddBook.N12Click(Sender: TObject);
begin
evid.Text:=addbook.N12.Caption;
end;

procedure TAddBook.N7Click(Sender: TObject);
begin
evid.Text:=addbook.N7.Caption;
end;

procedure TAddBook.N11Click(Sender: TObject);
begin
evid.Text:=addbook.N11.Caption;
end;

procedure TAddBook.N8Click(Sender: TObject);
begin
evid.Text:=addbook.N8.Caption;
end;

procedure TAddBook.EZakazKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#8,'0'..'9']) then key:=#0;                       //������ �����
end;

procedure TAddBook.EPagesKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#8,'0'..'9']) then key:=#0;                       //������ �����
end;

procedure TAddBook.ETirazKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#8,'0'..'9']) then key:=#0;                       //������ �����
end;

procedure TAddBook.ElistKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#8,'0'..'9',',']) then key:=#0;         //������ ����� � �������
end;

procedure TAddBook.EDataKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#8,'0'..'9','.']) then key:=#0;           //������ ����� � �����
end;

procedure TAddBook.ECenaKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#8,'0'..'9',',']) then key:=#0;         //������ ����� � �������
end;

procedure TAddBook.EVidKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//�������� � ������ "��� �������"
if evid.Text='�' then begin evid.Text:='�������.';
                            evid.SelStart:=1;
                            evid.SelLength:=length(evid.Text);
                      end;
if evid.Text='�' then begin evid.Text:='���. ���������';
                            evid.SelStart:=1;
                            evid.SelLength:=length(evid.Text);
                      end;
if evid.Text='�' then begin evid.Text:='�����. ��������';
                            evid.SelStart:=1;
                            evid.SelLength:=length(evid.Text);
                      end;
if evid.Text='��' then begin evid.Text:='����������';
                            evid.SelStart:=1;
                            evid.SelLength:=length(evid.Text);
                      end;
if evid.Text='�' then begin evid.Text:='���������';
                            evid.SelStart:=1;
                            evid.SelLength:=length(evid.Text);
                      end;
if evid.Text='�' then begin evid.Text:='������� ����������';
                            evid.SelStart:=1;
                            evid.SelLength:=length(evid.Text);
                      end;
if evid.Text='�' then begin evid.Text:='�������';
                            evid.SelStart:=1;
                            evid.SelLength:=length(evid.Text);
                      end;
if evid.Text='��' then begin evid.Text:='����. �������';
                            evid.SelStart:=2;
                            evid.SelLength:=length(evid.Text);
                      end;
if evid.Text='����.-' then begin evid.Text:='����.-�����. �������';
                            evid.SelStart:=7;
                            evid.SelLength:=length(evid.Text);
                      end;
if evid.Text='�' then begin evid.Text:='�����������';
                            evid.SelStart:=1;
                            evid.SelLength:=length(evid.Text);
                      end;
end;

procedure TAddBook.EPagesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
                      uchizd:real;
begin
elist.Font.Color:=clsilver;
if EFormat.Text='A5' then begin
if epages.Text<>'' then begin
                        uchizd:=(strtoint(EPages.Text) * 0.93) / 16;
                        Elist.Text:=floattostr(uchizd);
                        Elist.Text := RoundEx(StrToFloat(Elist.Text), 2);
                        end;
                          end;
if EFormat.Text='A4' then begin
if epages.Text<>'' then begin
                        uchizd:=(strtoint(EPages.Text) * 0.93) / 8;
                        Elist.Text:=floattostr(uchizd);
                        Elist.Text := RoundEx(StrToFloat(Elist.Text), 2);
                        end;
                          end;
end;


procedure TAddBook.ElistClick(Sender: TObject);
begin
elist.Font.Color:=clblack;
end;

procedure TAddBook.ElistEnter(Sender: TObject);
begin
elist.Font.Color:=clblack;
end;

procedure TAddBook.N13Click(Sender: TObject);
begin
EPrim.Text := '������ �� ' + EPrim.Text;
end;

end.
