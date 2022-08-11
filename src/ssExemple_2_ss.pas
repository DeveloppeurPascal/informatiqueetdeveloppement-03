unit ssExemple_2_ss;
// Economiseurs d'�crans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Pr�martin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { D�clarations priv�es}
  public
    { D�clarations publiques}
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;

  if (ParamCount = 2) // place l'�conomiseur dans la fen�tre de preview si c'est le cas
  then
    Windows.SetParent (Handle, StrToInt (ParamStr (2)));
  {endif}

  randomize;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Canvas.MoveTo (Random (ClientWidth), Random (ClientHeight));
  Canvas.LineTo (Random (ClientWidth), Random (ClientHeight));
end;

end.
