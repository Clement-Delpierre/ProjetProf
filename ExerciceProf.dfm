object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 393
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = Initialisation
  PixelsPerInch = 96
  TextHeight = 13
  object fenetre_liste: TListView
    Left = 16
    Top = 50
    Width = 202
    Height = 130
    Columns = <
      item
        Alignment = taCenter
        AutoSize = True
        Caption = 'nom'
      end
      item
        Alignment = taCenter
        AutoSize = True
        Caption = 'prenom'
      end>
    TabOrder = 0
    ViewStyle = vsReport
    OnClick = SelectionChange
  end
  object edit_prenom: TEdit
    Left = 237
    Top = 50
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 1
  end
  object edit_nom: TEdit
    Left = 237
    Top = 85
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 2
  end
  object edit_moyenne: TEdit
    Left = 237
    Top = 120
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 3
  end
  object edit_telephone: TEdit
    Left = 237
    Top = 155
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 4
  end
  object btn_ajout: TButton
    Left = 378
    Top = 50
    Width = 49
    Height = 25
    Caption = '+'
    TabOrder = 5
    OnClick = btn_ajoutClick
  end
  object btn_retrait: TButton
    Left = 378
    Top = 85
    Width = 49
    Height = 25
    Caption = '-'
    TabOrder = 6
    OnClick = btn_retraitClick
  end
  object btn_sauvegarde: TButton
    Left = 378
    Top = 155
    Width = 49
    Height = 25
    Caption = 'save'
    TabOrder = 7
    OnClick = btn_sauvegardeClick
  end
  object btn_edit: TButton
    Left = 378
    Top = 120
    Width = 49
    Height = 25
    Caption = 'edit'
    TabOrder = 8
    OnClick = btn_editClick
  end
end
