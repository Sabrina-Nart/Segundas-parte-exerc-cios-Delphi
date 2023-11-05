program Exemplo1Ala8Projeto;

uses
  Vcl.Forms,
  Exemplo1Ala8 in 'Exemplo1Ala8.pas' {CombBoxExemplo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCombBoxExemplo, CombBoxExemplo);
  Application.Run;
end.
