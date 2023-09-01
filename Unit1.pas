unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DB, ADODB, Buttons,
  Menus, Calendar, ShellAPI, Clipbrd, FileCtrl;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    Bevel1: TBevel;
    Bevel2: TBevel;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    BtClose: TSpeedButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    BtOpenDir: TSpeedButton;
    SGrid: TStringGrid;
    Calendar1: TCalendar;
    Timer1: TTimer;
    Memoinfo: TMemo;
    Memoini: TMemo;
    GMenu: TPopupMenu;
    GCopy: TMenuItem;
    N15: TMenuItem;
    Bevel3: TBevel;
    Bevel5: TBevel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    BtEdit: TSpeedButton;
    BtSee: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Bevel4: TBevel;
    SpeedButton9: TSpeedButton;
    ComboBox1: TComboBox;
    SpeedButton12: TSpeedButton;
    N2: TMenuItem;
    SpeedButton11: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure BtCloseClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BtOpenDirClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure BtSeeClick(Sender: TObject);
    procedure BtEditClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure GCopyClick(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGridDblClick(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

{ TForm1 }

//������� ������ ������ �� �����:
function ReadStringNo(const Filename: string; StrNo: Integer): string;
var
  F: TextFile;
begin
  AssignFile(F, Filename);
  try
    Reset(F);
    while not Eof(F) do
    begin
      if StrNo = -1
        then Break;
      Readln(F, Result);
      Dec(StrNo);
    end;
    if StrNo <> -1 then
      Result := '';
  finally
    CloseFile(F);
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
var
f: textfile;
temp, x, y, i: integer;
tempstr: string;
begin
//������� ���� ������:
DeleteFile('d:\tipograph\memoinfo.txt');
//��������� ���������:
Memoini.Lines.LoadFromFile('baseini.txt');
//������������ ���������:
// 0 - ������ ������ �������:
if memoini.Lines[0]='1' then btsee.Down:=true else btsee.Down:=false;
//�������� ����� ������
assignfile(f, 'books.g');
reset(f);
readln(f, temp);
SGrid.colcount := temp;
readln(f, temp);
SGrid.rowcount := temp;
for X := 0 to SGrid.colcount - 1 do
   for y := 0 to SGrid.rowcount - 1 do
   begin
     readln(F, tempstr);
     SGrid.cells[x, y] := tempstr;
   end;
closefile(f);
//������� � ������� ��������:
SGrid.Cells[0,0]:=' V';                      SGrid.ColWidths[0]:=20;
SGrid.Cells[1,0]:='���� �����';              SGrid.ColWidths[1]:=65;
SGrid.Cells[2,0]:='�����';                   SGrid.ColWidths[2]:=40;
SGrid.Cells[3,0]:='�����';                   SGrid.ColWidths[3]:=110;
SGrid.Cells[4,0]:='��������';                SGrid.ColWidths[4]:=300;
SGrid.Cells[5,0]:='��� �������';             SGrid.ColWidths[5]:=90;
SGrid.Cells[6,0]:='��������';                SGrid.ColWidths[6]:=55;
SGrid.Cells[7,0]:='��.���.�.';               SGrid.ColWidths[7]:=55;
SGrid.Cells[8,0]:='�����';                   SGrid.ColWidths[8]:=40;
SGrid.Cells[9,0]:='������';                  SGrid.ColWidths[9]:=50;
SGrid.Cells[10,0]:='����';                   SGrid.ColWidths[10]:=40;
SGrid.Cells[11,0]:='���';                    SGrid.ColWidths[11]:=100;
SGrid.Cells[12,0]:='���';                    SGrid.ColWidths[12]:=100;
SGrid.Cells[13,0]:='���.����';               SGrid.ColWidths[13]:=50;
SGrid.Cells[14,0]:='ISBN/ISSN';              SGrid.ColWidths[14]:=120;
SGrid.Cells[15,0]:='������.';                SGrid.ColWidths[15]:=60;
SGrid.Cells[16,0]:='����������';             SGrid.ColWidths[16]:=240;
SGrid.Cells[17,0]:='������ ��������';        SGrid.ColWidths[17]:=440;
SGrid.Cells[18,0]:='����';                   SGrid.ColWidths[18]:=340;
//������ ����� � �����
for i:=0 to sgrid.RowCount do SGrid.RowHeights[i-1]:=18;
//���������/����������� ���� ��������� �������:
if btsee.Down=false          then begin
                             sgrid.ColWidths[17]:=0;
                             sgrid.ColWidths[18]:=0;
                             end else begin
                             sgrid.ColWidths[17]:=440;
                             sgrid.ColWidths[18]:=340;
                                      end;
//����� �� ������ �������, ����� ������ ��� �� ������������:
SGrid.Row := SGrid.RowCount-1;
end;

procedure TForm1.BtCloseClick(Sender: TObject);
begin
close;
end;

procedure TForm1.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
bevel2.Left:=form1.Width-68;
btclose.Left:=form1.Width-54;
//btopendir.Left:=form1.Width-45;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
Addbook.show;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
f: textfile;
x, y: integer;
begin
//�������� �������������� �������, ���� ��� ����:
form1.SGrid.ColCount:=19;
//�������� ����� ��� �����:
if fileexists('d:\tipograph\memoinfo.txt') then DeleteFile('d:\tipograph\memoinfo.txt');
//���������� ����� ��������:
memoini.Lines.SaveToFile('baseini.txt');
//���������� ����� ������
assignfile(f, 'books.g');
rewrite(f);
writeln(f, SGrid.colcount);
writeln(f, SGrid.rowcount);
for X := 0 to SGrid.colcount - 1 do
   for y := 0 to SGrid.rowcount - 1 do
     writeln(F, SGrid.cells[x, y]);
closefile(f);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
i,j:integer;
begin
//���� ���������� ������� ������ (�������� �� ������������� ������ ��������), �� �������
if sgrid.Cells[4,SGrid.Selection.Top]='' then begin
                                         sgrid.Rows[SGrid.Selection.Top].Clear;
                                         sgrid.RowCount:=sgrid.RowCount-1;
                                         end else begin
if MessageDlg('������� �������?',
            mtConfirmation, [mbYes, mbNo], 0) = mrNo
            then sleep(1) else
                       begin
                       for i:=form1.SGrid.Selection.Top to form1.SGrid.RowCount-1 do
                       begin
                       for j:=0 to 18 do
                       form1.SGrid.Cells[j,i]:=form1.SGrid.Cells[j,i+1];
                       end;
                       form1.sgrid.RowCount:=form1.sgrid.RowCount-1;
end;
                                                  end;
end;

procedure TForm1.BtOpenDirClick(Sender: TObject);
begin
ShellExecute(Handle, 'open', PChar(sgrid.Cells[18,SGrid.Selection.Top]), PChar(''), PChar(nil), SW_SHOWNORMAL);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
//������� �������� � DBMemo:
DBMemo1.Lines.Text:=sgrid.Cells[17,SGrid.Selection.Top];  //SGrid.Selection.Top - ����� ���������� ������

//���������, ���� �� ���� �����:
if FileExists(sgrid.Cells[18,SGrid.Selection.Top]+'\info\A565.html') then label2.Enabled:=true else
if FileExists(sgrid.Cells[18,SGrid.Selection.Top]+'\info\A465.html') then label2.Enabled:=true else
if FileExists(sgrid.Cells[18,SGrid.Selection.Top]+'\info\A580.html') then label2.Enabled:=true else
if FileExists(sgrid.Cells[18,SGrid.Selection.Top]+'\info\A480.html') then label2.Enabled:=true else
label2.Enabled:=false;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
ShellExecute(Handle, 'Open', PChar(sgrid.Cells[18,SGrid.Selection.Top]+'\info\A565.html'), PChar(''), PChar(nil), SW_SHOWNORMAL);
ShellExecute(Handle, 'Open', PChar(sgrid.Cells[18,SGrid.Selection.Top]+'\info\A580.html'), PChar(''), PChar(nil), SW_SHOWNORMAL);
ShellExecute(Handle, 'Open', PChar(sgrid.Cells[18,SGrid.Selection.Top]+'\info\A465.html'), PChar(''), PChar(nil), SW_SHOWNORMAL);
ShellExecute(Handle, 'Open', PChar(sgrid.Cells[18,SGrid.Selection.Top]+'\info\A480.html'), PChar(''), PChar(nil), SW_SHOWNORMAL);
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
if SpeedButton10.Down=false then DeleteFile('d:\tipograph\memoinfo.txt')
else begin
memoinfo.Lines.Clear;
memoinfo.Lines.Add(SGrid.Cells[3,SGrid.Selection.Top]);  //0 - �����
memoinfo.Lines.Add(SGrid.Cells[4,SGrid.Selection.Top]);  //1 - ��������
memoinfo.Lines.Add(SGrid.Cells[5,SGrid.Selection.Top]);  //2 - ���
memoinfo.Lines.Add(SGrid.Cells[6,SGrid.Selection.Top]);  //3 - ��������
memoinfo.Lines.Add(SGrid.Cells[8,SGrid.Selection.Top]);  //4 - �����
memoinfo.Lines.Add(SGrid.Cells[9,SGrid.Selection.Top]);  //5 - ������
memoinfo.Lines.Add(SGrid.Cells[18,SGrid.Selection.Top]); //6 - ����
memoinfo.Lines.SaveToFile('d:\tipograph\memoinfo.txt');
     end;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
WinExec('EXPLORER /e, '+'"D:\Tipograph\Ssmeta\Smeta.exe"', SW_SHOW);
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
WinExec('EXPLORER /e, '+'"D:\Tipograph\mat\Project1.exe"', SW_SHOW);
end;

procedure TForm1.BtSeeClick(Sender: TObject);
begin
if memoini.Lines[0]='1' then memoini.Lines[0]:='0' else memoini.Lines[0]:='1';
//������ ��������/���������� ������� 17, 18:
if memoini.Lines[0]='0' then begin
                             sgrid.ColWidths[17]:=0;
                             sgrid.ColWidths[18]:=0;
                             end else begin
                             sgrid.ColWidths[17]:=440;
                             sgrid.ColWidths[18]:=340;
                                      end;

end;

procedure TForm1.BtEditClick(Sender: TObject);
begin
if btEdit.Down=true then sgrid.Options:=sgrid.Options+[goEditing] else
sgrid.Options:=sgrid.Options-[goEditing];
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
 var
   S: string;
   GRect: TGridRect;
   C, R: Integer;
 begin
   GRect := SGrid.Selection;
   S  := '';
   for R := GRect.Top to GRect.Bottom do
   begin
     for C := GRect.Left to GRect.Right do
     begin
       if C = GRect.Right then  S := S + (SGrid.Cells[C, R])
       else
         S := S + SGrid.Cells[C, R] + #9;
     end;
     S := S + #13#10;
 end;
   ClipBoard.AsText := S;
 end;

procedure TForm1.GCopyClick(Sender: TObject);
 var
   S: string;
   GRect: TGridRect;
   C, R: Integer;
 begin
   GRect := SGrid.Selection;
   S  := '';
   for R := GRect.Top to GRect.Bottom do
   begin
     for C := GRect.Left to GRect.Right do
     begin
       if C = GRect.Right then  S := S + (SGrid.Cells[C, R])
       else
         S := S + SGrid.Cells[C, R] + #9;
     end;
     S := S + #13#10;
 end;
   ClipBoard.AsText := S;
 end;

procedure TForm1.N15Click(Sender: TObject);
 var
   Grect: TGridRect;
   S, CS, F: string;
   L, R, C: Byte;
 begin
   GRect := SGrid.Selection;
   L := GRect.Left;
   R := GRect.Top;
   S := ClipBoard.AsText;
   R := R - 1;
   while Pos(#13, S) > 0 do
   begin
     R  := R + 1;
     C  := L - 1;
     CS := Copy(S, 1,Pos(#13, S));
     while Pos(#9, CS) > 0 do
     begin
       C := C + 1;
       if (C <= SGrid.ColCount - 1) and (R <= SGrid.RowCount - 1) then
         SGrid.Cells[C, R] := Copy(CS, 1,Pos(#9, CS) - 1);
       F := Copy(CS, 1,Pos(#9, CS) - 1);
       Delete(CS, 1,Pos(#9, CS));
     end;
     if (C <= SGrid.ColCount - 1) and (R <= SGrid.RowCount - 1) then
       SGrid.Cells[C + 1,R] := Copy(CS, 1,Pos(#13, CS) - 1);
     Delete(S, 1,Pos(#13, S));
     if Copy(S, 1,1) = #10 then
       Delete(S, 1,1);
   end;
 end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
var
TempList: TStringList;
i: Integer;
NewSel: TGridRect;
begin
if SGrid.Selection.Top=1 then exit else BEGIN
//����������� ������ �����
with SGrid do
   if (SGrid.Selection.Top in [0..RowCount - 1]) and (SGrid.Selection.Top-1 in [0..RowCount - 1]) then
   begin
     TempList := TStringList.Create;
     TempList.Assign(Rows[SGrid.Selection.Top]);
     if SGrid.Selection.Top > SGrid.Selection.Top-1 then
       for i := SGrid.Selection.Top downto SGrid.Selection.Top-1 + 1 do
         Rows[i].Assign(Rows[i - 1])
     else
       for i := SGrid.Selection.Top to SGrid.Selection.Top-1 - 1 do
         Rows[i].Assign(Rows[i + 1]);
     Rows[SGrid.Selection.Top-1].Assign(TempList);
     TempList.Free;
   end;
//��������� ������ ����� �����������:
begin
   NewSel.Left := SGrid.FixedCols;
   NewSel.Top := SGrid.Selection.Top-1;
   NewSel.Right := SGrid.ColCount - 1;
   NewSel.Bottom := SGrid.Selection.bottom-1;
   sgrid.Selection := NewSel;
                                  END;
end;
end;



procedure TForm1.SpeedButton4Click(Sender: TObject);
var
TempString: string;
i: Integer;
NewSel: TGridRect;
begin
if SGrid.Selection.Top=sgrid.RowCount-1 then exit else BEGIN
//����������� ������ ����
if (SGrid.Selection.Top in [0..SGrid.RowCount - 1]) and (SGrid.Selection.Top+1 in [0..SGrid.RowCount - 1]) then
begin
   TempString := SGrid.Rows[SGrid.Selection.Top].Text;
   SGrid.Rows[SGrid.Selection.Top].Assign(SGrid.Rows[SGrid.Selection.Top+1]);
   SGrid.Rows[SGrid.Selection.Top+1].Text := TempString;
end;
//��������� ������ ����� �����������:
begin
   NewSel.Left := SGrid.FixedCols;
   NewSel.Top := SGrid.Selection.Top+1;
   NewSel.Right := SGrid.ColCount-1;
   NewSel.Bottom := SGrid.Selection.bottom+1;
   sgrid.Selection := NewSel;
end;
                                        END;
end;




procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
if SearchForm.Visible=false then SearchForm.show else SearchForm.Close;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
about.Show;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
if speedbutton9.Down=true then colored.show else
SGrid.canvas.brush.Color := $00E6FFF8;
end;

procedure TForm1.SGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
tmpkvartal, kvartal:string;
begin
//����������� ��������:
tmpkvartal:=SGrid.Cells[1, ARow];
kvartal:=tmpkvartal[length(tmpkvartal)-6]+tmpkvartal[length(tmpkvartal)-5];
//�������� �� ���������:
if SGrid.Cells[1, ARow] <> '���� �����' then
if (kvartal = '01') or (kvartal = '02') or (kvartal = '03')
or (kvartal = '07') or (kvartal = '08') or (kvartal = '09') then
  begin
  sgrid.Canvas.Brush.Color := $00E6FFF8;
  sgrid.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2,
  sgrid.Cells[ACol, ARow]);
  end
else
  sgrid.Canvas.Brush.Color := $00D6F8F3;
  sgrid.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2,
  sgrid.Cells[ACol, ARow]);
//���� ���������:
   if ( gdSelected in State ) then
   with sgrid, Canvas do
   begin
      Brush.Color := $0092E8EF;
      font.Color:=clblue;
      FillRect( Rect );
      TextRect( Rect, Rect.Left+2, Rect.Top+2, Cells[ACol,ARow] );
   end;
end;

procedure TForm1.SGridDblClick(Sender: TObject);
begin
//�� �������� ������ ������������� ������:
if btEdit.Down=true then btEdit.Down:=false else btEdit.Down:=true;
btedit.Click;
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
var
i, sel : integer;
calday, calmonth:string;
begin
//���������� ������:
SGrid.RowCount := SGrid.RowCount + 1;
for i := 0 to sgrid.RowCount do SGrid.RowHeights[i - 1] := 18;
SGrid.Cells[1, SGrid.RowCount - 1] := '26.09.2012';           {����� �� ���� ������� ��� ������������� ��������}
//�������������� ����:
if Calendar1.Day < 10 then calday := '0' + floattostr(Calendar1.Day) else
   calday := floattostr(Calendar1.Day);
if Calendar1.Month < 10 then calmonth := '0' + floattostr(Calendar1.Month) else
   calmonth := floattostr(Calendar1.Month);
SGrid.Cells[1, SGrid.RowCount - 1] := calday + '.' + calmonth + '.' + floattostr(Calendar1.Year);
//�����������:
sel := SGrid.Selection.Top;
SGrid.Cells[0, SGrid.RowCount - 1] := SGrid.Cells[0, sel];    {�������� ���������� ������ �������}
for i := 2 to 18 do
SGrid.Cells[i, SGrid.RowCount - 1] := SGrid.Cells[i, sel];
ShowMessage('�����������!');
end;

procedure TForm1.N4Click(Sender: TObject);
begin
showmessage('� ������ Short ������� �� �������������');
end;

procedure TForm1.N6Click(Sender: TObject);
begin
Addbook.show;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
WinExec('EXPLORER /e, '+'"D:\Tipograph\mat\Project1.exe"', SW_SHOW);
end;

procedure TForm1.N9Click(Sender: TObject);
begin
WinExec('EXPLORER /e, '+'"D:\Tipograph\Ssmeta\Smeta.exe"', SW_SHOW);
end;

procedure TForm1.N2Click(Sender: TObject);
var
  calday, calmonth : string;
  backupdata : PAnsiChar;
begin
if Calendar1.Day < 10 then calday := '0' + floattostr(Calendar1.Day) else
   calday := floattostr(Calendar1.Day);
if Calendar1.Month < 10 then calmonth := '0' + floattostr(Calendar1.Month) else
   calmonth := floattostr(Calendar1.Month);
backupdata := pansichar('Backups\' + calday + '.' + calmonth + '.' + floattostr(Calendar1.Year) + '.g');

  if CopyFile('books.g', backupdata, true) then
     ShowMessage('���� ' + calday + '.' + calmonth + '.' + floattostr(Calendar1.Year) + '.g' + ' ������� ����������!')
   else
     ShowMessage('������! ��� �� ���: ' + IntToStr(GetLastError));
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
var
   tmp_patch, tmp_count : string;
   i : integer;
begin

// �������� ������������ �����:
if label2.Enabled = false then ShowMessage('� ���� ����� ��� �����');
if label2.Enabled = true
then
   begin
   // ����������� ���� � ����� � tmp_patch:
   if FileExists(sgrid.Cells[18,SGrid.Selection.Top]+'\info\A565.html') then tmp_patch := sgrid.Cells[18,SGrid.Selection.Top]+'\info\A565.html' else
   if FileExists(sgrid.Cells[18,SGrid.Selection.Top]+'\info\A465.html') then tmp_patch := sgrid.Cells[18,SGrid.Selection.Top]+'\info\A465.html' else
   if FileExists(sgrid.Cells[18,SGrid.Selection.Top]+'\info\A580.html') then tmp_patch := sgrid.Cells[18,SGrid.Selection.Top]+'\info\A580.html' else
   if FileExists(sgrid.Cells[18,SGrid.Selection.Top]+'\info\A480.html') then tmp_patch := sgrid.Cells[18,SGrid.Selection.Top]+'\info\A480.html';
   end
else exit;

if ReadStringNo(tmp_patch, 59) <> '</font>'
then
   begin
   ShowMessage('�������! ������ ����� �������� ����������, ������� ���� � ������� �� �������');
   exit;
   end;

tmp_count := ReadStringNo(tmp_patch, 57);

for i := 1 to length(tmp_count) do
   if tmp_count[i] = ' ' then
      begin
      ShowMessage('�������! ������ ����� �������� ����������, ������� ���� � ������� �� �������');
      tmp_count := '';
      exit;
      end;

for i := 1 to length(tmp_count) do
   if tmp_count[i] = '<' then
      begin
      delete(tmp_count, i, 4);
      break;
      end;

// ��������� ���� � �������:
SGrid.Cells[10,SGrid.Selection.Top] := tmp_count;

// ��������� ������� ���� ��������:
tmp_patch := '';
tmp_count := '';

end;

end.


