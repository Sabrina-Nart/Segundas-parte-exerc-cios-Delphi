program Project1;

uses
  Vcl.Forms,
  Exercicio1Aula8Projeto in 'Exercicio1Aula8Projeto.pas' {Exercicio1Aula8};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TExercicio1Aula8, Exercicio1Aula8);
  Application.Run;
end.
