unit ssExemple_4_ss;
// Economiseurs d'écrans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Prémartin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TForm3 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Déclarations privées}
  public
    { Déclarations publiques}
  end;

var
  Form3: TForm3;

implementation

uses ssExemple_4_u;

{$R *.DFM}

procedure TForm3.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
  FormStyle := fsStayOntop;
  WindowState := wsMaximized;
end;

procedure TForm3.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Verif_Mot_de_Passe (Handle))
  then
    Close;
  {endif}
end;

end.
