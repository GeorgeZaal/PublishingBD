program Project1_5;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {AddBook},
  Unit3 in 'Unit3.pas' {About},
  Unit5 in 'Unit5.pas' {Colored},
  Unit6 in 'Unit6.pas' {SearchForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAddBook, AddBook);
  Application.CreateForm(TAbout, About);
  Application.CreateForm(TColored, Colored);
  Application.CreateForm(TSearchForm, SearchForm);
  Application.Run;
end.
