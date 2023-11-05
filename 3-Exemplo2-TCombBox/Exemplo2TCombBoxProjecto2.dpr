program Exemplo2TCombBoxProjecto2;

uses
  Vcl.Forms,
  Exemplo2TCombBox in 'Exemplo2TCombBox.pas' {ExCombBox};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TExCombBox, ExCombBox);
  Application.Run;
end.
