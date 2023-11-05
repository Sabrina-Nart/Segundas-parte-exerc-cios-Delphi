program Aula7Project1;

uses
  Vcl.Forms,
  Aula7Ex1 in 'Aula7Ex1.pas' {fmlListBox};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmlListBox, fmlListBox);
  Application.Run;
end.
