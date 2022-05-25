unit ExerciceProf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, System.Generics.Collections;

type
  TEleve = class
    Fnom : string;
    Fprenom : string;
    Fmoyenne : string;
    Ftelephone : string;
    constructor Create;
  end;

  TProfesseur = class
    Fnom : string;
    Fmatiere : string;
    constructor Create(nom, matiere : string);
  end;

  TClasse = class(TObjectList<TEleve>)
    Fnom_classe : string;
  end;

  TForm1 = class(TForm)
    fenetre_liste: TListView;
    edit_prenom: TEdit;
    edit_nom: TEdit;
    edit_moyenne: TEdit;
    edit_telephone: TEdit;
    btn_ajout: TButton;
    btn_retrait: TButton;
    btn_sauvegarde: TButton;
    btn_edit: TButton;
    procedure Initialisation(Sender: TObject);
    procedure btn_ajoutClick(Sender: TObject);
    procedure btn_retraitClick(Sender: TObject);
    procedure btn_sauvegardeClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure SelectionChange(Sender: TObject);
  private
    Feleves : TClasse;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Initialisation(Sender: TObject);
begin
  self.Feleves := TClasse.Create;
end;

constructor TEleve.Create;
begin
  Fnom := Form1.edit_nom.Text;
  Fprenom := Form1.edit_prenom.Text;
  Fmoyenne := Form1.edit_moyenne.Text;
  Ftelephone := Form1.edit_telephone.Text;
end;

constructor TProfesseur.Create(nom, matiere : string);
begin
  Fnom := nom;
  Fmatiere := matiere;
end;

procedure TForm1.SelectionChange(Sender: TObject);
var
  i : Integer;
begin
  if Self.fenetre_liste.Selected <> nil then
  begin
    i := Self.fenetre_liste.Selected.Index;

    Form1.edit_nom.Text := Self.Feleves.Items[i].Fnom;
    Form1.edit_prenom.Text := Self.Feleves.Items[i].Fprenom;
    Form1.edit_moyenne.Text := Self.Feleves.Items[i].Fmoyenne;
    Form1.edit_telephone.Text := Self.Feleves.Items[i].Ftelephone;
  end;
end;

procedure TForm1.btn_ajoutClick(Sender: TObject);
var
  ligne : TListItem;
begin
  Self.Feleves.Add(TEleve.Create);

  ligne := Self.fenetre_liste.Items.Add;

  ligne.Caption := Feleves.Last.Fnom;
  ligne.SubItems.Add(Feleves.Last.Fprenom);
end;

procedure TForm1.btn_retraitClick(Sender: TObject);
var
  i : integer;
begin
  if Self.fenetre_liste.Selected <> nil then
  begin
    i := Self.fenetre_liste.Selected.Index;
    Self.Feleves.Delete(i);
    Self.fenetre_liste.Items[i].Delete;
  end
  else
  ShowMessage('Choississez l eleve a supprimer');
end;

procedure TForm1.btn_editClick(Sender: TObject);
var
  i : integer;
begin
  if Self.fenetre_liste.Selected <> nil then
  begin
    i := Self.fenetre_liste.Selected.Index;
    Self.Feleves.Items[i].Fnom := Form1.edit_nom.Text;
    Self.Feleves.Items[i].Fprenom := Form1.edit_prenom.Text;
    Self.Feleves.Items[i].Fmoyenne := Form1.edit_moyenne.Text;
    Self.Feleves.Items[i].Ftelephone := Form1.edit_telephone.Text;

    Self.fenetre_liste.Items[i].Caption := Self.Feleves.Items[i].Fnom;
    Self.fenetre_liste.Items[i].SubItems[0] := Self.Feleves.Items[i].Fprenom;
  end
  else
  ShowMessage('Choississez l eleve a editer');
end;

procedure WriteStringFile(fs : TFileStream; contenu : string);
var
  _tailleChaine : Integer;
  _machaine : string;
begin
  _tailleChaine := Length(contenu);
  fs.Write(_tailleChaine, SizeOf(Integer));

  _machaine := contenu;
  fs.Write(_machaine[1], _machaine.Length * SizeOf(char));
end;

procedure TForm1.btn_sauvegardeClick(Sender: TObject);
var
  _fileStream : TFileStream;
  _tailleChaine : Integer;
  _machaine : string;
  i : integer;
begin
  _fileStream := TFileStream.Create('C:\Users\Clement\Documents\Privé'
    +'\Apprendre\as_informatique\programmation_windows\Embarcadero'
    +'\Studio\Projets\ProjetProf\test.txt', fmCreate);
  for i := 0 to Form1.Feleves.Count - 1 do
  begin
    WriteStringFile(_fileStream, Form1.Feleves[i].Fnom);
    WriteStringFile(_fileStream, Form1.Feleves[i].Fprenom);
    WriteStringFile(_fileStream, Form1.Feleves[i].Fmoyenne);
    WriteStringFile(_fileStream, Form1.Feleves[i].Ftelephone);
  end;
  _fileStream.Free;
end;

end.