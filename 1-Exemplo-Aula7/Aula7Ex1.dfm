object fmlListBox: TfmlListBox
  Left = 0
  Top = 0
  Caption = 'Teste ListBox'
  ClientHeight = 311
  ClientWidth = 517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClick = FormClick
  PixelsPerInch = 96
  TextHeight = 13
  object lblSelecionado: TLabel
    Left = 32
    Top = 264
    Width = 99
    Height = 13
    Caption = 'Nenhum Selecionado'
  end
  object lbNomes: TListBox
    Left = 32
    Top = 57
    Width = 209
    Height = 193
    ItemHeight = 13
    Items.Strings = (
      'Item 1'
      'Item 2'
      'Item 3'
      'Maria'
      'Ad'#227'o'
      'Carlos')
    TabOrder = 2
    OnClick = lbNomesClick
  end
  object edtNome: TEdit
    Left = 32
    Top = 8
    Width = 209
    Height = 21
    TabOrder = 0
    OnChange = edtNomeChange
  end
  object btnAdicionar: TButton
    Left = 263
    Top = 8
    Width = 98
    Height = 33
    Caption = 'Adicionar'
    Default = True
    TabOrder = 1
    OnClick = btnAdicionarClick
  end
  object btnDel1: TButton
    Left = 263
    Top = 57
    Width = 98
    Height = 32
    Caption = 'Deleta Primeiro'
    TabOrder = 3
    OnClick = btnDel1Click
  end
  object btnDelete: TButton
    Left = 263
    Top = 104
    Width = 98
    Height = 33
    Caption = 'Del.Selecionado'
    TabOrder = 4
    OnClick = btnDeleteClick
  end
  object btnUltimo: TBitBtn
    Left = 263
    Top = 152
    Width = 98
    Height = 33
    Caption = 'Del. Ultimo'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
  object Button1: TButton
    Left = 263
    Top = 200
    Width = 98
    Height = 33
    Caption = 'Ordem Alfab'#233'tica'
    TabOrder = 6
    OnClick = Button1Click
  end
end
