object Form1: TForm1
  Left = 0
  Top = 0
  Anchors = [akTop]
  Caption = 'Form1'
  ClientHeight = 351
  ClientWidth = 648
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
    Left = 32
    Top = 88
    Width = 314
    Height = 209
    Columns = <
      item
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
    Left = 365
    Top = 88
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 1
  end
  object edit_nom: TEdit
    Left = 365
    Top = 123
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 2
  end
  object edit_moyenne: TEdit
    Left = 365
    Top = 158
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 3
  end
  object edit_telephone: TEdit
    Left = 365
    Top = 193
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 4
  end
  object btn_ajout: TButton
    Left = 506
    Top = 88
    Width = 49
    Height = 25
    Caption = '+'
    TabOrder = 5
    OnClick = btn_ajoutClick
  end
  object btn_retrait: TButton
    Left = 506
    Top = 123
    Width = 49
    Height = 25
    Caption = '-'
    TabOrder = 6
    OnClick = btn_retraitClick
  end
  object btn_sauvegarde: TButton
    Left = 506
    Top = 193
    Width = 49
    Height = 25
    Caption = 'save'
    TabOrder = 7
    OnClick = btn_sauvegardeClick
  end
  object btn_edit: TButton
    Left = 506
    Top = 158
    Width = 49
    Height = 25
    Caption = 'edit'
    TabOrder = 8
    OnClick = btn_editClick
  end
end