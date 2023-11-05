unit Exercicio1Aula8Projeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TExercicio1Aula8 = class(TForm)
    edtNome: TEdit;
    cbNomes: TComboBox;
    btnMostrar: TButton;

    procedure btnMostrarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Exercicio1Aula8: TExercicio1Aula8;

implementation

{$R *.dfm}
//////////////////////////////////////////////////////////
procedure TExercicio1Aula8.btnMostrarClick(Sender: TObject);

var
  nome:string;

begin
  Nome:=edtNome.text;

   if cbNomes.ItemIndex=0 then
      Nome:=UpperCase ( Nome )
   else
      if cbNomes.ItemIndex=1 then
          Nome:=LowerCase ( Nome )
      else
         Begin //transformar a primeira letra - Ex 1 da apostila
            Nome:=LowerCase ( Nome );
            Nome[1]:=UpCase ( nome[1] );

         End;
    ShowMessage ( nome );

   //Posso deixar o ShowMesssage no final
   //Pode usar o case

end;
/////////////////////////////////////
end.

