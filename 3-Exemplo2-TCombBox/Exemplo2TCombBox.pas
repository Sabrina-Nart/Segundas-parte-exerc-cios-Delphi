unit Exemplo2TCombBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TExCombBox = class(TForm)
    cbCidade: TComboBox;
    btnAdicionar: TButton;
    btnDelete: TButton;

    procedure btnAdicionarClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExCombBox: TExCombBox;

implementation

{$R *.dfm}
/////////////////////////////////////////////////////////
procedure TExCombBox.btnAdicionarClick(Sender: TObject);

begin //Style = Tipos
   if (cbCidade.ItemIndex=-1) then
     Begin
       cbCidade.Items.Add( cbCidade.Text );
       cbCidade.ItemIndex:=cbCidade.Items.IndexOf( cbCidade.Text ); //IndexOf = Localiza se já existe = se não vai adicinar infinitamente

     end
   else
     ShowMessage ('A cidade já existe');
//cbCidade.Items.Add( cbCidade.Text ); //ComboBox = Edit e List a mesmo tempo

end;
////////////////////////////////////////////////////////
procedure TExCombBox.btnDeleteClick(Sender: TObject);

begin
   cbCidade.DeleteSelected; //Deleta o item selecionado

end;
/////////////////////////////////////////////////////////////
end.
