unit Exercicio1Aula7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TlbExercicio1 = class(TForm)
    lbOrdemAlfa: TListBox;
    btnApagar: TButton;
    edtOrdemAlfa: TEdit;
    btnadicionar: TButton;
    procedure btnApagarClick(Sender: TObject);
    procedure btnadicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbExercicio1: TlbExercicio1;

implementation

{$R *.dfm}

procedure TlbExercicio1.btnadicionarClick(Sender: TObject);
 //SORTED = ADICIONA AUTOMÁTICO
begin //Trim = remove espaços em branco na direita  esquerda
   lbOrdemAlfa.Items.Add( UpperCase ( Trim (edtOrdemAlfa.Text) ) );
   edtOrdemAlfa.Clear;
   edtOrdemAlfa.SetFocus;

end;
//////////////////////////////////////////////////////////////
procedure TlbExercicio1.btnApagarClick(Sender: TObject);

begin
   lbordemAlfa.DeleteSelected; //Automátizado = apaga o selecionado = multiplos selecionados
   //lbOrdemAlfa.Items.Delete( lbOrdemAlfa.ItemIndex ) deleta só uma linha

end;

end.
