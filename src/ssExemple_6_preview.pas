unit ssExemple_6_preview;
// Economiseurs d'�crans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Pr�martin 05/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ssExemple_6_action, ExtCtrls;

type
  Tfrm_ScreenSaverPreview = class(Tfrm_Base)
    procedure FormCreate(Sender: TObject);
  private
    { D�clarations priv�es}
  public
    { D�clarations publiques}
  end;

var
  frm_ScreenSaverPreview: Tfrm_ScreenSaverPreview;

implementation

{$R *.DFM}

procedure Tfrm_ScreenSaverPreview.FormCreate(Sender: TObject);
begin
  inherited;
//  Windows.SetParent (Handle, StrToInt (ParamStr (2)));
  ParentWindow := StrToInt (Paramstr (2));
end;

end.
