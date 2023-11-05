object lbExercicio1: TlbExercicio1
  Left = 0
  Top = 0
  Caption = 'lbExercicio1'
  ClientHeight = 317
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbOrdemAlfa: TListBox
    Left = 33
    Top = 96
    Width = 272
    Height = 169
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
  end
  object btnApagar: TButton
    Left = 41
    Top = 284
    Width = 264
    Height = 25
    Caption = 'Apagar Selecionado'
    TabOrder = 1
    OnClick = btnApagarClick
  end
  object edtOrdemAlfa: TEdit
    Left = 33
    Top = 8
    Width = 288
    Height = 21
    TabOrder = 2
  end
  object btnadicionar: TButton
    Left = 33
    Top = 48
    Width = 280
    Height = 25
    Caption = 'Adicionar'
    Default = True
    TabOrder = 3
    OnClick = btnadicionarClick
  end
end
