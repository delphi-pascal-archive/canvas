program Canvas;

uses
  Forms,
  Cv in 'Cv.pas' {Form1},
  Scrn in 'Scrn.pas' {Form2};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
