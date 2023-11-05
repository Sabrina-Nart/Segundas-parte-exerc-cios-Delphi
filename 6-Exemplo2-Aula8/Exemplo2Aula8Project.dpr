program Exemplo2Aula8Project;

uses
  Vcl.Forms,
  Exemplo2Aula8 in 'Exemplo2Aula8.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
