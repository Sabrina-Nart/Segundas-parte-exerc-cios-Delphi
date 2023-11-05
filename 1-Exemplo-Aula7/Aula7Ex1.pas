unit Aula7Ex1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfmlListBox = class(TForm)
    lbNomes: TListBox;
    lblSelecionado: TLabel;
    edtNome: TEdit;
    btnAdicionar: TButton;
    btnDel1: TButton;
   // btnDelete: TButton;
    btnUltimo: TBitBtn;
    Button1: TButton;

    procedure lbNomesClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnDel1Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  //  procedure edtDelUltimoClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmlListBox: TfmlListBox;

implementation

{$R *.dfm}
/////////////////////////////////////////////////////////////
procedure TfmlListBox.btnAdicionarClick(Sender: TObject);

begin
   lbNomes.Items.Add( edtNome.Text ); //Defult = Foco no componente = s� pode ser usado uma vez
   edtNome.Text:=' '; //Pode ser clear
   edtNome.SetFocus;//Foco no componente

end;
/////////////////////////////////////////////////////////
procedure TfmlListBox.btnDel1Click(Sender: TObject);

begin
   lbNomes.Items.Delete(0); //Deleta a posi��o que eu coloco aqui

end;
////////////////////////////////////////////////////////////
procedure TfmlListBox.btnDeleteClick(Sender: TObject);

begin
   if lbNomes.ItemIndex=-1 then  //caso n�o tenha escolhido um para deletar
      ShowMessage ('Selecione um item para apagar')
   else
      lbNomes.Items.Delete( lbNomes.ItemIndex ); //Deletar aquele que foi selecionado
end;
///////////////////////////////////////////////////////
procedure TfmlListBox.Button1Click(Sender: TObject);
begin
   lbNomes.Sorted:=True; //Ordem alf�betica

end;

procedure TfmlListBox.edtNomeChange(Sender: TObject);
begin

end;

/////////////////////////////////////////////////////////////
procedure TfmlListBox.FormClick(Sender: TObject);
//BitButton = Kind = algumas anima��es
var
  ultimo: integer;

begin
    ultimo:=lbNomes.Items.Count-1; //Quanto tem nele
    lbNomes.Items.Delete( ultimo ); //Count da a quantidade  = -1

end;

///////////////////////////////////////////////////////////
procedure TfmlListBox.lbNomesClick(Sender: TObject);

var
  posicao: integer;

begin
   posicao:=lbNomes.ItemIndex;

   if (posicao=-1) then
      ShowMessage ('Selecione um item')
   else
      lblSelecionado.Caption:='Selecionou ' + IntToStr(posicao); //Converter para colocar dentro de uma string

end;

end.
