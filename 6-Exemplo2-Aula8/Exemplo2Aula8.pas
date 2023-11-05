unit Exemplo2Aula8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    cbAceito: TCheckBox;
    MemoTermos: TMemo;
    btnFinalizar: TButton;

    procedure btnFinalizarClick(Sender: TObject);
    procedure cbAceitoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
///////////////////////////////////////////////////////////
procedure TForm1.btnFinalizarClick(Sender: TObject);

begin //Fecha s� se aceitar
   if cbAceito.Checked then //Tipo booleana - Checked=true = redundancia
      Close    //j� tr�s o verdadeiro ou falso
   else
      ShowMessage ('Voc� deve aceitar os termos para continuar');
end;
/////////////////////////////////////////////////////////////////
procedure TForm1.cbAceitoClick(Sender: TObject);

begin
   { if CbAceito.Checked then  //ativa e desativa o bot�o
       btnFinalizar.Enabled:=True //s� se aceitar ativa
    else
       btnFinalizar.Enabled:=False; }

    btnFinalizar.Enabled := CbAceito.Checked; //Encurtar o processo de cima
                         //True ou False que j� est� aqui e coloca no Enabled
end;
/////////////////////////////////////////////////////////////////
end.
