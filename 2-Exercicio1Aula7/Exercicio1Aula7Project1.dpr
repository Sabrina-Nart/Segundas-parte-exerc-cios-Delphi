program Exercicio1Aula7Project1;

uses
  Vcl.Forms,
  Exercicio1Aula7 in 'Exercicio1Aula7.pas' {lbExercicio1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TlbExercicio1, lbExercicio1);
  Application.Run;
end.
