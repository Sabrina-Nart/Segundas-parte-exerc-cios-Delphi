unit Exemplo1Ala8;

interface  //DropDownList = fica s� com aquela lista - n�o pode adicionar
          //Items = string = colocar op��es //ItemIndex = escolo o foco

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCombBoxExemplo = class(TForm)
    cbEstadoCombBox: TComboBox;
    cbCidade: TComboBox;
    btnAdicionar: TButton;
    btnApagarCidade: TButton;

    procedure btnAdicionarClick(Sender: TObject);
    procedure btnApagarCidadeClick(Sender: TObject);
    procedure cbEstadoCombBoxChange(Sender: TObject);
    procedure cbCidadeChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CombBoxExemplo: TCombBoxExemplo;

implementation

{$R *.dfm}
//////////////////////////////////////////////////////
procedure TCombBoxExemplo.btnAdicionarClick(Sender: TObject);

begin
    if (cbCidade.ItemIndex<>-1) then //se for diferete ele j� est� na lista
      ShowMessage ('A cidade j� est� na lista')
    else
       Begin
          CbCidade.Items.Add ( cbCidade.Text );  //pega do texto que foi digitado e coloca na cidade = adiciona
          cbCidade.ItemIndex := cbCidade.Items.IndexOf ( cbCidade.Text );
          //IndexOf procura dentro daquela lista

       End;

end;
////////////////////////////////////////////////////////////////////
procedure TCombBoxExemplo.btnApagarCidadeClick(Sender: TObject);

begin
    cbCidade.DeleteSelected; //Apaga o que foi selecionado

end;
////////////////////////////////////////////////////////////
procedure TCombBoxExemplo.cbCidadeChange(Sender: TObject);

begin
   ShowMessage ('Voc� selecionou ' +cbCidade.Text);
   //Na hora de trocar, aparece o nome que foi selecionado

end;
////////////////////////////////////////////////////////////////
procedure TCombBoxExemplo.cbEstadoCombBoxChange(Sender: TObject);

begin  //Change = altera��o
    if cbEstadoCombBox.Text='SC' then //Muda
       Begin
          cbCidade.Items.Clear;
          cbCidade.Items.Add('Crici�ma');
          cbCidade.Items.Add('Rinc�o');
       End
    else
       If cbEstadoCombBox.Text='RS' then
          Begin
              cbCidade.Items.Clear;
              cbCidade.Items.Add('Torres');
              cbCidade.Items.Add('Porto Alegre');
          End;

end;
/////////////////////////////////////////////////////////////////////
end.
