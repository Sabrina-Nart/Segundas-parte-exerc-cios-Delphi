object Exercicio1Aula8: TExercicio1Aula8
  Left = 0
  Top = 0
  Caption = 'Exercicio1Aula8'
  ClientHeight = 257
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtNome: TEdit
    Left = 32
    Top = 24
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object cbNomes: TComboBox
    Left = 32
    Top = 72
    Width = 337
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    Items.Strings = (
      'Mai'#250'scula'
      'MIn'#250'scula'
      'Primeira letra mai'#250'cula')
  end
  object btnMostrar: TButton
    Left = 32
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = btnMostrarClick
  end
end
